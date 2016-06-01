<?php
// src/AppBundle/Admin/ConcertAdmin.php
namespace AppBundle\Admin;

use IntlDateFormatter;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Entity\Concert;

class ConcertAdmin extends Admin
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
            ->add('country', 'text', [
                'label' => "Страна",
            ])
            ->add('city', 'text', [
                'label' => "Город",
            ])
            ->add('place', 'text', [
                'label' => "Место проведения",
            ])
            ->add('doorsOpenAt', 'datetime', [
                'label'    => "Дата и время проведения",
                'dateType' => IntlDateFormatter::SHORT,
            ])
            ->add('areTicketsAvailable', 'boolean', [
                'label' => "Билеты в наличии",
            ])
            ->add('isActive', 'boolean', [
                'label'    => "Отображается",
                'editable' => TRUE,
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        if( $concert = $this->getSubject() ) {
            $posterRequired   = ( $concert->getPosterName() ) ? FALSE : TRUE;
            $posterHelpOption = ( $posterPath = $concert->getPosterPath() )
                ? '<img src="' . $posterPath . '" class="admin-preview" />'
                : FALSE;
        } else {
            $posterRequired   = TRUE;
            $posterHelpOption = FALSE;
        }

        $formMapper
            ->with('Событие - Локализованные данные')
                ->add('translations', 'a2lix_translations_gedmo', [
                    'label'              => FALSE,
                    'translatable_class' => 'AppBundle\Entity\Concert',
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
                        'country' => [
                            'locale_options' => [
                                'ru' => [
                                    'required' => TRUE,
                                    'label'    => "Страна",
                                ],
                                'en' => [
                                    'required' => FALSE,
                                    'label'    => "Country",
                                ],
                            ],
                        ],
                        'city' => [
                            'locale_options' => [
                                'ru' => [
                                    'required' => TRUE,
                                    'label'    => "Город",
                                ],
                                'en' => [
                                    'required' => FALSE,
                                    'label'    => "City",
                                ],
                            ],
                        ],
                        'place' => [
                            'locale_options' => [
                                'ru' => [
                                    'required' => TRUE,
                                    'label'    => "Место проведения",
                                ],
                                'en' => [
                                    'required' => FALSE,
                                    'label'    => "Place",
                                ],
                            ],
                        ],
                    ],
                ])
            ->end()
            ->with('Событие - Общие данные')
                ->add('posterFile', 'vich_file', [
                    'label'         => "Постер",
                    'required'      => $posterRequired,
                    'allow_delete'  => FALSE,
                    'download_link' => FALSE,
                    'help'          => $posterHelpOption,
                    'attr'          => [
                        'style' => 'width: 400px; padding: 5px 0 0 5px;',
                    ],
                ])
                ->add('doorsOpenAt', 'sonata_type_datetime_picker', [
                    'label'  => "Дата и время проведения",
                    'format' => 'dd-MM-yyyy HH:mm',
                    'attr'   => [
                        'data-date-format' => 'DD-MM-YYYY HH:mm',
                    ],
                ])
                ->add('ticketsLink', 'text', [
                    'required' => FALSE,
                    'label'    => "Ссылка на покупку билетов",
                ])
                ->add('isActive', 'checkbox', [
                    'required' => FALSE,
                    'label'    => "Отображается",
                ])
            ->end()
        ;
    }
}
