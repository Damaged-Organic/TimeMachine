<?php
// src/AppBundle/Entity/Article.php
namespace AppBundle\Entity;

use DateTime, IntlDateFormatter;

use Symfony\Component\Validator\Constraints as Assert;

use Doctrine\ORM\Mapping as ORM,
    Doctrine\Common\Collections\ArrayCollection;

use Gedmo\Mapping\Annotation as Gedmo,
    Gedmo\Translatable\Translatable;

use AppBundle\Entity\Utility\Traits\DoctrineMapping\IdMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\TranslationMapper,
    AppBundle\Entity\Utility\Traits\DoctrineMapping\SlugMapper;

/**
 * @ORM\Table(name="articles")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Repository\ArticleRepository")
 *
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\ArticleTranslation")
 */
class Article implements Translatable
{
    use IdMapper, TranslationMapper, SlugMapper;

    const LIFT_ITEMS = 3;

    /**
     * @ORM\OneToMany(targetEntity="ArticleTranslation", mappedBy="object", cascade={"persist", "remove"})
     */
    protected $translations;

    /**
     * @ORM\OneToMany(targetEntity="ArticleBlock", mappedBy="article", cascade={"persist", "remove"}, orphanRemoval=true)
     * @Assert\Valid()
     */
    protected $articleBlocks;

    /**
     * @ORM\Column(type="string", length=250)
     *
     * @Gedmo\Translatable
     */
    protected $title;

    /**
     * @ORM\Column(type="datetime")
     */
    protected $createdAt;

    /**
     * @ORM\Column(type="integer")
     */
    protected $views = 0;

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
        $this->translations  = new ArrayCollection;
        $this->articleBlocks = new ArrayCollection;

        $this->createdAt = new DateTime;
    }

    /**
     * To string
     */
    public function __toString()
    {
        return ( $this->title ) ?: "Статья";
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Article
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
     * Set createdAt
     *
     * @param \DateTime $createdAt
     * @return Article
     */
    public function setCreatedAt($createdAt)
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    /**
     * Get createdAt
     *
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * Set views
     *
     * @param integer $views
     * @return Article
     */
    public function setViews($views)
    {
        $this->views = $views;

        return $this;
    }

    /**
     * Get views
     *
     * @return integer
     */
    public function getViews()
    {
        return $this->views;
    }

    /**
     * Set isActive
     *
     * @param boolean $isActive
     * @return Article
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
     * @return Article
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

    /**
     * Add articleBlock
     *
     * @param \AppBundle\Entity\ArticleBlock $articleBlock
     * @return Article
     */
    public function addArticleBlock(\AppBundle\Entity\ArticleBlock $articleBlock)
    {
        $articleBlock->setArticle($this);
        $this->articleBlocks[] = $articleBlock;

        return $this;
    }

    /**
     * Remove articleBlocks
     *
     * @param \AppBundle\Entity\ArticleBlock $articleBlocks
     */
    public function removeArticleBlock(\AppBundle\Entity\ArticleBlock $articleBlocks)
    {
        $this->articleBlocks->removeElement($articleBlocks);
    }

    /**
     * Get articleBlocks
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getArticleBlocks()
    {
        return $this->articleBlocks;
    }

    /** Custom methods */

    public function incrementViews()
    {
        $this->views++;

        return $this;
    }

    public function getSubscriptionMessage()
    {
        return 'subscription.message.article';
    }

    public function getHumanDate($_locale)
    {
        if( $_locale == 'ru' ) {
            $formatterDate = IntlDateFormatter::create(
                $_locale, IntlDateFormatter::LONG, IntlDateFormatter::NONE, NULL, NULL, 'dd MMMM'
            );
        } else {
            $formatterDate = IntlDateFormatter::create(
                $_locale, IntlDateFormatter::LONG, IntlDateFormatter::NONE, NULL, NULL, 'MMMM dd'
            );
        }

        $date = $formatterDate->format($this->getCreatedAt());

        return $date;
    }

    /** END Custom methods */
}
