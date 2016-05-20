<?php
// src/AppBundle/Service/Metadata.php
namespace AppBundle\Service;

use Doctrine\ORM\EntityManager;

class Metadata
{
    protected $_manager;

    private $currentRoute;
    private $currentMetadata;

    public function __construct(EntityManager $manager)
    {
        $this->_manager = $manager;
    }

    private function formatRoute($route)
    {
        return str_replace('_default', '', $route);
    }


    public function setCurrentRoute($currentRoute)
    {
        if( $currentRoute )
            $this->currentRoute = $this->formatRoute($currentRoute);
    }

    public function getCurrentRoute()
    {
        return $this->currentRoute;
    }

    public function setCurrentMetadata()
    {
        if( $this->currentRoute )
            $this->currentMetadata = $this->_manager->getRepository('AppBundle:Metadata')
                ->findOneByRoute($this->currentRoute);
    }

    public function getCurrentMetadata()
    {
        return $this->currentMetadata;
    }
}
