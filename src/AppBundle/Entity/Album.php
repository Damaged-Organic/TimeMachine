<?php
// src/AppBundle/Entity/Album.php
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
    AppBundle\Entity\Utility\Traits\DoctrineMapping\SlugMapper,
    AppBundle\Entity\Utility\Interfaces\AlbumConstantsInterface,
    AppBundle\Entity\Utility\Traits\FileObjects\AlbumFileObjectsTrait;

/**
 * @ORM\Table(name="albums")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\AlbumRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\AlbumTranslation")
 *
 * @Vich\Uploadable
 */
class Album implements Translatable, AlbumConstantsInterface
{
    use IdMapper, TranslationMapper, SlugMapper, AlbumFileObjectsTrait;

    const LIFT_ITEMS = 3;

    /**
     * @ORM\OneToMany(targetEntity="AlbumTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\OneToMany(targetEntity="Song", mappedBy="album", cascade={"persist", "remove"}, orphanRemoval=true)
     * @ORM\OrderBy({"position" = "ASC"})
     */
    protected $songs;

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
     * @ORM\Column(type="integer", length=4)
     */
    protected $yearOfRelease;

    /**
     * @ORM\Column(type="string", length=1000, nullable=true)
     */
    protected $iTunesLink;

    /**
     * @ORM\Column(type="string", length=1000, nullable=true)
     */
    protected $googlePlayLink;

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
        $this->songs        = new ArrayCollection;
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->title ) ?: "Альбом";
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Album
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
     * @return Album
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
     * Set yearOfRelease
     *
     * @param integer $yearOfRelease
     * @return Album
     */
    public function setYearOfRelease($yearOfRelease)
    {
        $this->yearOfRelease = $yearOfRelease;

        return $this;
    }

    /**
     * Get yearOfRelease
     *
     * @return integer
     */
    public function getYearOfRelease()
    {
        return $this->yearOfRelease;
    }

    /**
     * Set iTunesLink
     *
     * @param string $iTunesLink
     * @return Album
     */
    public function setITunesLink($iTunesLink)
    {
        $this->iTunesLink = $iTunesLink;

        return $this;
    }

    /**
     * Get iTunesLink
     *
     * @return string
     */
    public function getITunesLink()
    {
        return $this->iTunesLink;
    }

    /**
     * Set googlePlayLink
     *
     * @param string $googlePlayLink
     * @return Album
     */
    public function setGooglePlayLink($googlePlayLink)
    {
        $this->googlePlayLink = $googlePlayLink;

        return $this;
    }

    /**
     * Get googlePlayLink
     *
     * @return string
     */
    public function getGooglePlayLink()
    {
        return $this->googlePlayLink;
    }

    /**
     * Set isActive
     *
     * @param boolean $isActive
     * @return Album
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
     * Add song
     *
     * @param \AppBundle\Entity\Song $song
     * @return Album
     */
    public function addSong(\AppBundle\Entity\Song $song)
    {
        $song->setAlbum($this);
        $this->songs[] = $song;

        return $this;
    }

    /**
     * Remove song
     *
     * @param \AppBundle\Entity\Song $song
     */
    public function removeSong(\AppBundle\Entity\Song $song)
    {
        $this->songs->removeElement($song);
    }

    /**
     * Get songs
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getSongs()
    {
        return $this->songs;
    }

    /** Custom methods */

    public function getSongsNumber()
    {
        return count($this->songs);
    }

    /** END Custom methods */
}
