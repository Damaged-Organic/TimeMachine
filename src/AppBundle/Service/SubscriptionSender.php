<?php
// src/AppBundle/Service/SubscriptionSender.php
namespace AppBundle\Service;

use Symfony\Component\Translation\Translator,
    Symfony\Bundle\TwigBundle\TwigEngine;

use Doctrine\ORM\EntityManager;

use AppBundle\Service\MailerShortcut;

class SubscriptionSender
{
    private $_manager;
    private $_translator;
    private $_templating;
    private $_mailerShortcut;

    private $emails;

    public function __construct($emails)
    {
        $this->emails = $emails;
    }

    public function setManager(EntityManager $manager)
    {
        $this->_manager = $manager;
    }

    public function setTranslator(Translator $translator)
    {
        $this->_translator = $translator;
    }

    public function setTemplating(TwigEngine $templating)
    {
        $this->_templating = $templating;
    }

    public function setMailerShortcut(MailerShortcut $mailerShortcut)
    {
        $this->_mailerShortcut = $mailerShortcut;
    }

    public function findActiveSubscribers()
    {
        $subscribers = $this->_manager->getRepository('AppBundle:Subscriber')->findBy([
            'isActive' => TRUE,
        ]);

        return $subscribers;
    }

    public function sendSubscriptionMessages($title, $text, $link)
    {
        $subscribers = $this->findActiveSubscribers();

        $text = $this->_translator->trans($text, [], 'emails');

        foreach( $subscribers as $subscriber )
        {
            $emails = [
                'from' => [
                    $this->emails['no_reply'] => $this->_translator->trans("common.from", [], 'emails'),
                ],
                'to' => $subscriber->getEmail(),
            ];

            $subject = $this->_translator->trans("subscription.subject", [], 'emails');

            $body = $this->_templating->render('AppBundle:Email:subscription.html.twig', [
                'subscriber' => $subscriber, 'title' => $title, 'text' => $text, 'link' => $link,
            ]);

            $this->_mailerShortcut->sendMail($emails['from'], $emails['to'], $subject, $body);
        }
    }
}
