<?php
// src/AppBundle/Entity/Repository/MusicianRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Service\Utility\Interfaces\ActionParametersInterface,
    AppBundle\Entity\Musician;

class MusicianRepository extends ExtendedEntityRepository implements ActionParametersInterface
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

    public function findSorted($requestParameters = NULL)
    {
        $query = $this->createQueryBuilder('m')
            ->select('m')
            ->setMaxResults(Musician::LIFT_ITEMS)
        ;

        if( !empty($requestParameters[self::PARAMETER_LIFT]) )
            $query->setFirstResult($requestParameters[self::PARAMETER_LIFT]);

        $query = $query
            ->orderBy('m.isMainCast', 'ASC')
            ->orderBy('m.yearOfEntry', 'ASC')
            ->orderBy('m.yearOfExit', 'ASC')
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getResult();
    }
}
