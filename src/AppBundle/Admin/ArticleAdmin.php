<?php
// src/AppBundle/Admin/ArticleAdmin.php
namespace AppBundle\Admin;

use DateTime, IntlDateFormatter;

use Symfony\Component\Validator\Constraints as Assert;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Entity\Article;

class ArticleAdmin extends Admin
{
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Название",
            ])
            ->add('createdAt', 'datetime', [
                'label'    => "Дата и время публикации",
                'dateType' => IntlDateFormatter::LONG,
            ])
            ->add('views', 'number', [
                'label' => "Количество просмотров",
            ])
            ->add('isActive', 'boolean', [
                'label'    => "Отображается",
                'editable' => TRUE,
            ])
            ->add('isSubscriptionSent', 'boolean', [
                'label' => "Письма отправлены",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->tab('Статья')
                ->with('Статья - Локализованные данные')
                    ->add('translations', 'a2lix_translations_gedmo', [
                        'label'              => FALSE,
                        'translatable_class' => 'AppBundle\Entity\Article',
                        'required'           => TRUE,
                        'fields' => [
                            'title' => [
                                'locale_options' => [
                                    'ru' => [
                                        'required' => TRUE,
                                        'label'    => "Название",
                                    ],
                                    'en' => [
                                        'required' => FALSE,
                                        'label'    => "Title",
                                    ],
                                ],
                            ],
                            'slug' => [
                                'display' => FALSE,
                            ],
                        ],
                    ])
                ->end()
                ->with('Статья - Общие данные')
                    ->add('createdAt', 'sonata_type_datetime_picker', [
                        'label'  => "Дата и время публикации",
                        'format' => 'dd-MM-yyyy HH:mm',
                        'attr'   => [
                            'data-date-format' => 'DD-MM-YYYY HH:mm',
                        ],
                    ])
                    ->add('views', 'number', [
                        'label'       => "Количество просмотров",
                        'constraints' => [
                            new Assert\Range(['min' => 0]),
                        ],
                    ])
                    ->add('isActive', 'checkbox', [
                        'required' => FALSE,
                        'label'    => "Отображается",
                    ])
                ->end()
            ->end()
            ->tab('Список блоков')
                ->with('Статья - блоки')
                    ->add('articleBlocks', 'sonata_type_collection', [
                        'label'        => FALSE,
                        'by_reference' => FALSE,
                        'required'     => TRUE,
                        'btn_add'      => 'Добавить блок'
                    ], [
                        'edit'     => 'inline',
                        'inline'   => 'table',
                    ])
                ->end()
            ->end()
        ;

        if( $article = $this->getSubject() )
        {
            if( $article->getId() && !$article->getIsSubscriptionSent() )
            {
                $formMapper
                    ->tab('Статья')
                        ->with('Подписка - Отправка писем подписчикам')
                            ->add('sendSubscription', 'checkbox', [
                                'mapped'   => FALSE,
                                'required' => FALSE,
                                'label'    => "Отправить письма подписчикам",
                            ])
                        ->end()
                    ->end()
                ;
            }
        }
    }

    public function getFormTheme()
    {
        return array_merge(
            parent::getFormTheme(),
            array('ApplicationSonataUserBundle:Admin/Form:form_admin_fields.html.twig')
        );
    }

    public function postPersist($article)
    {
        if( !($article instanceof Article) )
            return;

        if( !$this->getForm()->has('sendSubscription') )
            return;

        if( $this->getForm()->get('sendSubscription')->getData() &&
            !$article->getIsSubscriptionSent() ) {
            $this->sendSubscriptionMessage($article);
        }
    }

    public function postUpdate($article)
    {
        if( !($article instanceof Article) )
            return;

        if( !$this->getForm()->has('sendSubscription') )
            return;

        if( $this->getForm()->get('sendSubscription')->getData() &&
            !$article->getIsSubscriptionSent() ) {
            $this->sendSubscriptionMessage($article);
        }
    }

    public function sendSubscriptionMessage(Article $article)
    {
        $_router = $this->getConfigurationPool()->getContainer()
            ->get('router')
        ;

        $message = [
            'title' => $article->getTitle(),
            'text'  => $article->getSubscriptionMessage(),
            'link'  => $_router->generate('articles', [
                'id'   => $article->getId(),
                'slug' => $article->getSlug(),
            ], TRUE),
        ];

        $_subscriptionSender = $this->getConfigurationPool()->getContainer()
            ->get('app.subscription_sender')
        ;

        $_subscriptionSender->sendSubscriptionMessages(
            $message['title'], $message['text'], $message['link']
        );

        $_manager = $this->getConfigurationPool()->getContainer()
            ->get('Doctrine')->getManager()
        ;

        $_manager->persist(
            $article->setIsSubscriptionSent(TRUE)
        );
        $_manager->flush();
    }
}
