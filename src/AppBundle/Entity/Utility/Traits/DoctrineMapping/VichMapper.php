<?php
// src/AppBundle/Entity/Utility/Traits/DoctrineMapping/VichMapper.php
namespace AppBundle\Entity\Utility\Traits\DoctrineMapping;

trait VichMapper
{
    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    protected $updatedAt;

    /*
     * Vich uploadable methods
     * Trait's functions use
     *
     * self::WEB_PATH constant, $this->vichObjectFile, $this->vichObjectName properties
     *
     * which should be defined in trait-user class
     */

    public function setVichObjectFile($vichObjectFile = NULL)
    {
        $this->vichObjectFile = $vichObjectFile;

        if( $vichObjectFile instanceof File )
            $this->updatedAt = new DateTime;
    }

    public function getVichObjectFile()
    {
        return $this->vichObjectFile;
    }

    public function setVichObjectName($vichObjectName)
    {
        $this->vichObjectName = $vichObjectName;

        return $this;
    }

    public function getVichObjectName()
    {
        return $this->vichObjectName;
    }

    public function setUpdatedAt($updatedAt)
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }

    public function getVichObjectPath()
    {
        return ( $this->vichObjectName )
            ? self::WEB_PATH.$this->vichObjectName
            : FALSE;
    }

    /* END Vich uploadable methods */
}
