<?php
// src/AppBundle/Entity/Repository/ConcertRepository.php
namespace AppBundle\Entity\Repository;

use DateTime;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository,
    AppBundle\Service\Utility\Interfaces\ActionParametersInterface,
    AppBundle\Entity\Concert;

class ConcertRepository extends ExtendedEntityRepository implements ActionParametersInterface
{
    public function findNewest($requestParameters = NULL)
    {
        $currentDateTime = new DateTime;

        $query = $this->createQueryBuilder('c')
            ->select('c')
            ->where('c.doorsOpenAt >= :doorsOpenAt')
            ->andWhere('c.isActive = :isActive')
            ->setParameters([
                ':doorsOpenAt' => $currentDateTime,
                ':isActive'    => TRUE,
            ])
            ->setMaxResults(Concert::LIFT_ITEMS)
        ;

        if( !empty($requestParameters[self::PARAMETER_LIFT]) )
            $query->setFirstResult($requestParameters[self::PARAMETER_LIFT]);

        $query = $query
            ->orderBy('c.doorsOpenAt', 'ASC')
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
