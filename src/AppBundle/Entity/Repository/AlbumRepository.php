<?php
// src/AppBundle/Entity/Repository/AlbumRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Service\Utility\Interfaces\ActionParametersInterface,
    AppBundle\Entity\Album;

class AlbumRepository extends ExtendedEntityRepository implements ActionParametersInterface
{
    public function findNewest($requestParameters = NULL)
    {
        $query = $this->createQueryBuilder('a')
            ->select('a')
            ->where('a.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->setMaxResults(Album::LIFT_ITEMS)
        ;

        if( !empty($requestParameters[self::PARAMETER_LIFT]) )
            $query->setFirstResult($requestParameters[self::PARAMETER_LIFT]);

        $query = $query
            ->orderBy('a.yearOfRelease', 'DESC')
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getResult();
    }

    public function findSingle($id)
    {
        $query = $this->createQueryBuilder('a')
            ->select('a')
            ->where('a.id = :id')
            ->andWhere('a.isActive = :isActive')
            ->setParameters([
                ':id'       => $id,
                ':isActive' => TRUE,
            ])
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getOneOrNullResult();
    }

    public function countAll()
    {
        $query = $this
            ->createQueryBuilder('a')
            ->select('COUNT(a.id)')
            ->where('a.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->getQuery()
        ;

        return $query->getSingleScalarResult();
    }
}
