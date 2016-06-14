<?php
// src/AppBundle/Entity/Tag.php
namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper;

/**
 * @ORM\Table(name="tags")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\TagRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\TagTranslation")
 */
class Tag implements Translatable
{
    use IdMapper, TranslationMapper;

    const DEFAULT_TAG = 'mashina_vremeni';

    /**
     * @ORM\OneToMany(targetEntity="TagTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\OneToOne(targetEntity="Musician", mappedBy="tag")
     */
    protected $musician;

    /**
     * @ORM\OneToMany(targetEntity="PhotoAlbum", mappedBy="tag", cascade={"persist", "remove"})
     */
    protected $photoAlbums;

    /**
     * @ORM\OneToMany(targetEntity="Photo", mappedBy="tag", cascade={"persist", "remove"})
     */
    protected $photos;

    /**
     * @ORM\Column(type="string", length=200)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $name;

    /**
     * @ORM\Column(type="integer")
     */
    protected $priority;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->translations = new ArrayCollection;
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->name ) ? "#{$this->name}" : "Тэг";
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Tag
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
     * Set name
     *
     * @param string $name
     * @return Tag
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set priority
     *
     * @param integer $priority
     * @return Tag
     */
    public function setPriority($priority)
    {
        $this->priority = $priority;

        return $this;
    }

    /**
     * Get priority
     *
     * @return integer
     */
    public function getPriority()
    {
        return $this->priority;
    }

    /**
     * Set musician
     *
     * @param \AppBundle\Entity\Musician $musician
     * @return Tag
     */
    public function setMusician(\AppBundle\Entity\Musician $musician = null)
    {
        $this->musician = $musician;

        return $this;
    }

    /**
     * Get musician
     *
     * @return \AppBundle\Entity\Musician
     */
    public function getMusician()
    {
        return $this->musician;
    }

    /**
     * Add photoAlbum
     *
     * @param \AppBundle\Entity\PhotoAlbum $photoAlbum
     * @return Tag
     */
    public function addPhotoAlbum(\AppBundle\Entity\PhotoAlbum $photoAlbum)
    {
        $photoAlbum->setTag($this);
        $this->photoAlbums[] = $photoAlbum;

        return $this;
    }

    /**
     * Remove photoAlbums
     *
     * @param \AppBundle\Entity\PhotoAlbum $photoAlbums
     */
    public function removePhotoAlbum(\AppBundle\Entity\PhotoAlbum $photoAlbums)
    {
        $this->photoAlbums->removeElement($photoAlbums);
    }

    /**
     * Get photoAlbums
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getPhotoAlbums()
    {
        return $this->photoAlbums;
    }

    /**
     * Add photo
     *
     * @param \AppBundle\Entity\Photo $photo
     * @return Tag
     */
    public function addPhoto(\AppBundle\Entity\Photo $photo)
    {
        $photo->setTag($this);
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

    static public function getDefaultTag()
    {
        return "#" . self::DEFAULT_TAG;
    }

    public function getFormattedTag()
    {
        return "#{$this->title}";
    }

    /** END Custom methods */
}
