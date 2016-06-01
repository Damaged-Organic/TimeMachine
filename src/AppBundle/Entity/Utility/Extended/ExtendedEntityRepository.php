<?php
// src/AppBundle/Entity/Utility/Extended/ExtendedEntityRepository.php
namespace AppBundle\Entity\Utility\Extended;

use Doctrine\ORM\EntityRepository,
    Doctrine\ORM\Query;

class ExtendedEntityRepository extends EntityRepository
{
    public function find($id)
    {
        //TODO: This is kludge for Sonata
        $id = ( is_array($id) ) ? $id['id'] : $id;

        $query = $this->createQueryBuilder("e")
            ->select("e")
            ->where("e.id = :id")
            ->setParameter('id', $id)
            ->getQuery();

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getOneOrNullResult();
    }

    public function findAll()
    {
        $query = $this->createQueryBuilder("e")
            ->select("e")
            ->getQuery();

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getResult();
    }

    public function countAll()
    {
        $query = $this
            ->createQueryBuilder('e')
            ->select('COUNT(e.id)')
            ->getQuery()
        ;

        return $query->getSingleScalarResult();
    }
}
