<?php
// src/AppBundle/Entity/Musician.php
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
    AppBundle\Entity\Utility\Interfaces\MusicianConstantsInterface,
    AppBundle\Entity\Utility\Traits\FileObjects\MusicianFileObjectsTrait;

/**
 * @ORM\Table(name="musicians")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\MusicianRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\MusicianTranslation")
 *
 * @Vich\Uploadable
 */
class Musician implements Translatable, MusicianConstantsInterface
{
    use IdMapper, TranslationMapper, SlugMapper, MusicianFileObjectsTrait;

    const LIFT_ITEMS = 4;

    /**
     * @ORM\OneToMany(targetEntity="MusicianTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    // /**
    //  * @ORM\OneToOne(targetEntity="Tag", inversedBy="musician")
    //  * @ORM\JoinColumn(name="tag_id", referencedColumnName="id")
    //  */
    // protected $tag;

    /**
     * @ORM\OneToMany(targetEntity="Biography", mappedBy="musician", cascade={"persist", "remove"}, orphanRemoval=true)
     * @Assert\Valid()
     */
    protected $biographies;

    /**
     * @ORM\OneToMany(targetEntity="Questionary", mappedBy="musician", cascade={"persist", "remove"}, orphanRemoval=true)
     */
    protected $questionnaires;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $sid;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="string", length=200)
     *
     * @Gedmo\Translatable
     */
    protected $skill;

    /**
     * @ORM\Column(type="text", length=1000)
     *
     * @Gedmo\Translatable
     */
    protected $story;

    /**
     * @ORM\Column(type="date")
     */
    protected $dateOfBirth;

    /**
     * @ORM\Column(type="integer", length=4)
     */
    protected $yearOfEntry;

    /**
     * @ORM\Column(type="integer", length=4, nullable=true)
     */
    protected $yearOfExit;

    /**
     * @ORM\Column(type="integer", length=4, nullable=true)
     */
    protected $yearsInactive;

    /**
     * @ORM\Column(type="boolean")
     */
    protected $isMainCast = FALSE;

    /**
     * @ORM\Column(type="string", length=200, nullable=true)
     */
    protected $photoMain;

    /**
     * @ORM\Column(type="string", length=200, nullable=true)
     */
    protected $photoPart;

    /**
     * @ORM\Column(type="string", length=200, nullable=true)
     */
    protected $photoMenu;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->translations   = new ArrayCollection;
        $this->biographies    = new ArrayCollection;
        $this->questionnaires = new ArrayCollection;
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->title ) ?: "Музыкант";
    }

    /**
     * Set sid
     *
     * @param string $sid
     * @return Musician
     */
    public function setSid($sid = NULL)
    {
        $this->sid = $sid;

        return $this;
    }

    /**
     * Get sid
     *
     * @return string
     */
    public function getSid()
    {
        return $this->sid;
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Musician
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
     * Set skill
     *
     * @param string $skill
     * @return Musician
     */
    public function setSkill($skill)
    {
        $this->skill = $skill;

        return $this;
    }

    /**
     * Get skill
     *
     * @return string
     */
    public function getSkill()
    {
        return $this->skill;
    }

    /**
     * Set story
     *
     * @param string $story
     * @return Musician
     */
    public function setStory($story)
    {
        $this->story = $story;

        return $this;
    }

    /**
     * Get story
     *
     * @return string
     */
    public function getStory()
    {
        return $this->story;
    }

    /**
     * Set dateOfBirth
     *
     * @param \DateTime $dateOfBirth
     * @return Musician
     */
    public function setDateOfBirth($dateOfBirth)
    {
        $this->dateOfBirth = $dateOfBirth;

        return $this;
    }

    /**
     * Get dateOfBirth
     *
     * @return \DateTime
     */
    public function getDateOfBirth()
    {
        return $this->dateOfBirth;
    }

    /**
     * Set yearOfEntry
     *
     * @param integer $yearOfEntry
     * @return Musician
     */
    public function setYearOfEntry($yearOfEntry)
    {
        $this->yearOfEntry = $yearOfEntry;

        return $this;
    }

    /**
     * Get yearOfEntry
     *
     * @return integer
     */
    public function getYearOfEntry()
    {
        return $this->yearOfEntry;
    }

    /**
     * Set yearOfExit
     *
     * @param integer $yearOfExit
     * @return Musician
     */
    public function setYearOfExit($yearOfExit)
    {
        $this->yearOfExit = $yearOfExit;

        return $this;
    }

    /**
     * Get yearOfExit
     *
     * @return integer
     */
    public function getYearOfExit()
    {
        return $this->yearOfExit;
    }

    /**
     * Set yearsInactive
     *
     * @param integer $yearsInactive
     * @return Musician
     */
    public function setYearsInactive($yearsInactive)
    {
        $this->yearsInactive = $yearsInactive;

        return $this;
    }

    /**
     * Get yearsInactive
     *
     * @return integer
     */
    public function getYearsInactive()
    {
        return $this->yearsInactive;
    }

    /**
     * Set isMainCast
     *
     * @param boolean $isMainCast
     * @return Musician
     */
    public function setIsMainCast($isMainCast)
    {
        $this->isMainCast = $isMainCast;

        return $this;
    }

    /**
     * Get isMainCast
     *
     * @return boolean
     */
    public function getIsMainCast()
    {
        return $this->isMainCast;
    }

    /**
     * Set photoMain
     *
     * @param string $photoMain
     * @return Musician
     */
    public function setPhotoMain($photoMain)
    {
        $this->photoMain = $photoMain;

        return $this;
    }

    /**
     * Get photoMain
     *
     * @return string
     */
    public function getPhotoMain()
    {
        return $this->photoMain;
    }

    /**
     * Set photoPart
     *
     * @param string $photoPart
     * @return Musician
     */
    public function setPhotoPart($photoPart)
    {
        $this->photoPart = $photoPart;

        return $this;
    }

    /**
     * Get photoPart
     *
     * @return string
     */
    public function getPhotoPart()
    {
        return $this->photoPart;
    }

    /**
     * Set photoMenu
     *
     * @param string $photoMenu
     * @return Musician
     */
    public function setPhotoMenu($photoMenu)
    {
        $this->photoMenu = $photoMenu;

        return $this;
    }

    /**
     * Get photoMenu
     *
     * @return string
     */
    public function getPhotoMenu()
    {
        return $this->photoMenu;
    }

    // /**
    //  * Set tag
    //  *
    //  * @param \AppBundle\Entity\Tag $tag
    //  * @return Musician
    //  */
    // public function setTag(\AppBundle\Entity\Tag $tag = null)
    // {
    //     $this->tag = $tag;
    //
    //     return $this;
    // }
    //
    // /**
    //  * Get tag
    //  *
    //  * @return \AppBundle\Entity\Tag
    //  */
    // public function getTag()
    // {
    //     return $this->tag;
    // }

    /**
     * Add biography
     *
     * @param \AppBundle\Entity\Biography $biography
     * @return Musician
     */
    public function addBiography(\AppBundle\Entity\Biography $biography)
    {
        $biography->setMusician($this);
        $this->biographies[] = $biography;

        return $this;
    }

    /**
     * Remove biographies
     *
     * @param \AppBundle\Entity\Biography $biographies
     */
    public function removeBiography(\AppBundle\Entity\Biography $biographies)
    {
        $this->biographies->removeElement($biographies);
    }

    /**
     * Get biographies
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getBiographies()
    {
        return $this->biographies;
    }

    /**
     * Add questionary
     *
     * @param \AppBundle\Entity\Questionary $questionary
     * @return Musician
     */
    public function addQuestionnaire(\AppBundle\Entity\Questionary $questionary)
    {
        $questionary->setMusician($this);
        $this->questionnaires[] = $questionary;

        return $this;
    }

    /**
     * Remove questionnaires
     *
     * @param \AppBundle\Entity\Questionary $questionnaires
     */
    public function removeQuestionnaire(\AppBundle\Entity\Questionary $questionnaires)
    {
        $this->questionnaires->removeElement($questionnaires);
    }

    /**
     * Get questionnaires
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getQuestionnaires()
    {
        return $this->questionnaires;
    }

    /** Custom methods */

    public function isActive()
    {
        return ( $this->yearOfExit ) ? FALSE : TRUE;
    }

    public function getYearsActive()
    {
        $yearRelevant = ( $this->yearOfExit ) ?: (new DateTime())->format('Y');

        $activeYears = $yearRelevant - $this->yearOfEntry;

        if( $this->yearsInactive )
            $activeYears -= $this->yearsInactive;

        return $activeYears;
    }

    /** END Custom methods */
}
