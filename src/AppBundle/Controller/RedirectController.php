<?php
// src/AppBundle/Controller/RedirectController.php
namespace AppBundle\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request,
    Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class RedirectController extends Controller
{
    /**
     * Redirects to URL without subdomain prefix in case of default locale
     */
    public function redirectToDefaultLocaleAction(Request $request)
    {
        $path = $request->getRequestUri();

        $domain = $this->container->getParameter('domain');
        $locale = $this->container->getParameter('locale');

        $prefixed = implode('.', [$locale, $domain]);

        $uri = str_replace(
            $prefixed, $domain, $request->getSchemeAndHttpHost()
        );

        return $this->redirect($uri.$path, 307);
    }
}
