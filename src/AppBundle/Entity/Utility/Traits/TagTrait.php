<?php
// src/AppBundle/Entity/Utility/Traits/TagTrait.php
namespace AppBundle\Entity\Utility\Traits;

use AppBundle\Entity\Tag;

trait TagTrait
{
    public function getTagOrDefault()
    {
        return ( $this->getTag() ) ?: "#" . Tag::DEFAULT_TAG;
    }
}
