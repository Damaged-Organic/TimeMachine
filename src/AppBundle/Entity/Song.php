<?php
// src/AppBundle/Entity/Song.php
namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\SortableMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper;

/**
 * @ORM\Table(name="songs")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\SongRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\SongTranslation")
 */
class Song implements Translatable
{
    use IdMapper, TranslationMapper, SortableMapper;

    /**
     * @ORM\OneToMany(targetEntity="SongTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @Gedmo\SortableGroup
     * @ORM\ManyToOne(targetEntity="Album", inversedBy="songs")
     * @ORM\JoinColumn(name="album_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $album;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="text", nullable=true)
     *
     * @Gedmo\Translatable
     */
    protected $lyrics;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    protected $durationMinutes;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    protected $durationSeconds;

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
        return ( $this->title ) ?: "Песня";
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Song
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
     * Set lyrics
     *
     * @param string $lyrics
     * @return Song
     */
    public function setLyrics($lyrics)
    {
        $this->lyrics = $lyrics;

        return $this;
    }

    /**
     * Get lyrics
     *
     * @return string
     */
    public function getLyrics()
    {
        return $this->lyrics;
    }

    /**
     * Set durationMinutes
     *
     * @param integer $durationMinutes
     * @return Song
     */
    public function setDurationMinutes($durationMinutes)
    {
        $this->durationMinutes = $durationMinutes;

        return $this;
    }

    /**
     * Get durationMinutes
     *
     * @return integer
     */
    public function getDurationMinutes()
    {
        return $this->durationMinutes;
    }

    /**
     * Set durationSeconds
     *
     * @param integer $durationSeconds
     * @return Song
     */
    public function setDurationSeconds($durationSeconds)
    {
        $this->durationSeconds = $durationSeconds;

        return $this;
    }

    /**
     * Get durationSeconds
     *
     * @return integer
     */
    public function getDurationSeconds()
    {
        return $this->durationSeconds;
    }

    /**
     * Set album
     *
     * @param \AppBundle\Entity\Album $album
     * @return Song
     */
    public function setAlbum(\AppBundle\Entity\Album $album = null)
    {
        $this->album = $album;

        return $this;
    }

    /**
     * Get album
     *
     * @return \AppBundle\Entity\Album
     */
    public function getAlbum()
    {
        return $this->album;
    }

    /** Custom methods */

    public function getFormattedSongDuration()
    {
        if( !is_null($this->durationMinutes) && !is_null($this->durationSeconds) ) {
            $durationMinutes = str_pad($this->durationMinutes, 2, '0', STR_PAD_LEFT);
            $durationSeconds = str_pad($this->durationSeconds, 2, '0', STR_PAD_LEFT);

            $duration = "{$durationMinutes}:{$durationSeconds}";
        } else {
            $duration = "-";
        }

        return $duration;
    }

    /** END Custom methods */
}
