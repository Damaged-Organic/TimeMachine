<?php
// src/AppBundle/Admin/MusicianAdmin.php
namespace AppBundle\Admin;

use IntlDateFormatter;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Entity\Musician,
    AppBundle\Entity\Tag;

class MusicianAdmin extends Admin
{
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('fullName', 'text', [
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
        $yearsRange = array_reverse(array_combine(
            Musician::getYearsActiveRange(),
            Musician::getYearsActiveRange()
        ), TRUE);

        if( $musician = $this->getSubject() ) {
            $vichObjectRequired   = ( $musician->getVichObjectName() ) ? FALSE : TRUE;
            $vichObjectHelpOption = ( $vichObjectPath = $musician->getVichObjectPath() )
                ? '<img src="'.$vichObjectPath.'" class="admin-preview" />'
                : FALSE;
        } else {
            $vichObjectRequired   = TRUE;
            $vichObjectHelpOption = FALSE;
        }

        $formMapper
            ->with('Музыкант - Локализованные данные')
                ->add('translations', 'a2lix_translations_gedmo', [
                    'label'              => FALSE,
                    'translatable_class' => 'AppBundle\Entity\Musician',
                    'required'           => TRUE,
                    'fields' => [
                        'fullName' => [
                            'locale_options' => [
                                'ru' => ['label' => "Имя и фамилия"],
                                'en' => ['label' => "Full name"],
                            ],
                        ],
                        'skill' => [
                            'locale_options' => [
                                'ru' => ['label' => "Роль в группе"],
                                'en' => ['label' => "Role in a band"],
                            ],
                        ],
                        'story' => [
                            'locale_options' => [
                                'ru' => ['label' => "История от музыканта"],
                                'en' => ['label' => "Musicians story"],
                            ],
                            'attr'  => [
                                'rows' => '5',
                            ],
                        ],
                    ],
                ])
            ->end()
            ->with('Музыкант - Общие данные')
                ->add('vichObjectFile', 'vich_file', [
                    'label'         => "Фотография",
                    'required'      => $vichObjectRequired,
                    'allow_delete'  => FALSE,
                    'download_link' => FALSE,
                    'help'          => $vichObjectHelpOption
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
