<?php
// src/AppBundle/Entity/PhotoAlbum.php
namespace AppBundle\Entity;

use DateTime;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper,
    AppBundle\Entity\Utility\Traits\TagTrait;

/**
 * @ORM\Table(name="photo_albums")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\PhotoAlbumRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\PhotoAlbumTranslation")
 */
class PhotoAlbum implements Translatable
{
    use IdMapper, TranslationMapper, TagTrait;

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
     * @ORM\Column(type="integer")
     */
    protected $yearTaken;

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

        $this->dateOfCreation = new DateTime();
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
     * Set yearTaken
     *
     * @param integer $yearTaken
     * @return PhotoAlbum
     */
    public function setYearTaken($yearTaken)
    {
        $this->yearTaken = $yearTaken;

        return $this;
    }

    /**
     * Get yearTaken
     *
     * @return integer
     */
    public function getYearTaken()
    {
        return $this->yearTaken;
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
}
