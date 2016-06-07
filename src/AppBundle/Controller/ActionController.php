<?php
// src/AppBundle/Controller/ActionController.php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request;

use AppBundle\Entity\Subscriber;

class ActionController extends Controller
{
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
