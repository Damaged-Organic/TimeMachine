<?php
// AppBundle/EventListener/Fallback/BrowserFallbackListener.php
namespace AppBundle\EventListener\Fallback;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Symfony\Component\HttpKernel\Event\FilterControllerEvent;

class BrowserFallbackListener
{
    private $_browserFallbackController;

    public function setBrowserFallbackController($browserFallbackController)
    {
        $this->_browserFallbackController = $browserFallbackController;
    }

    public function onKernelRequest($event)
    {
        if( preg_match('/(?i)msie [5-8]/',$_SERVER['HTTP_USER_AGENT']) )
            $event->setResponse($this->_browserFallbackController->browserFallbackAction($event->getRequest()));
    }
}
