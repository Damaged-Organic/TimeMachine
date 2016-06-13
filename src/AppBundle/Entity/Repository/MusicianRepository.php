<?php
// src/AppBundle/Entity/Repository/MusicianRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Entity\Musician;

class MusicianRepository extends ExtendedEntityRepository
{
    public function findSingleMainCast($id)
    {
        $query = $this->createQueryBuilder('m')
            ->select('m, t')
            ->leftJoin('m.tag', 't')
            ->where('m.id = :id')
            ->andWhere('m.isMainCast = :isMainCast')
            ->setParameters([
                ':id'         => $id,
                ':isMainCast' => TRUE,
            ])
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getOneOrNullResult();
    }

    public function findMainCast()
    {
        $query = $this->createQueryBuilder('m')
            ->select('m, t')
            ->leftJoin('m.tag', 't')
            ->where('m.isMainCast = :isMainCast')
            ->setParameter(':isMainCast', TRUE)
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getResult();
    }

    public function findSecondaryCast()
    {
        $query = $this->createQueryBuilder('m')
            ->select('m, t')
            ->leftJoin('m.tag', 't')
            ->where('m.isMainCast = :isMainCast')
            ->setParameter(':isMainCast', FALSE)
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getResult();
    }

    public function findOldest($offset = NULL)
    {
        $query = $this->createQueryBuilder('m')
            ->select('m')
            ->setMaxResults(Musician::LIFT_ITEMS)
        ;

        if( $offset )
            $query->setFirstResult($offset);

        $query = $query
            ->orderBy('m.yearOfEntry', 'ASC')
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getResult();
    }
}
