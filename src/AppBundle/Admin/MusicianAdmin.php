<?php
// src/AppBundle/Admin/MusicianAdmin.php
namespace AppBundle\Admin;

use DateTime, IntlDateFormatter;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Entity\Tag,
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
            ->add('getTagOrDefault', NULL, [
                'label' => "Тэг",
            ])
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
        } else {
            $photoRequired   = TRUE;
            $photoHelpOption = FALSE;
        }

        $formMapper
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
                                    'label'    => "Имя и фамилия",
                                ],
                                'en' => [
                                    'required' => TRUE,
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
                                    'required' => TRUE,
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
                                    'required' => TRUE,
                                    'label'    => "Musicians story",
                                ],
                            ],
                            'attr' => [
                                'rows' => '5',
                            ],
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
            ->with('Музыкант - Тэг')
                ->add('tag', 'entity', [
                    'required'    => FALSE,
                    'disabled'    => TRUE,
                    'label'       => FALSE,
                    'class'       => 'AppBundle\Entity\Tag',
                    'placeholder' => Tag::getDefaultTag(),
                ])
            ->end()
        ;
    }
}
