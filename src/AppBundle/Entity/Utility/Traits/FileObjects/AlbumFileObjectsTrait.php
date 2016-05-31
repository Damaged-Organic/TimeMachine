<?php
// src/AppBundle/Entity/Utility/Traits/FileObjects/AlbumFileObjectsTrait.php
namespace AppBundle\Entity\Utility\Traits\FileObjects;

use DateTime;

use Symfony\Component\HttpFoundation\File\File;

trait AlbumFileObjectsTrait
{
    /**
     * @Assert\File(
     *     maxSize="3M",
     *     mimeTypes={"image/png", "image/jpeg", "image/pjpeg", "image/gif"}
     * )
     *
     * @Vich\UploadableField(mapping="album_cover", fileNameProperty="coverName")
     */
    protected $coverFile;

    /**
     * @ORM\Column(type="string", length=255)
     */
    protected $coverName;

    /**
     * @Assert\File(
     *     maxSize="10M",
     *     mimeTypes={"audio/mpeg", "audio/mp3"}
     * )
     *
     * @Vich\UploadableField(mapping="album_track", fileNameProperty="trackName")
     */
    protected $trackFile;

    /**
     * @ORM\Column(type="string", length=255)
     */
    protected $trackName;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    protected $updatedAt;

    /* Vich uploadable methods */

    public function setCoverFile($coverFile = NULL)
    {
        $this->coverFile = $coverFile;

        if( $coverFile instanceof File )
            $this->updatedAt = new DateTime;
    }

    public function getCoverFile()
    {
        return $this->coverFile;
    }

    public function setCoverName($coverName)
    {
        $this->coverName = $coverName;

        return $this;
    }

    public function getCoverName()
    {
        return $this->coverName;
    }

    public function getCoverPath()
    {
        return ( $this->coverName )
            ? self::WEB_PATH_COVER . $this->coverName
            : FALSE;
    }

    public function setTrackFile($trackFile = NULL)
    {
        $this->trackFile = $trackFile;

        if( $trackFile instanceof File )
            $this->updatedAt = new DateTime;
    }

    public function getTrackFile()
    {
        return $this->trackFile;
    }

    public function setTrackName($trackName)
    {
        $this->trackName = $trackName;

        return $this;
    }

    public function getTrackName()
    {
        return $this->trackName;
    }

    public function getTrackPath()
    {
        return ( $this->trackName )
            ? self::WEB_PATH_TRACK . $this->trackName
            : FALSE;
    }

    /* END Vich uploadable methods */

    public function setUpdatedAt($updatedAt)
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }
}
