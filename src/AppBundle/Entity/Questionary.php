<?php
// src/AppBundle/Entity/Questionary.php
namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper;

/**
 * @ORM\Table(name="questionnaires")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\QuestionaryRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\QuestionaryTranslation")
 */
class Questionary implements Translatable
{
    use IdMapper, TranslationMapper;

    /**
     * @ORM\OneToMany(targetEntity="QuestionaryTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\ManyToOne(targetEntity="Musician", inversedBy="questionnaires")
     * @ORM\JoinColumn(name="musician_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $musician;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $question;

    /**
     * @ORM\Column(type="text", length=1000)
     *
     * @Gedmo\Translatable
     */
    protected $answer;

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
        return ( $this->question ) ?: "Анкета";
    }

    /**
     * Set question
     *
     * @param string $question
     * @return Questionary
     */
    public function setQuestion($question)
    {
        $this->question = $question;

        return $this;
    }

    /**
     * Get question
     *
     * @return string
     */
    public function getQuestion()
    {
        return $this->question;
    }

    /**
     * Set answer
     *
     * @param string $answer
     * @return Questionary
     */
    public function setAnswer($answer)
    {
        $this->answer = $answer;

        return $this;
    }

    /**
     * Get answer
     *
     * @return string
     */
    public function getAnswer()
    {
        return $this->answer;
    }

    /**
     * Set musician
     *
     * @param \AppBundle\Entity\Musician $musician
     * @return Questionary
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
