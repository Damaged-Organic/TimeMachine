<?php
// src/AppBundle/Entity/PhotoAlbum.php
namespace AppBundle\Entity;

use DateTime, IntlDateFormatter;

use Symfony\Component\HttpFoundation\Request;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\SlugMapper,
    AppBundle\Entity\Utility\Traits\TagTrait;

/**
 * @ORM\Table(name="photo_albums")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\PhotoAlbumRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\PhotoAlbumTranslation")
 */
class PhotoAlbum implements Translatable
{
    use IdMapper, TranslationMapper, SlugMapper, TagTrait;

    const LIFT_ITEMS = 3;

    /**
     * @ORM\OneToMany(targetEntity="PhotoAlbumTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\ManyToOne(targetEntity="Tag", inversedBy="photoAlbums")
     * @ORM\JoinColumn(name="tag_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $tag;

    /**
     * @ORM\OneToMany(targetEntity="Photo", mappedBy="photoAlbum", cascade={"persist", "remove"}, orphanRemoval=true)
     * @ORM\OrderBy({"position" = "ASC"})
     */
    protected $photos;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="string", length=500)
     *
     * @Gedmo\Translatable
     */
    protected $description;

    /**
     * @ORM\Column(type="date")
     */
    protected $dateTaken;

    /**
     * @ORM\Column(type="boolean")
     */
    protected $isActive = TRUE;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->translations = new ArrayCollection;
        $this->photos       = new ArrayCollection;

        $this->dateTaken = new DateTime();
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->title ) ?: "Фотоальбом";
    }

    /**
     * Set title
     *
     * @param string $title
     * @return PhotoAlbum
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get title
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return PhotoAlbum
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set dateTaken
     *
     * @param \DateTime $dateTaken
     * @return PhotoAlbum
     */
    public function setDateTaken($dateTaken)
    {
        $this->dateTaken = $dateTaken;

        return $this;
    }

    /**
     * Get dateTaken
     *
     * @return \DateTime
     */
    public function getDateTaken()
    {
        return $this->dateTaken;
    }

    /**
     * Set isActive
     *
     * @param boolean $isActive
     * @return PhotoAlbum
     */
    public function setIsActive($isActive)
    {
        $this->isActive = $isActive;

        return $this;
    }

    /**
     * Get isActive
     *
     * @return boolean
     */
    public function getIsActive()
    {
        return $this->isActive;
    }

    /**
     * Set tag
     *
     * @param \AppBundle\Entity\Tag $tag
     * @return PhotoAlbum
     */
    public function setTag(\AppBundle\Entity\Tag $tag = null)
    {
        $this->tag = $tag;

        return $this;
    }

    /**
     * Get tag
     *
     * @return \AppBundle\Entity\Tag
     */
    public function getTag()
    {
        return $this->tag;
    }

    /**
     * Add photo
     *
     * @param \AppBundle\Entity\Photo $photo
     * @return PhotoAlbum
     */
    public function addPhoto(\AppBundle\Entity\Photo $photo)
    {
        $photo->setPhotoAlbum($this);
        $this->photos[] = $photo;

        return $this;
    }

    /**
     * Remove photos
     *
     * @param \AppBundle\Entity\Photo $photos
     */
    public function removePhoto(\AppBundle\Entity\Photo $photos)
    {
        $this->photos->removeElement($photos);
    }

    /**
     * Get photos
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getPhotos()
    {
        return $this->photos;
    }

    /** Custom methods */

    public function getPhotosNumber()
    {
        return count($this->photos);
    }

    /** END Custom methods */

    /** Transform entities for AJAX request */

    static private function getHumanDate($photoAlbum, $_locale)
    {
        if( $_locale == 'ru' ) {
            $formatterDate = IntlDateFormatter::create(
                $_locale, IntlDateFormatter::LONG, IntlDateFormatter::NONE, NULL, NULL, 'dd MMMM'
            );
        } else {
            $formatterDate = IntlDateFormatter::create(
                $_locale, IntlDateFormatter::LONG, IntlDateFormatter::NONE, NULL, NULL, 'MMMM dd'
            );
        }

        $date = $formatterDate->format($photoAlbum->getDateTaken());

        return $date;
    }

    static public function flattenForXhr(array $photoAlbums, $_translator, $_twig, $_router, $_liip, $_locale, $vichUploaderAsset)
    {
        foreach( $photoAlbums as $photoAlbum )
        {
            if( !($photoAlbum instanceof PhotoAlbum) )
                continue;

            $majorPhoto = $photoAlbum->getPhotos()[0];

            $photo       = $vichUploaderAsset->asset($majorPhoto, 'photoFile');

            $photo       = $_liip->filterAction(new Request, $vichUploaderAsset->asset($majorPhoto, 'photoFile'), 'photo_album_photo_thumb');
            $photo       = $photo->headers->get('location');

            $humanDate   = self::getHumanDate($photoAlbum, $_locale);
            $photoCount  = $_translator->transChoice(
                'gallery.photo.amount', $photoAlbum->getPhotosNumber(), ['%count%' => $photoAlbum->getPhotosNumber()]
            );
            $description = call_user_func_array(
                $_twig->getFilter('truncate')->getCallable(),
                [$_twig, $photoAlbum->getDescription(), 500]
            );
            $linkTitle   = $_translator->trans('gallery.photo.view');
            $link        = $_router->generate('gallery', [
                'id' => $photoAlbum->getId(), 'slug' => $photoAlbum->getSlug()
            ]);

            $output[] = [
                'photo'       => $photo,
                'year'        => $photoAlbum->getDateTaken()->format('Y'),
                'machineDate' => $photoAlbum->getDateTaken()->format('Y-m-d'),
                'humanDate'   => $humanDate,
                'photoCount'  => $photoCount,
                'title'       => $photoAlbum->getTitle(),
                'description' => $description,
                'link'        => $link,
                'linkTitle'   => $linkTitle,
            ];
        }

        return $output;
    }

    /** END Transform entities for AJAX request */
}
