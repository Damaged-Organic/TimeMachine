<?php
// src/AppBundle/Entity/Repository/ConcertRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Entity\Concert;

class ConcertRepository extends ExtendedEntityRepository
{
    public function findNewest($offset = NULL)
    {
        $query = $this->createQueryBuilder('c')
            ->select('c')
            ->where('c.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->setMaxResults(Concert::LIFT_ITEMS)
        ;

        if( $offset )
            $query->setFirstResult($offset);

        $query = $query
            ->orderBy('c.doorsOpenAt', 'DESC')
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getResult();
    }

    public function countAll()
    {
        $query = $this
            ->createQueryBuilder('c')
            ->select('COUNT(c.id)')
            ->where('c.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->getQuery()
        ;

        return $query->getSingleScalarResult();
    }
}
