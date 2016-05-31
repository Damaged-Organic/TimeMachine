<?php
// src/AppBundle/Entity/Utility/Traits/FileObjects/ArticleBlockFileObjectsTrait.php
namespace AppBundle\Entity\Utility\Traits\FileObjects;

use DateTime;

use Symfony\Component\HttpFoundation\File\File;

trait ArticleBlockFileObjectsTrait
{
    /**
     * @Assert\File(
     *     maxSize="2M",
     *     mimeTypes={"image/png", "image/jpeg", "image/pjpeg", "image/gif"}
     * )
     *
     * @Vich\UploadableField(mapping="article_block_image", fileNameProperty="imageName")
     */
    protected $imageFile;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $imageName;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    protected $updatedAt;

    /* Vich uploadable methods */

    public function setImageFile($imageFile = NULL)
    {
        $this->imageFile = $imageFile;

        if( $imageFile instanceof File )
            $this->updatedAt = new DateTime;
    }

    public function getImageFile()
    {
        return $this->imageFile;
    }

    public function setImageName($imageName)
    {
        $this->imageName = $imageName;

        return $this;
    }

    public function getImageName()
    {
        return $this->imageName;
    }

    public function getImagePath()
    {
        return ( $this->imageName )
            ? self::WEB_PATH_IMAGE . $this->imageName
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
