<?php
// src/AppBundle/Controller/StateController.php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request;

use AppBundle\Controller\Utility\Extended\AppController,
    AppBundle\Controller\Contract\PageInitInterface;

class StateController extends AppController implements PageInitInterface
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
        $_manager = $this->getDoctrine()->getManager();

        $musicians = $_manager->getRepository('AppBundle:Musician')
            ->findMainCast()
        ;

        if( !$musicians )
            throw $this->createNotFoundException();

        $indexByTagTitle = function($musicians)
        {
            $output = [];

            foreach( $musicians as $musician ) {
                $output[$musician->getTag()->getName()] = $musician;
            }

            return $output;
        };

        return $this->render('AppBundle:State:index.html.twig', [
            'musicians' => $indexByTagTitle($musicians),
        ]);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/affiche",
     *      name="affiche",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"}
     * )
     * @Route(
     *      "/affiche",
     *      name="affiche_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"}
     * )
     */
    public function afficheAction(Request $request, $_locale)
    {
        $_manager = $this->getDoctrine()->getManager();

        $concerts = $_manager->getRepository('AppBundle:Concert')
            ->findNewest()
        ;

        return $this->render('AppBundle:State:affiche.html.twig', [
            'concerts' => $concerts,
        ]);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/blog/{id}/{slug}",
     *      name="blog",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     * @Route(
     *      "/blog/{id}/{slug}",
     *      name="blog_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     */
    public function blogAction(Request $request, $_locale, $id = NULL)
    {
        $_manager = $this->getDoctrine()->getManager();

        if( $id ) {
            $article = $_manager->getRepository('AppBundle:Article')
                ->findSingle($id)
            ;

            if( !$article )
                throw $this->createNotFoundException();

            $closestArticles = $_manager->getRepository('AppBundle:Article')
                ->findClosest($id)
            ;

            $response = [
                'view' => 'AppBundle:State:blog_article.html.twig',
                'data' => [
                    'article'         => $article,
                    'closestArticles' => $closestArticles
                ],
            ];
        } else {
            $articles = $_manager->getRepository('AppBundle:Article')
                ->findNewest()
            ;

            $response = [
                'view' => 'AppBundle:State:blog.html.twig',
                'data' => ['articles' => $articles],
            ];
        }

        return $this->render($response['view'], $response['data']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/band/{id}/{slug}",
     *      name="band",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     * @Route(
     *      "/band/{id}/{slug}",
     *      name="band_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     */
    public function bandAction(Request $request, $id = NULL)
    {
        $_manager = $this->getDoctrine()->getManager();

        if( $id ) {
            $musician = $_manager->getRepository('AppBundle:Musician')
                ->findSingleMainCast($id)
            ;

            if( !$musician )
                throw $this->createNotFoundException();

            $response = [
                'view' => 'AppBundle:State:musician.html.twig',
                'data' => ['musician' => $musician],
            ];
        } else {
            $musicians = $_manager->getRepository('AppBundle:Musician')
                ->findOldest()
            ;

            $response = [
                'view' => 'AppBundle:State:band.html.twig',
                'data' => ['musicians' => $musicians],
            ];
        }

        return $this->render($response['view'], $response['data']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/music/{id}/{slug}",
     *      name="music",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     * @Route(
     *      "/music/{id}/{slug}",
     *      name="music_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%", "id" = null, "slug" = null},
     *      requirements={"domain" = "%domain%", "id" = "\d+", "slug" = "[a-z0-9_]+"}
     * )
     */
    public function musicAction(Request $request, $id = NULL)
    {
        $_manager = $this->getDoctrine()->getManager();

        if( $id ) {
            $album = $_manager->getRepository('AppBundle:Album')
                ->findSingle($id)
            ;

            if( !$album )
                throw $this->createNotFoundException();

            $response = [
                'view' => 'AppBundle:State:music_album.html.twig',
                'data' => ['album' => $album],
            ];
        } else {
            $albums = $_manager->getRepository('AppBundle:Album')
                ->findNewest()
            ;

            $response = [
                'view' => 'AppBundle:State:music.html.twig',
                'data' => ['albums' => $albums],
            ];
        }

        return $this->render($response['view'], $response['data']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/gallery",
     *      name="gallery",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"}
     * )
     * @Route(
     *      "/gallery",
     *      name="gallery_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"}
     * )
     */
    public function galleryAction(Request $request)
    {
        return \Symfony\Component\HttpFoundation\Response('0k');
    }
}
