<?php
// src/AppBundle/Entity/Repository/PhotoAlbumRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Entity\PhotoAlbum;

class PhotoAlbumRepository extends ExtendedEntityRepository
{
    public function findNewest($offset = NULL)
    {
        $query = $this->createQueryBuilder('pa')
            ->select('pa')
            ->where('pa.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->setMaxResults(PhotoAlbum::LIFT_ITEMS)
        ;

        if( $offset )
            $query->setFirstResult($offset);

        $query = $query
            ->orderBy('pa.yearTaken', 'DESC')
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
}
