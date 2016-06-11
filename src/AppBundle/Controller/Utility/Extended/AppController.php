<?php
// src/AppBundle/Controller/Utility/Extended/AppController.php
namespace AppBundle\Controller\Utility\Extended;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Response;

class AppController extends Controller
{
    public function render($view, array $parameters = array(), Response $response = null)
    {
        $parameters = array_merge([
            '_locale'  => $this->get('request_stack')->getCurrentRequest()->getLocale(),
            'route'    => $this->get('app.metadata')->getCurrentRoute(),
            'metadata' => $this->get('app.metadata')->getCurrentMetadata(),
        ], $parameters);

        return parent::render($view, $parameters, $response);
    }
}
