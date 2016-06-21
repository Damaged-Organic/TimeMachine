<?php
// src/AppBundle/Controller/Fallback/BrowserFallbackController.php
namespace AppBundle\Controller\Fallback;

use Symfony\Component\HttpFoundation\Request;

use Symfony\Bundle\FrameworkBundle\Templating\EngineInterface;

class BrowserFallbackController
{
    private $_templating;

    public function setTemplating(EngineInterface $templating)
    {
        $this->_templating = $templating;
    }

    public function browserFallbackAction(Request $request)
    {
        return $this->_templating->renderResponse('AppBundle:Fallback:browsers.html.twig', [
            '_locale' => $request->getLocale(),
        ]);
    }
}
