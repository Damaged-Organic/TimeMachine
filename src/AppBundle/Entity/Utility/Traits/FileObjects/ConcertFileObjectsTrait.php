<?php
// src/AppBundle/Entity/Utility/Traits/FileObjects/ConcertFileObjectsTrait.php
namespace AppBundle\Entity\Utility\Traits\FileObjects;

trait ConcertFileObjectsTrait
{
    /**
     * @Assert\File(
     *     maxSize="2M",
     *     mimeTypes={"image/png", "image/jpeg", "image/pjpeg", "image/gif"}
     * )
     *
     * @Vich\UploadableField(mapping="concert_poster", fileNameProperty="posterName")
     */
    protected $posterFile;

    /**
     * @ORM\Column(type="string", length=255)
     */
    protected $posterName;

    /* Vich uploadable methods */

    public function setPosterFile($posterFile = NULL)
    {
        $this->posterFile = $posterFile;

        if( $posterFile instanceof File )
            $this->updatedAt = new DateTime;
    }

    public function getPosterFile()
    {
        return $this->posterFile;
    }

    public function setPosterName($posterName)
    {
        $this->posterName = $posterName;

        return $this;
    }

    public function getPosterName()
    {
        return $this->posterName;
    }

    public function getPosterPath()
    {
        return ( $this->posterName )
            ? self::WEB_PATH_POSTER . $this->posterName
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
