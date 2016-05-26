<?php
// AppBundle/Entity/Utility/Traits/DoctrineMapping/SortableMapper.php
namespace AppBundle\Entity\Utility\Traits\DoctrineMapping;

use Gedmo\Mapping\Annotation as Gedmo;

trait SortableMapper
{
    /**
     * @Gedmo\SortablePosition
     * @ORM\Column(name="position", type="integer")
     */
    private $position;

    public function setPosition($position)
    {
        $this->position = $position;
    }

    public function getPosition()
    {
        return $this->position;
    }

    public function getPositionNumber()
    {
        return $this->position;
    }
}
