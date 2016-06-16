<?php
// src/AppBundle/Controller/ActionController.php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request,
    Symfony\Component\HttpFoundation\Response;

use AppBundle\Controller\Utility\Interfaces\LiftInterface,
    AppBundle\Entity\Concert,
    AppBundle\Entity\Article,
    AppBundle\Entity\Musician,
    AppBundle\Entity\Album,
    AppBundle\Entity\PhotoAlbum,
    AppBundle\Entity\Subscriber;

class ActionController extends Controller implements LiftInterface
{
    /**
     * @Method({"GET"})
     * @Route(
     *      "/affiche/lift",
     *      name="affiche_lift",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     * @Route(
     *      "/affiche/lift",
     *      name="affiche_lift_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     */
    public function afficheLiftAction(Request $request, $_locale)
    {
        $_actionHandler = $this->get('app.action_handler');

        $requestParameters = $_actionHandler->getLiftRequestParameters($request);

        if( !$requestParameters )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $concerts = $_manager->getRepository('AppBundle:Concert')
            ->findNewest($requestParameters)
        ;

        if( !$concerts ) {
            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, NULL, NULL),
                'code' => 200,
            ];
        } else {
            $concertsTotal = $_manager->getRepository('AppBundle:Concert')
                ->countAll()
            ;

            $_actionEntityManager = $this->get('app.action_entity_manager');

            $concerts = $_actionEntityManager->flattenConcerts($concerts);

            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, $concertsTotal, $concerts),
                'code' => 200,
            ];
        }

        return new Response(json_encode($response['data']), $response['code']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/blog/lift",
     *      name="blog_lift",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     * @Route(
     *      "/blog/lift",
     *      name="blog_lift_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     */
    public function blogLiftAction(Request $request, $_locale)
    {
        $_actionHandler = $this->get('app.action_handler');

        $requestParameters = $_actionHandler->getLiftRequestParameters($request);

        if( !$requestParameters )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $articles = $_manager->getRepository('AppBundle:Article')
            ->findNewest($requestParameters)
        ;

        if( !$articles ) {
            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, NULL, NULL),
                'code' => 200,
            ];
        } else {
            $articlesTotal = $_manager->getRepository('AppBundle:Article')
                ->countAll()
            ;

            $_actionEntityManager = $this->get('app.action_entity_manager');

            $articles = $_actionEntityManager->flattenArticles($articles);

            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, $articlesTotal, $articles),
                'code' => 200,
            ];
        }

        return new Response(json_encode($response['data']), $response['code']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/band/lift",
     *      name="band_lift",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     * @Route(
     *      "/band/lift",
     *      name="band_lift_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     */
    public function bandLiftAction(Request $request, $_locale)
    {
        $_actionHandler = $this->get('app.action_handler');

        $requestParameters = $_actionHandler->getLiftRequestParameters($request);

        if( !$requestParameters )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $musicians = $_manager->getRepository('AppBundle:Musician')
            ->findOldest($requestParameters)
        ;

        if( !$musicians ) {
            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, NULL, NULL),
                'code' => 200,
            ];
        } else {
            $musiciansTotal = $_manager->getRepository('AppBundle:Musician')
                ->countAll()
            ;

            $_actionEntityManager = $this->get('app.action_entity_manager');

            $musicians = $_actionEntityManager->flattenMusicians($musicians);

            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, $musiciansTotal, $musicians),
                'code' => 200,
            ];
        }

        return new Response(json_encode($response['data']), $response['code']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/music/lift",
     *      name="music_lift",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     * @Route(
     *      "/music/lift",
     *      name="music_lift_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     */
    public function musicLiftAction(Request $request, $_locale)
    {
        $_actionHandler = $this->get('app.action_handler');

        $requestParameters = $_actionHandler->getLiftRequestParameters($request);

        if( !$requestParameters )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $albums = $_manager->getRepository('AppBundle:Album')
            ->findNewest($requestParameters)
        ;

        if( !$albums ) {
            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, NULL, NULL),
                'code' => 200,
            ];
        } else {
            $albumsTotal = $_manager->getRepository('AppBundle:Album')
                ->countAll()
            ;

            $_actionEntityManager = $this->get('app.action_entity_manager');

            $albums = $_actionEntityManager->flattenAlbums($albums);

            $response = [
                'data' => $_actionHandler->composeLiftResponseData($requestParameters, $albumsTotal, $albums),
                'code' => 200,
            ];
        }

        return new Response(json_encode($response['data']), $response['code']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/gallery/lift",
     *      name="gallery_lift",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     * @Route(
     *      "/gallery/lift",
     *      name="gallery_lift_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     */
    public function galleryLiftAction(Request $request, $_locale)
    {
        $_actionHandler = $this->get('app.action_handler');

        $requestParameters = $_actionHandler->getGalleryRequestParameters($request);

        if( !$requestParameters )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $photoAlbums = $_manager->getRepository('AppBundle:PhotoAlbum')
            ->findNewest($requestParameters)
        ;

        if( !$photoAlbums ) {
            $response = [
                'data' => $_actionHandler->composeGalleryResponseData($requestParameters, NULL, NULL),
                'code' => 200,
            ];
        } else {
            $photoAlbumsTotal = $_manager->getRepository('AppBundle:PhotoAlbum')
                ->countAllByParameters($requestParameters)
            ;

            $_actionEntityManager = $this->get('app.action_entity_manager');

            $photoAlbums = $_actionEntityManager->flattenPhotoAlbums($photoAlbums);

            $response = [
                'data' => $_actionHandler->composeGalleryResponseData($requestParameters, $photoAlbumsTotal, $photoAlbums),
                'code' => 200,
            ];
        }

        return new Response(json_encode($response['data']), $response['code']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/song/lyrics",
     *      name="song_lyrics",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     * @Route(
     *      "/song/lyrics",
     *      name="song_lyrics_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"},
     *      condition="request.isXmlHttpRequest()"
     * )
     */
    public function songLyricsAction(Request $request, $_locale)
    {
        $_actionHandler = $this->get('app.action_handler');

        $songParameter = $_actionHandler->getSongRequestParameters($request);

        if( !$songParameter )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $song = $_manager->getRepository('AppBundle:Song')
            ->find($songParameter)
        ;

        if( !$song || !$song->getLyrics() ) {
            $_translator = $this->get('translator');

            $response = [
                'data' => [
                    'title'   => $_translator->trans('common.error.title', [], 'responses'),
                    'message' => $_translator->trans('common.error.text', [], 'responses'),
                ],
                'code' => 500,
            ];
        } else {
            $response = [
                'data' => $_actionHandler->composeSongResponseData($song->getLyrics()),
                'code' => 200,
            ];
        }

        return new Response(json_encode($response['data']), $response['code']);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/subscribe_checkout/{email}/{checkoutHash}",
     *      name="subscribe_checkout",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%", "email" = ".+", "checkoutHash" = "[a-f0-9]{40}"}
     * )
     * @Route(
     *      "/subscribe_checkout/{email}/{checkoutHash}",
     *      name="subscribe_checkout_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%", "email" = ".+", "checkoutHash" = "[a-f0-9]{40}"}
     * )
     */
    public function subscribeAction(Request $request, $_locale, $email, $checkoutHash)
    {
        $_subscription = $this->get('app.subscription');

        $subscriber = $_subscription->findSubscriberByEmail($email);

        if( !$subscriber || $_subscription->isSubscriberValid($subscriber) )
            throw $this->createNotFoundException();

        $subscriber = $_subscription->activateSubscriber($subscriber, $checkoutHash);

        if( !$subscriber )
            throw $this->createNotFoundException();

        return $this->render('AppBundle:Subscription:subscribe_checkout.html.twig', [
            '_locale'    => $_locale,
            'subscriber' => $subscriber,
        ]);
    }

    /**
     * @Method({"GET"})
     * @Route(
     *      "/unsubscribe_checkout/{email}/{checkoutHash}",
     *      name="unsubscribe_checkout",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%", "email" = ".+", "checkoutHash" = "[a-f0-9]{40}"}
     * )
     * @Route(
     *      "/unsubscribe_checkout/{email}/{checkoutHash}",
     *      name="unsubscribe_checkout_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%", "email" = ".+", "checkoutHash" = "[a-f0-9]{40}"}
     * )
     */
    public function unsubscribeAction(Request $request, $_locale, $email, $checkoutHash)
    {
        $_subscription = $this->get('app.subscription');

        $subscriber = $_subscription->findSubscriberByEmail($email);

        if( !$subscriber || !$_subscription->isSubscriberValid($subscriber) )
            throw $this->createNotFoundException();

        if( $request->query->has('confirm') )
        {
            $subscriber = $_subscription->deactivateSubscriber($subscriber, $checkoutHash);

            if( !$subscriber )
                throw $this->createNotFoundException();
        }

        return $this->render('AppBundle:Subscription:unsubscribe_checkout.html.twig', [
            '_locale'    => $_locale,
            'subscriber' => $subscriber,
        ]);
    }
}
