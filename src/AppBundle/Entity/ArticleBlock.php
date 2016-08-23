<?php
// src/AppBundle/Entity/ArticleBlock.php
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
    AppBundle\Entity\Utility\Interfaces\ArticleBlockConstantsInterface,
    AppBundle\Entity\Utility\Traits\FileObjects\ArticleBlockFileObjectsTrait;

/**
 * @ORM\Table(name="articles_blocks")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\ArticleBlockRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\ArticleBlockTranslation")
 *
 * @Vich\Uploadable
 */
class ArticleBlock implements Translatable, ArticleBlockConstantsInterface
{
    use IdMapper, TranslationMapper, ArticleBlockFileObjectsTrait;

    /**
     * @ORM\OneToMany(targetEntity="ArticleBlockTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\ManyToOne(targetEntity="Article", inversedBy="articleBlocks")
     * @ORM\JoinColumn(name="article_id", referencedColumnName="id", onDelete="cascade")
     */
    protected $article;

    /**
     * @ORM\Column(type="text")
     *
     * @Gedmo\Translatable
     */
    protected $text;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    protected $rawText;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $textFormatter;

    /**
     * @ORM\Column(type="string", length=500, nullable=true)
     *
     * @Gedmo\Translatable
     */
    protected $quote;

    /**
     * @ORM\Column(type="string", length=500, nullable=true)
     */
    protected $youTubeLink;

    /**
     * @ORM\Column(type="string", length=250, nullable=true)
     */
    protected $youTubeId;

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
        return ( $this->id ) ?: "Блок";
    }

    /**
     * Set text
     *
     * @param string $text
     * @return ArticleBlock
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

    public function getTextShort($length)
    {
        $stripped = strip_tags($this->text);
        $stripped = preg_replace('/&#?[a-z0-9]+;/i', ' ', $stripped);

        return explode('#', wordwrap($stripped, $length, '#'))[0] . '...';
    }

    /**
     * Set rawText
     *
     * @param string $rawText
     * @return ArticleBlock
     */
    public function setRawText($rawText)
    {
        $this->rawText = $rawText;

        return $this;
    }

    /**
     * Get rawText
     *
     * @return string
     */
    public function getRawText()
    {
        return $this->rawText;
    }

    /**
     * Set textFormatter
     *
     * @param string $textFormatter
     * @return ArticleBlock
     */
    public function setTextFormatter($textFormatter)
    {
        $this->textFormatter = $textFormatter;

        return $this;
    }

    /**
     * Get textFormatter
     *
     * @return string
     */
    public function getTextFormatter()
    {
        return $this->textFormatter;
    }

    /**
     * Set quote
     *
     * @param string $quote
     * @return ArticleBlock
     */
    public function setQuote($quote)
    {
        $this->quote = $quote;

        return $this;
    }

    /**
     * Get quote
     *
     * @return string
     */
    public function getQuote()
    {
        return $this->quote;
    }

    /**
     * Set youTubeLink
     *
     * @param string $youTubeLink
     * @return ArticleBlock
     */
    public function setYouTubeLink($youTubeLink)
    {
        $this->youTubeLink = $youTubeLink;

        $this->setYouTubeId($this->youTubeLink);

        return $this;
    }

    /**
     * Get youTubeLink
     *
     * @return string
     */
    public function getYouTubeLink()
    {
        return $this->youTubeLink;
    }

    /**
     * Set article
     *
     * @param \AppBundle\Entity\Article $article
     * @return ArticleBlock
     */
    public function setArticle(\AppBundle\Entity\Article $article = null)
    {
        $this->article = $article;

        return $this;
    }

    /**
     * Get article
     *
     * @return \AppBundle\Entity\Article
     */
    public function getArticle()
    {
        return $this->article;
    }

    /** Custom methods */

    public function setYouTubeId($youTubeLink)
    {
        $regex = '%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i';

        $this->youTubeId = ( preg_match($regex, $youTubeLink, $match) )
            ? $match[1]
            : NULL;

        return $this;
    }

    public function getYouTubeId()
    {
        return $this->youTubeId;
    }

    /** END Custom methods */
}
