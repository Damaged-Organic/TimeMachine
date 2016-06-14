<?php
// src/AppBundle/Entity/Utility/Traits/FileObjects/BiographyFileObjectsTrait.php
namespace AppBundle\Entity\Utility\Traits\FileObjects;

use DateTime;

use Symfony\Component\HttpFoundation\File\File;

trait BiographyFileObjectsTrait
{
    /**
     * @Assert\File(
     *     maxSize="10M",
     *     mimeTypes={"image/png", "image/jpeg", "image/pjpeg", "image/gif"}
     * )
     *
     * @Vich\UploadableField(mapping="biography_photo", fileNameProperty="photoName")
     */
    protected $photoFile;

    /**
     * @ORM\Column(type="string", length=255)
     */
    protected $photoName;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    protected $updatedAt;

    /* Vich uploadable methods */

    public function setPhotoFile($photoFile = NULL)
    {
        $this->photoFile = $photoFile;

        if( $photoFile instanceof File )
            $this->updatedAt = new DateTime;
    }

    public function getPhotoFile()
    {
        return $this->photoFile;
    }

    public function setPhotoName($photoName)
    {
        $this->photoName = $photoName;

        return $this;
    }

    public function getPhotoName()
    {
        return $this->photoName;
    }

    public function getPhotoPath()
    {
        return ( $this->photoName )
            ? self::WEB_PATH_PHOTO . $this->photoName
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
