<?php
// src/AppBundle/Controller/StateController.php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request;

use AppBundle\Controller\Contract\PageInitInterface;

class StateController extends Controller implements PageInitInterface
{
    /**
     * @Method({"GET"})
     * @Route(
     *      "/",
     *      name="index",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"}
     * )
     * @Route(
     *      "/",
     *      name="index_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"}
     * )
     */
    public function indexAction(Request $request)
    {
        return $this->render('AppBundle:State:index.html.twig', [
            'route'    => $this->get('app.metadata')->getCurrentRoute(),
            'metadata' => $this->get('app.metadata')->getCurrentMetadata()
        ]);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/articles/{id}/{slug}",
     *      name="articles",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     * @Route(
     *      "/articles/{id}/{slug}",
     *      name="articles_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     */
    public function articlesAction(Request $request)
    {
        return \Symfony\Component\HttpFoundation\Response('0k');
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/concerts",
     *      name="concerts",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"}
     * )
     * @Route(
     *      "/concerts",
     *      name="concerts_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"}
     * )
     */
    public function concertsAction(Request $request)
    {
        return \Symfony\Component\HttpFoundation\Response('0k');
    }
}
