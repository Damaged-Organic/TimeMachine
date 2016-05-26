<?php
// src/AppBundle/Entity/Repository/MetadataRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository;

class MetadataRepository extends ExtendedEntityRepository
{
    public function findOneByRoute($route)
    {
        $query = $this->createQueryBuilder('m')
            ->select('m')
            ->where('m.route = :route')
            ->setParameter(':route', $route)
            ->getQuery()
        ;

        $query->setHint(
            Query::HINT_CUSTOM_OUTPUT_WALKER,
            'Gedmo\\Translatable\\Query\\TreeWalker\\TranslationWalker'
        );

        return $query->getSingleResult();
    }
}
