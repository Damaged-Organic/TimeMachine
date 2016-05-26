<?php
// src/AppBundle/Entity/Tag.php
namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper;

/**
 * @ORM\Table(name="tags")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\TagRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\TagTranslation")
 */
class Tag implements Translatable
{
    use IdMapper, TranslationMapper;

    const DEFAULT_TAG = 'mashina_vremeni';

    /**
     * @ORM\OneToMany(targetEntity="TagTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\OneToOne(targetEntity="Musician", mappedBy="tag")
     */
    protected $musician;

    /**
     * @ORM\Column(type="string", length=200)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $name;

    /**
     * @ORM\Column(type="integer")
     */
    protected $priority;

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
        return ( $this->name ) ? "#{$this->name}" : "";
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Tag
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
     * Set name
     *
     * @param string $name
     * @return Tag
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
     * Set priority
     *
     * @param integer $priority
     * @return Tag
     */
    public function setPriority($priority)
    {
        $this->priority = $priority;

        return $this;
    }

    /**
     * Get priority
     *
     * @return integer
     */
    public function getPriority()
    {
        return $this->priority;
    }

    /**
     * Set musician
     *
     * @param \AppBundle\Entity\Musician $musician
     * @return Tag
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

    /** Custom methods */

    static public function getDefaultTag()
    {
        return "#" . self::DEFAULT_TAG;
    }

    /** END Custom methods */
}
