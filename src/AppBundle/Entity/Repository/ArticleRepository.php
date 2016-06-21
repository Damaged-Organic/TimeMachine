<?php
// src/AppBundle/Entity/Repository/ArticleRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Service\Utility\Interfaces\ActionParametersInterface,
    AppBundle\Entity\Article;

class ArticleRepository extends ExtendedEntityRepository implements ActionParametersInterface
{
    public function findNewest($requestParameters = NULL)
    {
        $query = $this->createQueryBuilder('a')
            ->select('a')
            ->where('a.isActive = :isActive')
            ->setParameter(':isActive', TRUE)
            ->setMaxResults(Article::LIFT_ITEMS)
        ;

        if( !empty($requestParameters[self::PARAMETER_LIFT]) )
            $query->setFirstResult($requestParameters[self::PARAMETER_LIFT]);

        $query = $query
            ->orderBy('a.createdAt', 'DESC')
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

    public function findClosest($id, $createdAt)
    {
        $prev = $this
            ->createQueryBuilder('a')
            ->select('a')
            ->where('a.createdAt <= :createdAt')
            ->andWhere('a.id < :id')
            ->setParameters([
                'createdAt' => $createdAt,
                'id'        => $id,
            ])
            ->orderBy('a.createdAt', 'DESC')
            ->orderBy('a.id', 'DESC')
            ->setMaxResults(1)
            ->getQuery()
            ->getOneOrNullResult()
        ;

        $next = $this
            ->createQueryBuilder('a')
            ->select('a')
            ->where('a.createdAt >= :createdAt')
            ->andWhere('a.id > :id')
            ->setParameters([
                'createdAt' => $createdAt,
                'id'        => $id,
            ])
            ->orderBy('a.createdAt', 'ASC')
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(1)
            ->getQuery()
            ->getOneOrNullResult()
        ;

        return [
            'prev' => $prev,
            'next' => $next,
        ];
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
