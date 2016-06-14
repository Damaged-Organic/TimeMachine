<?php
// src/AppBundle/Entity/Biography.php
namespace AppBundle\Entity;

use Symfony\Component\HttpFoundation\File\File,
    Symfony\Component\Validator\Constraints as Assert;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use Vich\UploaderBundle\Mapping\Annotation as Vich;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper,
    AppBundle\Entity\Utility\Interfaces\BiographyConstantsInterface,
    AppBundle\Entity\Utility\Traits\FileObjects\BiographyFileObjectsTrait;

/**
 * @ORM\Table(name="biographies")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\BiographyRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\BiographyTranslation")
 *
 * @Vich\Uploadable
 */
class Biography implements Translatable, BiographyConstantsInterface
{
    use IdMapper, TranslationMapper, BiographyFileObjectsTrait;

    /**
     * @ORM\OneToMany(targetEntity="BiographyTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\ManyToOne(targetEntity="Musician", inversedBy="biographies")
     * @ORM\JoinColumn(name="musician_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $musician;

    /**
     * @ORM\Column(type="integer", length=4, nullable=true)
     */
    protected $year;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     *
     * @Gedmo\Translatable
     */
    protected $event;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="text", length=1000)
     *
     * @Gedmo\Translatable
     */
    protected $text;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->translations = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->title ) ?: "Биография";
    }

    /**
     * Set year
     *
     * @param integer $year
     * @return Biography
     */
    public function setYear($year)
    {
        $this->year = $year;

        return $this;
    }

    /**
     * Get year
     *
     * @return integer
     */
    public function getYear()
    {
        return $this->year;
    }

    /**
     * Set event
     *
     * @param string $event
     * @return Biography
     */
    public function setEvent($event)
    {
        $this->event = $event;

        return $this;
    }

    /**
     * Get event
     *
     * @return string
     */
    public function getEvent()
    {
        return $this->event;
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Biography
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
     * Set text
     *
     * @param string $text
     * @return Biography
     */
    public function setText($text)
    {
        $this->text = $text;

        return $this;
    }

    /**
     * Get text
     *
     * @return string
     */
    public function getText()
    {
        return $this->text;
    }

    /**
     * Set musician
     *
     * @param \AppBundle\Entity\Musician $musician
     * @return Biography
     */
    public function setMusician(\AppBundle\Entity\Musician $musician = null)
    {
        $this->musician = $musician;

        return $this;
    }

    /**
     * Get musician
     *
     * @return \AppBundle\Entity\Musician
     */
    public function getMusician()
    {
        return $this->musician;
    }
}
