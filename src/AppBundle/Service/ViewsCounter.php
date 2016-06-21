<?php
// src/AppBundle/Service/ViewsCounter.php
namespace AppBundle\Service;

use ReflectionClass;

use Symfony\Component\HttpFoundation\Session\Session;

use Doctrine\ORM\EntityManager;

class ViewsCounter
{
    private $_manager;
    private $_session;

    public function __construct(EntityManager $manager, Session $session)
    {
        $this->_manager = $manager;
        $this->_session = $session;
    }

    private function getEntityName($entity)
    {
        $entity = get_class($entity);

        $reflection = new ReflectionClass($entity);

        return $reflection->getShortName();
    }

    private function isAlreadyCounted($entityName, $key)
    {
        if( $this->_session->has("{$entityName}_{$key}") )
            return TRUE;

        return $this->_session->set("{$entityName}_{$key}", TRUE);
    }

    public function updateViews($entity)
    {
        $entityName = $this->getEntityName($entity);

        if( !$this->isAlreadyCounted($entityName, $entity->getId()) )
        {
            $entity->incrementViews();

            $this->_manager->persist($entity);
            $this->_manager->flush();
        }
    }
}
