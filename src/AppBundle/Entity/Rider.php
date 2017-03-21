<?php
// src/AppBundle/Entity/Rider.php
namespace AppBundle\Entity;

use Symfony\Component\Validator\Constraints as Assert;

use Doctrine\ORM\Mapping as ORM;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper;

/**
 * @ORM\Table(name="riders")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\RiderRepository")
 */
class Rider
{
    use IdMapper;

    /**
     * @ORM\Column(type="string", length=200)
     */
    protected $name;

    /**
     * @ORM\Column(type="string", length=1000)
     */
    protected $link;

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->name ) ?: "Райдер";
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Rider
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
     * Set link
     *
     * @param string $link
     * @return Rider
     */
    public function setLink($link)
    {
        $this->link = $link;

        return $this;
    }

    /**
     * Get link
     *
     * @return string
     */
    public function getLink()
    {
        return $this->link;
    }
}
