<?php
// src/AppBundle/Entity/Concert.php
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
    AppBundle\Entity\Utility\Interfaces\ConcertConstantsInterface,
    AppBundle\Entity\Utility\Traits\FileObjects\ConcertFileObjectsTrait;

/**
 * @ORM\Table(name="concerts")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\ConcertRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\ConcertTranslation")
 *
 * @Vich\Uploadable
 */
class Concert implements Translatable, ConcertConstantsInterface
{
    use IdMapper, TranslationMapper, SlugMapper, ConcertFileObjectsTrait;

    /**
     * @ORM\OneToMany(targetEntity="ConcertTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\Column(type="string", length=100)
     *
     * @Gedmo\Translatable
     */
    protected $country;

    /**
     * @ORM\Column(type="string", length=100)
     *
     * @Gedmo\Translatable
     */
    protected $city;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $place;

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
     * @ORM\Column(type="datetime")
     */
    protected $doorsOpenAt;

    /**
     * @ORM\Column(type="string", length=1000, nullable=true)
     */
    protected $ticketsLink;

    /**
     * @ORM\Column(type="boolean")
     */
    protected $isActive = TRUE;

    /**
     * @ORM\Column(type="boolean")
     */
    protected $isSubscriptionSent = FALSE;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->translations = new ArrayCollection;

        $this->doorsOpenAt = new DateTime;
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->title ) ?: "Событие";
    }

    /**
     * Set country
     *
     * @param string $country
     * @return Concert
     */
    public function setCountry($country)
    {
        $this->country = $country;

        return $this;
    }

    /**
     * Get country
     *
     * @return string
     */
    public function getCountry()
    {
        return $this->country;
    }

    /**
     * Set city
     *
     * @param string $city
     * @return Concert
     */
    public function setCity($city)
    {
        $this->city = $city;

        return $this;
    }

    /**
     * Get city
     *
     * @return string
     */
    public function getCity()
    {
        return $this->city;
    }

    /**
     * Set place
     *
     * @param string $place
     * @return Concert
     */
    public function setPlace($place)
    {
        $this->place = $place;

        return $this;
    }

    /**
     * Get place
     *
     * @return string
     */
    public function getPlace()
    {
        return $this->place;
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Concert
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
     * @return Concert
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
     * Set doorsOpenAt
     *
     * @param \DateTime $doorsOpenAt
     * @return Concert
     */
    public function setDoorsOpenAt($doorsOpenAt)
    {
        $this->doorsOpenAt = $doorsOpenAt;

        return $this;
    }

    /**
     * Get doorsOpenAt
     *
     * @return \DateTime
     */
    public function getDoorsOpenAt()
    {
        return $this->doorsOpenAt;
    }

    /**
     * Set ticketsLink
     *
     * @param string $ticketsLink
     * @return Concert
     */
    public function setTicketsLink($ticketsLink)
    {
        $this->ticketsLink = $ticketsLink;

        return $this;
    }

    /**
     * Get ticketsLink
     *
     * @return string
     */
    public function getTicketsLink()
    {
        return $this->ticketsLink;
    }

    /**
     * Set isActive
     *
     * @param boolean $isActive
     * @return Concert
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
     * Set isSubscriptionSent
     *
     * @param boolean $isSubscriptionSent
     * @return Concert
     */
    public function setIsSubscriptionSent($isSubscriptionSent)
    {
        $this->isSubscriptionSent = $isSubscriptionSent;

        return $this;
    }

    /**
     * Get isSubscriptionSent
     *
     * @return boolean
     */
    public function getIsSubscriptionSent()
    {
        return $this->isSubscriptionSent;
    }

    /** Custom methods */

    public function areTicketsAvailable()
    {
        return ( $this->ticketsLink ) ? TRUE : FALSE;
    }

    public function getSubscriptionMessage()
    {
        return 'subscription.message.concert';
    }

    /** END Custom methods */
}
