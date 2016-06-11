<?php
// src/AppBundle/Entity/Repository/MusicianRepository.php
namespace AppBundle\Entity\Repository;

use Doctrine\ORM\Query;

use AppBundle\Entity\Utility\Extended\ExtendedEntityRepository;

class MusicianRepository extends ExtendedEntityRepository
{
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
}
