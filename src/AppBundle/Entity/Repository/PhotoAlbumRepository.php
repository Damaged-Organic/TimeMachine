<?php
// src/AppBundle/Entity/Repository/PhotoAlbumRepository.php
namespace AppBundle\Entity\Repository;

use DateTime;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Service\Utility\Interfaces\ActionParametersInterface,
    AppBundle\Entity\PhotoAlbum;

class PhotoAlbumRepository extends ExtendedEntityRepository implements ActionParametersInterface
{
    public function findNewest($requestParameters = NULL)
    {
        $query = $this->createQueryBuilder('pa')
            ->select('pa')
            ->where('pa.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->setMaxResults(PhotoAlbum::LIFT_ITEMS)
        ;

        if( !empty($requestParameters[self::PARAMETER_TAG]) &&
            ($requestParameters[self::PARAMETER_TAG] !== 0) ) {
            $query
                ->andWhere('pa.tag = :tag')
                ->setParameter(':tag', $requestParameters[self::PARAMETER_TAG])
            ;
        }

        if( !empty($requestParameters[self::PARAMETER_YEAR]) &&
            ($requestParameters[self::PARAMETER_YEAR] !== (new DateTime)->format('Y')) ) {
            $query
                ->andWhere('YEAR(pa.dateTaken) = :dateTaken')
                ->setParameter(':dateTaken', $requestParameters[self::PARAMETER_YEAR])
            ;
        }

        if( !empty($requestParameters[self::PARAMETER_LIFT]) )
        {
            $query->setFirstResult($requestParameters[self::PARAMETER_LIFT]);
        }

        $query = $query
            ->orderBy('pa.dateTaken', 'DESC')
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
        $query = $this->createQueryBuilder('pa')
            ->select('pa')
            ->where('pa.id = :id')
            ->andWhere('pa.isActive = :isActive')
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
            ->createQueryBuilder('pa')
            ->select('COUNT(pa.id)')
            ->where('pa.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->getQuery()
        ;

        return $query->getSingleScalarResult();
    }

    public function countAllByParameters($requestParameters)
    {
        $query = $this
            ->createQueryBuilder('pa')
            ->select('COUNT(pa.id)')
            ->where('pa.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
        ;

        if( !empty($requestParameters[self::PARAMETER_TAG]) &&
            ($requestParameters[self::PARAMETER_TAG] !== 0) ) {
            $query
                ->andWhere('pa.tag = :tag')
                ->setParameter(':tag', $requestParameters[self::PARAMETER_TAG])
            ;
        }

        if( !empty($requestParameters[self::PARAMETER_YEAR]) &&
            ($requestParameters[self::PARAMETER_YEAR] !== (new DateTime)->format('Y')) ) {
            $query
                ->andWhere('YEAR(pa.dateTaken) = :dateTaken')
                ->setParameter(':dateTaken', $requestParameters[self::PARAMETER_YEAR])
            ;
        }

        $query = $query->getQuery();

        return $query->getSingleScalarResult();
    }
}
