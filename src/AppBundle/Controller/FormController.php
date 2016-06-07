<?php
// src/AppBundle/Controller/FormController.php
namespace AppBundle\Controller;

use Exception;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request,
    Symfony\Component\HttpFoundation\Response,
    Symfony\Component\HttpFoundation\JsonResponse;

use AppBundle\Controller\Utility\FormErrorHandlerTrait;

use AppBundle\Entity\Subscriber,
    AppBundle\Form\Type\SubscriberType;

class FormController extends Controller
{
    use FormErrorHandlerTrait;

    public function subscriberFormAction($_locale)
    {
        $subscriberForm = $this->createForm(new SubscriberType, new Subscriber, [
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
        $subscriberForm = $this->createForm(new SubscriberType, ($subscriber = new Subscriber));

        $subscriberForm->handleRequest($request);

        if( !($subscriberForm->isValid()) ) {
            $response = [
                'data' => ['message' => $this->stringifyFormErrors($subscriberForm)],
                'code' => 500,
            ];
        } else {
            $_translator   = $this->get('translator');
            $_subscription = $this->get('app.subscription');

            $caught = FALSE;

            try {
                $subscriber = $_subscription->addSubscriber($subscriber);
            } catch( Exception $ex ) {
                $caught = TRUE;

                $response = [
                    'data' => ['message' => $_translator->trans($ex->getMessage(), [], 'responses')],
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
                        'data' => ['message' => $_translator->trans("subscribe.failure", [], 'responses')],
                        'code' => 500,
                    ];
                }
            }
        }

        return new JsonResponse($response['data'], $response['code']);
    }
}
