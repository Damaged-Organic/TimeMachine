<?php
// src/AppBundle/Entity/Contact.php
namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper;

/**
 * @ORM\Table(name="contacts")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\ContactRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\ContactTranslation")
 */
class Contact implements Translatable
{
    use IdMapper, TranslationMapper;

    /**
     * @ORM\OneToMany(targetEntity="ContactTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\Column(type="string", length=100)
     *
     * @Gedmo\Translatable
     */
    protected $role;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $person;

    /**
     * @ORM\Column(type="string", length=50)
     */
    protected $phone;

    /**
     * @ORM\Column(type="string", length=254, nullable=true)
     **/
    protected $email;

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
        return ( $this->role ) ?: "Контакт";
    }

    /**
     * Set role
     *
     * @param string $role
     * @return Contact
     */
    public function setRole($role)
    {
        $this->role = $role;

        return $this;
    }

    /**
     * Get role
     *
     * @return string
     */
    public function getRole()
    {
        return $this->role;
    }

    /**
     * Set person
     *
     * @param string $person
     * @return Contact
     */
    public function setPerson($person)
    {
        $this->person = $person;

        return $this;
    }

    /**
     * Get person
     *
     * @return string
     */
    public function getPerson()
    {
        return $this->person;
    }

    /**
     * Set phone
     *
     * @param string $phone
     * @return Contact
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get phone
     *
     * @return string
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Contact
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
}
