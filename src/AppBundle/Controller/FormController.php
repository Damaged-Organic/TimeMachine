<?php
// src/AppBundle/Controller/FormController.php
namespace AppBundle\Controller;

use Exception;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request,
    Symfony\Component\HttpFoundation\Response;

use AppBundle\Controller\Utility\Traits\FormErrorHandlerTrait;

use AppBundle\Entity\Subscriber,
    AppBundle\Form\Type\SubscriberType;

class FormController extends Controller
{
    use FormErrorHandlerTrait;

    public function subscriberFormAction($_locale)
    {
        $subscriberType = new SubscriberType($this->get('translator'));

        $subscriberForm = $this->createForm($subscriberType, new Subscriber, [
            'action' => "/subscribe",
        ]);

        return $this->render('AppBundle:Form:subscriberForm.html.twig', [
            '_locale'        => $_locale,
            'subscriberForm' => $subscriberForm->createView(),
        ]);
    }

    /**
     * @Method({"POST"})
     * @Route(
     *      "/subscribe",
     *      name="subscribe",
     *      host="{_locale}.{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"_locale" = "%locale%|en", "domain" = "%domain%"}
     * )
     * @Route(
     *      "/subscribe",
     *      name="subscribe_default",
     *      host="{domain}",
     *      defaults={"_locale" = "%locale%", "domain" = "%domain%"},
     *      requirements={"domain" = "%domain%"}
     * )
     */
    public function subscribeAction(Request $request, $_locale)
    {
        $subscriberType = new SubscriberType($this->get('translator'));

        $subscriberForm = $this->createForm($subscriberType, ($subscriber = new Subscriber));

        $subscriberForm->handleRequest($request);

        $_translator = $this->get('translator');

        if( !($subscriberForm->isValid()) ) {
            $response = [
                'data' => [
                    'title'   => $_translator->trans("subscribe.error.title", [], 'responses'),
                    'message' => $this->stringifyFormErrors($subscriberForm),
                ],
                'code' => 500,
            ];
        } else {
            $_subscription = $this->get('app.subscription');

            $caught = FALSE;

            try {
                $subscriber = $_subscription->addSubscriber($subscriber);
            } catch( Exception $ex ) {
                $caught = TRUE;

                $response = [
                    'data' => [
                        'title'   => $_translator->trans("subscribe.error.title", [], 'responses'),
                        'message' => $_translator->trans($ex->getMessage(), [], 'responses'),
                    ],
                    'code' => 500,
                ];
            }

            if( !$caught )
            {
                $_mailerShortcut = $this->get('app.mailer_shortcut');

                $emails = [
                    'from' => [
                        $this->getParameter('emails')['no_reply'] => $_translator->trans("common.from", [], 'emails'),
                    ],
                    'to' => $subscriber->getEmail(),
                ];

                $subject = $_translator->trans("subscribe.subject", [], 'emails');

                $body = $this->renderView('AppBundle:Email:subscribe.html.twig', [
                    '_locale'    => $_locale,
                    'subscriber' => $subscriber,
                ]);

                if( $_mailerShortcut->sendMail($emails['from'], $emails['to'], $subject, $body) ) {
                    $response = [
                        'data' => ['message' => $_translator->trans("subscribe.success", [], 'responses')],
                        'code' => 200,
                    ];
                } else {
                    $response = [
                        'data' => [
                            'title'   => $_translator->trans("subscribe.error.title", [], 'responses'),
                            'message' => $_translator->trans("subscribe.failure", [], 'responses'),
                        ],
                        'code' => 500,
                    ];
                }
            }
        }

        return new Response(json_encode($response['data']), $response['code']);
    }
}
