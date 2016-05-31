<?php
// src/AppBundle/Entity/Photo.php
namespace AppBundle\Entity;

use DateTime;

use Symfony\Component\HttpFoundation\File\File,
    Symfony\Component\Validator\Constraints as Assert;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use Vich\UploaderBundle\Mapping\Annotation as Vich;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\SortableMapper,
    AppBundle\Entity\Utility\Traits\TagTrait,
    AppBundle\Entity\Utility\Interfaces\PhotoConstantsInterface,
    AppBundle\Entity\Utility\Traits\FileObjects\PhotoFileObjectsTrait;

/**
 * @ORM\Table(name="photos")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\PhotoRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\PhotoTranslation")
 *
 * @Vich\Uploadable
 */
class Photo implements Translatable, PhotoConstantsInterface
{
    use IdMapper, TranslationMapper, SortableMapper, TagTrait, PhotoFileObjectsTrait;

    /**
     * @ORM\OneToMany(targetEntity="PhotoTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\ManyToOne(targetEntity="Tag", inversedBy="photos")
     * @ORM\JoinColumn(name="tag_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $tag;

    /**
     * @Gedmo\SortableGroup
     * @ORM\ManyToOne(targetEntity="PhotoAlbum", inversedBy="photos")
     * @ORM\JoinColumn(name="photo_album_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $photoAlbum;

    /**
     * @ORM\Column(type="string", length=250, nullable=true)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="integer")
     */
    protected $yearTaken;

    /**
     * @ORM\Column(type="boolean")
     */
    protected $isCover = FALSE;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->translations = new ArrayCollection;

        $this->dateOfCreation = new DateTime();
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->title ) ?: "Фотография";
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Photo
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
     * Set yearTaken
     *
     * @param integer $yearTaken
     * @return Photo
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
     * Set isCover
     *
     * @param boolean $isCover
     * @return Photo
     */
    public function setIsCover($isCover)
    {
        $this->isCover = $isCover;

        return $this;
    }

    /**
     * Get isCover
     *
     * @return boolean
     */
    public function getIsCover()
    {
        return $this->isCover;
    }

    /**
     * Set tag
     *
     * @param \AppBundle\Entity\Tag $tag
     * @return Photo
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
     * Set photoAlbum
     *
     * @param \AppBundle\Entity\PhotoAlbum $photoAlbum
     * @return Photo
     */
    public function setPhotoAlbum(\AppBundle\Entity\PhotoAlbum $photoAlbum = null)
    {
        $this->photoAlbum = $photoAlbum;

        return $this;
    }

    /**
     * Get photoAlbum
     *
     * @return \AppBundle\Entity\PhotoAlbum
     */
    public function getPhotoAlbum()
    {
        return $this->photoAlbum;
    }
}
