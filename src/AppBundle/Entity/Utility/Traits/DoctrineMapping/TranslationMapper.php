<?php
// src/AppBundle/Entity/Utility/Traits/DoctrineMapping/TranslationMapper.php
namespace AppBundle\Entity\Utility\Traits\DoctrineMapping;

use Doctrine\ORM\Mapping as ORM;

use Gedmo\Mapping\Annotation as Gedmo;

trait TranslationMapper
{
    /**
     * @Gedmo\Locale
     */
    protected $locale;

    /*
     * Gedmo locale methods
     * Trait's functions use
     *
     * $this->translations property
     *
     *which should be defined in trait-user class
     */

    public function setTranslatableLocale($locale)
    {
        $this->locale = $locale;

        return $this;
    }

    public function getTranslatableLocale()
    {
        return $this->locale;
    }

    public function getTranslations()
    {
        return $this->translations;
    }

    public function addTranslation($translation)
    {
        $this->translations->add($translation);
        $translation->setObject($this);
    }

    public function removeTranslation($translation)
    {
        $this->translations->removeElement($translation);
    }

    public function setTranslations($translations)
    {
        $this->translations = $translations;
    }

    /* END Gedmo locale methods */
}
