<?php
// src/AppBundle/Service/Subscription.php
namespace AppBundle\Service;

use Exception;

use Doctrine\ORM\EntityManager;

use AppBundle\Entity\Subscriber;

class Subscription
{
    private $_manager;

    public function setManager(EntityManager $manager)
    {
        $this->_manager = $manager;
    }

    public function findSubscriberByEmail($email)
    {
        $subscriber = $this->_manager->getRepository('AppBundle:Subscriber')->findBy([
            'email' => $email,
        ]);

        return ( $subscriber ) ? $subscriber[0] : NULL;
    }

    public function addSubscriber(Subscriber $subscriber)
    {
        $subscriber = ( $this->findSubscriberByEmail($subscriber->getEmail()) ) ?: $subscriber;

        if( $subscriber->getIsActive() )
            throw new Exception('subscribe.existing');

        if( $subscriber->getInCheckoutHash() )
            throw new Exception('subscribe.pending');

        $subscriber->setInCheckoutHash(
            $this->generateCheckoutHash()
        );

        $this->_manager->persist($subscriber);
        $this->_manager->flush();

        return $subscriber;
    }

    public function activateSubscriber(Subscriber $subscriber, $checkoutHash)
    {
        if( $subscriber->getInCheckoutHash() !== $checkoutHash )
            return FALSE;

        $subscriber
            ->setIsActive(TRUE)
            ->setInCheckoutHash(NULL)
            ->setOutCheckoutHash(
                $this->generateCheckoutHash()
            )
        ;

        $this->_manager->persist($subscriber);
        $this->_manager->flush();

        return $subscriber;
    }

    public function deactivateSubscriber(Subscriber $subscriber, $checkoutHash)
    {
        if( $subscriber->getOutCheckoutHash() !== $checkoutHash )
            return FALSE;

        $subscriber
            ->setIsActive(FALSE)
            ->setOutCheckoutHash(NULL)
        ;

        $this->_manager->persist($subscriber);
        $this->_manager->flush();

        return $subscriber;
    }

    public function isSubscriberValid(Subscriber $subscriber)
    {
        return ( $subscriber->getIsActive() && !$subscriber->getInCheckoutHash() && $subscriber->getOutCheckoutHash() );
    }

    private function generateCheckoutHash()
    {
        return hash('sha1', uniqid(mt_rand(), TRUE));
    }
}
