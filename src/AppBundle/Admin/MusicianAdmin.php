<?php
// src/AppBundle/Admin/MusicianAdmin.php
namespace AppBundle\Admin;

use DateTime, IntlDateFormatter;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Entity\Musician,
    AppBundle\Entity\Tag,
    AppBundle\Admin\Utility\Traits\BandYearsRangeTrait;

class MusicianAdmin extends Admin
{
    use BandYearsRangeTrait;

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Полное имя",
            ])
            ->add('skill', 'text', [
                'label' => "Роль в группе",
            ])
            ->add('dateOfBirth', 'date', [
                'label'    => "Дата рождения",
                'dateType' => IntlDateFormatter::LONG,
            ])
            ->add('yearOfEntry', 'number', [
                'label' => "Год вступления в группу",
            ])
            // ->add('getTagOrDefault', NULL, [
            //     'label' => "Тэг",
            // ])
            ->add('isMainCast', 'boolean', [
                'label' => "В основном составе",
            ])
            ->add('isActive', 'boolean', [
                'label' => "Состоит в группе",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $yearsRange = $this->getYearsRangeChoice();

        if( $musician = $this->getSubject() ) {
            $photoRequired   = ( $musician->getPhotoName() ) ? FALSE : TRUE;
            $photoHelpOption = ( $photoPath = $musician->getPhotoPath() )
                ? '<img src="' . $photoPath . '" class="admin-preview" />'
                : FALSE;

            $isMainCast = $musician->getIsMainCast();
        } else {
            $photoRequired   = TRUE;
            $photoHelpOption = FALSE;

            $isMainCast = FALSE;
        }

        $formMapper
            ->tab('Музыкант')
                ->with('Музыкант - Локализованные данные')
                    ->add('translations', 'a2lix_translations_gedmo', [
                        'label'              => FALSE,
                        'translatable_class' => 'AppBundle\Entity\Musician',
                        'required'           => TRUE,
                        'fields' => [
                            'title' => [
                                'locale_options' => [
                                    'ru' => [
                                        'required' => TRUE,
                                        'disabled' => $isMainCast,
                                        'label'    => "Имя и фамилия",
                                    ],
                                    'en' => [
                                        'required' => $isMainCast,
                                        'disabled' => $isMainCast,
                                        'label'    => "Full name",
                                    ],
                                ],
                            ],
                            'skill' => [
                                'locale_options' => [
                                    'ru' => [
                                        'required' => TRUE,
                                        'label'    => "Роль в группе",
                                    ],
                                    'en' => [
                                        'required' => $isMainCast,
                                        'label'    => "Role in a band",
                                    ],
                                ],
                            ],
                            'story' => [
                                'locale_options' => [
                                    'ru' => [
                                        'required' => TRUE,
                                        'label'    => "История от музыканта",
                                    ],
                                    'en' => [
                                        'required' => $isMainCast,
                                        'label'    => "Musicians story",
                                    ],
                                ],
                                'attr' => [
                                    'rows' => '5',
                                ],
                            ],
                            'slug' => [
                                'display' => FALSE,
                            ],
                        ],
                    ])
                ->end()
                ->with('Музыкант - Общие данные')
                    ->add('photoFile', 'vich_file', [
                        'label'         => "Фотография",
                        'required'      => $photoRequired,
                        'allow_delete'  => FALSE,
                        'download_link' => FALSE,
                        'help'          => $photoHelpOption,
                        'attr'          => [
                            'style' => 'width: 400px; padding: 5px 0 0 5px;',
                        ],
                    ])
                    ->add('dateOfBirth', 'sonata_type_date_picker', [
                        'label'  => "Дата рождения",
                        'format' => 'dd-MM-yyyy',
                        'attr'   => [
                            'data-date-format' => 'DD-MM-YYYY',
                        ],
                    ])
                    ->add('yearOfEntry', 'choice', [
                        'label'   => "Год вступления в группу",
                        'choices' => $yearsRange,
                    ])
                    ->add('yearOfExit', 'choice', [
                        'required'    => FALSE,
                        'label'       => "Год выхода из группы",
                        'choices'     => $yearsRange,
                        'placeholder' => "состоит в группе по текущее время",
                    ])
                ->end()
                // ->with('Музыкант - Тэг')
                //     ->add('tag', 'entity', [
                //         'required'    => FALSE,
                //         'disabled'    => TRUE,
                //         'label'       => FALSE,
                //         'class'       => 'AppBundle\Entity\Tag',
                //         'placeholder' => Tag::getDefaultTag(),
                //     ])
                // ->end()
            ->end()
        ;

        if( $isMainCast )
        {
            $formMapper
                ->tab('Биография')
                    ->with('Музыкант - биография')
                        ->add('biographies', 'sonata_type_collection', [
                            'label'        => FALSE,
                            'by_reference' => FALSE,
                            'required'     => TRUE,
                            'btn_add'      => 'Добавить блок',
                        ], [
                            'edit'   => 'inline',
                            'inline' => 'table',
                        ])
                    ->end()
                ->end()
                ->tab('Анкета')
                    ->with('Музыкант - анкета')
                        ->add('questionnaires', 'sonata_type_collection', [
                            'label'        => FALSE,
                            'by_reference' => FALSE,
                            'required'     => TRUE,
                            'btn_add'      => 'Добавить блок',
                        ], [
                            'edit'   => 'inline',
                            'inline' => 'table',
                        ])
                    ->end()
                ->end()
            ;
        }
    }

    public function prePersist($musician)
    {
        if( !($musician instanceof Musician) )
            return;

        $this->stripDangerousTags($musician);
    }

    public function preUpdate($musician)
    {
        if( !($musician instanceof Musician) )
            return;

        $this->stripDangerousTags($musician);
    }

    private function stripDangerousTags(Musician $musician)
    {
        foreach( $musician->getBiographies() as $biography )
        {
            $biography->setText(
                strip_tags($biography->getText(), '<p><strong><em><u>')
            );
        }
    }

    public function getFormTheme()
    {
        return array_merge(
            parent::getFormTheme(),
            array('ApplicationSonataUserBundle:Admin/Form:form_admin_fields.html.twig')
        );
    }
}
