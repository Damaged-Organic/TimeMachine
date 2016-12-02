<?php
// src/AppBundle/Entity/PhotoAlbum.php
namespace AppBundle\Entity;

use DateTime, IntlDateFormatter;

use Symfony\Component\HttpFoundation\Request,
    Symfony\Component\Validator\Constraints as Assert;

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
     * @ORM\ManyToMany(targetEntity="Tag", inversedBy="photoAlbums")
     * @ORM\JoinColumn(name="tag_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $tags;

    /**
     * @ORM\OneToMany(targetEntity="Photo", mappedBy="photoAlbum", cascade={"persist", "remove"}, orphanRemoval=true)
     * @ORM\OrderBy({"position" = "ASC"})
     * @Assert\Valid()
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
     * @ORM\Column(type="boolean")
     */
    protected $isSubscriptionSent = FALSE;

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
     * Set isSubscriptionSent
     *
     * @param boolean $isSubscriptionSent
     * @return PhotoAlbum
     */
    public function setIsSubscriptionSent($isSubscriptionSent)
    {
        $this->isSubscriptionSent = $isSubscriptionSent;

        return $this;
    }

    /**
     * Get isSubscriptionSent
     *
     * @return boolean
     */
    public function getIsSubscriptionSent()
    {
        return $this->isSubscriptionSent;
    }

    /**
     * Add tag
     *
     * @param \AppBundle\Entity\Tag $tag
     * @return PhotoAlbum
     */
    public function addTag(\AppBundle\Entity\Tag $tag)
    {
        $this->tags[] = $tag;

        return $this;
    }

    /**
     * Remove tag
     *
     * @param \AppBundle\Entity\Tag $tag
     */
    public function removeTag(\AppBundle\Entity\Tag $tag)
    {
        $this->tags->removeElement($tag);
    }

    /**
     * Get tag
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getTags()
    {
        return $this->tags;
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

    public function getCoverPhoto()
    {
        foreach( $this->photos as $photo )
        {
            if( $photo->getIsCover() )
                return $photo;
        }
    }

    public function getSubscriptionMessage()
    {
        return 'subscription.message.photo_album';
    }

    public function getHumanDate($_locale)
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

        $date = $formatterDate->format($this->getDateTaken());

        return $date;
    }

    /** END Custom methods */
}
