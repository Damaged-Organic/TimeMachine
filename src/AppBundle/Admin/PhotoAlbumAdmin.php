<?php
// src/AppBundle/Admin/PhotoAlbumAdmin.php
namespace AppBundle\Admin;

use IntlDateFormatter;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use Symfony\Component\Validator\Constraints as Assert;

use AppBundle\Admin\Utility\Traits\BandYearsRangeTrait,
    AppBundle\Entity\Tag,
    AppBundle\Entity\PhotoAlbum;

class PhotoAlbumAdmin extends Admin
{
    use BandYearsRangeTrait;

    protected $datagridValues = [
        '_sort_by'    => 'dateTaken',
        '_sort_order' => 'DESC',
    ];

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Название",
            ])
            ->add('dateTaken', 'date', [
                'label'    => "Дата съемки",
                'dateType' => IntlDateFormatter::LONG,
            ])
            ->add('getPhotosNumber', 'number', [
                'label' => "Количество фотографий",
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
        $yearsRange = $this->getYearsRangeChoice();

        $formMapper
            ->tab('Фотоальбом')
                ->with('Фотоальбом - Локализованные данные')
                    ->add('translations', 'a2lix_translations_gedmo', [
                        'label'              => FALSE,
                        'translatable_class' => 'AppBundle\Entity\PhotoAlbum',
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
                            'description' => [
                                'locale_options' => [
                                    'ru' => [
                                        'required' => TRUE,
                                        'label'    => "Описание",
                                    ],
                                    'en' => [
                                        'required' => FALSE,
                                        'label'    => "Description",
                                    ],
                                ],
                                'field_type' => 'textarea',
                                'attr'       => [
                                    'rows' => '5',
                                ],
                            ],
                            'slug' => [
                                'display' => FALSE,
                            ],
                        ],
                    ])
                ->end()
                ->with('Фотоальбом - Общие данные')
                    ->add('dateTaken', 'sonata_type_datetime_picker', [
                        'label'  => "Дата съемки",
                        'format' => 'dd-MM-yyyy',
                        'attr'   => [
                            'data-date-format' => 'DD-MM-YYYY',
                        ],
                    ])
                    ->add('isActive', 'checkbox', [
                        'required' => FALSE,
                        'label'    => "Отображается",
                    ])
                ->end()
                ->with('Фотоальбом - Тэги')
                    ->add('tags', 'sonata_type_model', [
                        'required'     => FALSE,
                        'label'        => 'Дополнительные тэги',
                        'by_reference' => FALSE,
                        'multiple'     => TRUE,
                        'help'         => 'Персонифицированные тэги для фотоальбома',
                    ])
                ->end()
            ->end()
            ->tab('Список фотографий')
                ->with('Фотоальбом - массовая загрузка')
                    ->add('photos_batch', 'file', [
                        'label'        => 'Выберите фотографии, которые вы хотели бы загрузить:',
                        'mapped'       => FALSE,
                        'required'     => FALSE,
                        'multiple'     => TRUE,
                        'by_reference' => FALSE,
                        'attr'         => [
                            'style' => 'padding: 15px 0 0 15px; height: 55px;',
                        ],
                        'help' => implode('', [
                            '<p>Можно выбрать несколько фотографий одновременно, и они будут добавлены к текущему списку.</p>',
                            '<p>Максимальный размер единовременной загрузки составляет <span style="color:red;">20</span> фотографий общим объемом не более <span style="color:red;">16MB</span></p>'
                        ]),
                    ])
                ->end()
                ->with('Фотоальбом - фотографии')
                    ->add('photos', 'sonata_type_collection', [
                        'label'        => FALSE,
                        'by_reference' => FALSE,
                        'required'     => TRUE,
                        'btn_add'      => 'Добавить фотографию',
                    ], [
                        'edit'     => 'inline',
                        'inline'   => 'table',
                        'sortable' => 'position',
                    ])
                ->end()
            ->end()
        ;

        if( $photoAlbum = $this->getSubject() )
        {
            if( $photoAlbum->getId() && !$photoAlbum->getIsSubscriptionSent() )
            {
                $formMapper
                    ->tab('Фотоальбом')
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

    public function prePersist($photoAlbum)
    {
        if( !($photoAlbum instanceof PhotoAlbum) )
            return;

        $this->setPhotoAlbumCover($photoAlbum);
    }

    public function preUpdate($photoAlbum)
    {
        if( !($photoAlbum instanceof PhotoAlbum) )
            return;

        $this->setPhotoAlbumCover($photoAlbum);
    }

    public function postPersist($photoAlbum)
    {
        if( !($photoAlbum instanceof PhotoAlbum) )
            return;

        if( !$this->getForm()->has('sendSubscription') )
            return;

        if( $this->getForm()->get('sendSubscription')->getData() &&
            !$photoAlbum->getIsSubscriptionSent() ) {
            $this->sendSubscriptionMessage($photoAlbum);
        }
    }

    public function postUpdate($photoAlbum)
    {
        if( !($photoAlbum instanceof PhotoAlbum) )
            return;

        if( !$this->getForm()->has('sendSubscription') )
            return;

        if( $this->getForm()->get('sendSubscription')->getData() &&
            !$photoAlbum->getIsSubscriptionSent() ) {
            $this->sendSubscriptionMessage($photoAlbum);
        }
    }

    private function setPhotoAlbumCover(PhotoAlbum $photoAlbum)
    {
        $index = NULL;

        foreach( $photoAlbum->getPhotos() as $key => $photo )
        {
            if( $photo->getIsCover() )
            {
                $index = $key;
                break;
            }
        }

        if( is_null($index) ) {
            foreach( $photoAlbum->getPhotos() as $key => $photo )
            {
                $photo->setIsCover(TRUE);
                break;
            }
        } else {
            foreach( $photoAlbum->getPhotos() as $key => $photo )
            {
                $isCover = ( $key === $index );

                $photo->setIsCover($isCover);
            }
        }
    }

    public function sendSubscriptionMessage(PhotoAlbum $photoAlbum)
    {
        $_router = $this->getConfigurationPool()->getContainer()
            ->get('router')
        ;

        $message = [
            'title' => $photoAlbum->getTitle(),
            'text'  => $photoAlbum->getSubscriptionMessage(),
            'link'  => $_router->generate('gallery', [
                'id'   => $photoAlbum->getId(),
                'slug' => $photoAlbum->getSlug(),
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
            $photoAlbum->setIsSubscriptionSent(TRUE)
        );
        $_manager->flush();
    }

    public function getFormTheme()
    {
        return array_merge(
            parent::getFormTheme(),
            array('ApplicationSonataUserBundle:Admin/Form:form_admin_fields.html.twig')
        );
    }
}
