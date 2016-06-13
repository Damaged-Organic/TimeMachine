<?php
// src/AppBundle/Controller/ActionController.php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request,
    Symfony\Component\HttpFoundation\Response;

use AppBundle\Controller\Utility\Interfaces\LiftInterface,
    AppBundle\Controller\Utility\Traits\LiftHelperTrait,
    AppBundle\Entity\Concert,
    AppBundle\Entity\Article,
    AppBundle\Entity\Musician,
    AppBundle\Entity\Album,
    AppBundle\Entity\Subscriber;

class ActionController extends Controller implements LiftInterface
{
    use LiftHelperTrait;

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
        if( !$request->query->has(self::LIFT_PARAMETER) )
            return FALSE;

        $liftParameter = $request->query->get(self::LIFT_PARAMETER);

        if( !$this->isLiftParameterValid($liftParameter) )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $concerts = $_manager->getRepository('AppBundle:Concert')
            ->findNewest($liftParameter)
        ;

        if( !$concerts ) {
            $response = [
                'data' => $this->composeResponseData($liftParameter, TRUE, NULL),
                'code' => 200,
            ];
        } else {
            $concertsTotal = $_manager->getRepository('AppBundle:Concert')
                ->countAll()
            ;

            $isLast = $this->isLast($liftParameter, $concertsTotal, $concerts);

            $concerts = Concert::flattenForXhr(
                $concerts,
                $this->get('translator'),
                $_locale,
                $this->get('vich_uploader.templating.helper.uploader_helper')
            );

            $response = [
                'data' => $this->composeResponseData($liftParameter, $isLast, $concerts),
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
        if( !$request->query->has(self::LIFT_PARAMETER) )
            return FALSE;

        $liftParameter = $request->query->get(self::LIFT_PARAMETER);

        if( !$this->isLiftParameterValid($liftParameter) )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $articles = $_manager->getRepository('AppBundle:Article')
            ->findNewest($liftParameter)
        ;

        if( !$articles ) {
            $response = [
                'data' => $this->composeResponseData($liftParameter, TRUE, NULL),
                'code' => 200,
            ];
        } else {
            $articlesTotal = $_manager->getRepository('AppBundle:Article')
                ->countAll()
            ;

            $isLast = $this->isLast($liftParameter, $articlesTotal, $articles);

            $articles = Article::flattenForXhr(
                $articles,
                $this->get('translator'),
                $this->get('twig'),
                $this->get('router'),
                $_locale,
                $this->get('vich_uploader.templating.helper.uploader_helper')
            );

            $response = [
                'data' => $this->composeResponseData($liftParameter, $isLast, $articles),
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
        if( !$request->query->has(self::LIFT_PARAMETER) )
            return FALSE;

        $liftParameter = $request->query->get(self::LIFT_PARAMETER);

        if( !$this->isLiftParameterValid($liftParameter) )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $musicians = $_manager->getRepository('AppBundle:Musician')
            ->findOldest($liftParameter)
        ;

        if( !$musicians ) {
            $response = [
                'data' => $this->composeResponseData($liftParameter, TRUE, NULL),
                'code' => 200,
            ];
        } else {
            $musiciansTotal = $_manager->getRepository('AppBundle:Musician')
                ->countAll()
            ;

            $isLast = $this->isLast($liftParameter, $musiciansTotal, $musicians);

            $musicians = Musician::flattenForXhr(
                $musicians,
                $this->get('translator'),
                $this->get('twig'),
                $this->get('router'),
                $this->get('vich_uploader.templating.helper.uploader_helper')
            );

            $response = [
                'data' => $this->composeResponseData($liftParameter, $isLast, $musicians),
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
        if( !$request->query->has(self::LIFT_PARAMETER) )
            return FALSE;

        $liftParameter = $request->query->get(self::LIFT_PARAMETER);

        if( !$this->isLiftParameterValid($liftParameter) )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $albums = $_manager->getRepository('AppBundle:Album')
            ->findNewest($liftParameter)
        ;

        if( !$albums ) {
            $response = [
                'data' => $this->composeResponseData($liftParameter, TRUE, NULL),
                'code' => 200,
            ];
        } else {
            $albumsTotal = $_manager->getRepository('AppBundle:Album')
                ->countAll()
            ;

            $isLast = $this->isLast($liftParameter, $albumsTotal, $albums);

            $albums = Album::flattenForXhr(
                $albums,
                $this->get('translator'),
                $this->get('twig'),
                $this->get('router'),
                $this->get('vich_uploader.templating.helper.uploader_helper')
            );

            $response = [
                'data' => $this->composeResponseData($liftParameter, $isLast, $albums),
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
        if( !$request->query->has('songId') )
            return FALSE;

        $songId = $request->query->get('songId');

        if( empty($songId) || !is_numeric($songId) )
            throw $this->createNotFoundException();

        $_manager = $this->getDoctrine()->getManager();

        $song = $_manager->getRepository('AppBundle:Song')
            ->find($songId)
        ;

        if( !$song || !$song->getLyrics() ) {
            $response = [
                'data' => [
                    'title'   => "Oooppppps",
                    'message' => "Something went wrong!",
                ],
                'code' => 500,
            ];
        } else {
            $lyrics = preg_replace('/\h+/', ' ', $song->getLyrics());

            $response = [
                'data' => ['data' => $lyrics],
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
