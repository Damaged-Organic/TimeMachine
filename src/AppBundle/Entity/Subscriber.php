<?php
// src/AppBundle/Entity/Subscriber.php
namespace AppBundle\Entity;

use DateTime;

use Symfony\Component\Validator\Constraints as Assert;

use Doctrine\ORM\Mapping as ORM;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper;

/**
 * @ORM\Table(name="subscribers")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\SubscriberRepository")
 */
class Subscriber
{
    use IdMapper;

    /**
     * @ORM\Column(type="string", length=254)
     * @Assert\NotBlank(
     *      message = "subscriber.email.not_blank"
     * )
     * @Assert\Email(
     *      message = "subscriber.email.valid",
     *      checkMX = true
     * )
     */
    protected $email;

    /**
     * @ORM\Column(type="datetime")
     */
    protected $subscribedAt;

    /**
     * @ORM\Column(type="string", length=40, nullable=true)
     */
    protected $inCheckoutHash;

    /**
     * @ORM\Column(type="string", length=40, nullable=true)
     */
    protected $outCheckoutHash;

    /**
     * @ORM\Column(type="boolean")
     */
    protected $isActive = FALSE;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->subscribedAt = new DateTime;
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->email ) ?: "Подписчик";
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Subscriber
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set subscribedAt
     *
     * @param \DateTime $subscribedAt
     * @return Subscriber
     */
    public function setSubscribedAt($subscribedAt)
    {
        $this->subscribedAt = $subscribedAt;

        return $this;
    }

    /**
     * Get subscribedAt
     *
     * @return \DateTime
     */
    public function getSubscribedAt()
    {
        return $this->subscribedAt;
    }

    /**
     * Set inCheckoutHash
     *
     * @param string $inCheckoutHash
     * @return Subscriber
     */
    public function setInCheckoutHash($inCheckoutHash)
    {
        $this->inCheckoutHash = $inCheckoutHash;

        return $this;
    }

    /**
     * Get inCheckoutHash
     *
     * @return string
     */
    public function getInCheckoutHash()
    {
        return $this->inCheckoutHash;
    }

    /**
     * Set outCheckoutHash
     *
     * @param string $outCheckoutHash
     * @return Subscriber
     */
    public function setOutCheckoutHash($outCheckoutHash)
    {
        $this->outCheckoutHash = $outCheckoutHash;

        return $this;
    }

    /**
     * Get outCheckoutHash
     *
     * @return string
     */
    public function getOutCheckoutHash()
    {
        return $this->outCheckoutHash;
    }

    /**
     * Set isActive
     *
     * @param boolean $isActive
     * @return Subscriber
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
}
