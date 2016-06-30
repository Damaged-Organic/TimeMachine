<?php
// src/AppBundle/Admin/BiographyAdmin.php
namespace AppBundle\Admin;

use Symfony\Component\Validator\Constraints as Assert;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Admin\Utility\Traits\BandYearsRangeTrait;

class BiographyAdmin extends Admin
{
    use BandYearsRangeTrait;

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Название блока",
            ])
            ->add('year', 'number', [
                'label' => "Год события",
            ])
            ->add('event', 'text', [
                'label' => "Событие",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $yearsRange = $this->getFullYearsRangeChoice();

        if( $biography = $this->getSubject() ) {
            $photoPath = $biography->getPhotoPath();

            $photoRequired   = ( $biography->getPhotoName() ) ? FALSE : TRUE;
            $photoHelpOption = ( $photoPath )
                ? '<img src="' . $photoPath . '" class="admin-preview">'
                : FALSE;
        } else {
            $photoPath = NULL;

            $photoRequired   = TRUE;
            $photoHelpOption = FALSE;
        }

        $formMapper
            ->add('translations', 'a2lix_translations_gedmo', [
                'label'              => 'Тексты',
                'translatable_class' => 'AppBundle\Entity\Biography',
                'required'           => TRUE,
                'fields' => [
                    'event' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => FALSE,
                                'label'    => "Событие",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Event",
                            ],
                        ],
                    ],
                    'title' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => TRUE,
                                'label'    => "Название блока",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Block title",
                            ],
                        ],
                    ],
                    'text' => [
                        'locale_options' => [
                            'ru' => [
                                'required'    => TRUE,
                                'label'       => "Текст блока",
                                'field_type'  => 'ckeditor',
                                'config_name' => 'minimal_config',
                                'constraints' => [
                                    new Assert\NotBlank,
                                    new Assert\Length(['max' => 2000]),
                                ],
                            ],
                            'en' => [
                                'required'    => FALSE,
                                'label'       => "Block text",
                                'field_type'  => 'ckeditor',
                                'config_name' => 'minimal_config',
                                'constraints' => [
                                    new Assert\Length(['max' => 2000]),
                                ],
                            ],
                        ],
                        'attr' => [
                            'cols' => '175',
                            'rows' => '10',
                        ],
                    ],
                ],
            ])
            ->add('year', 'choice', [
                'required'    => FALSE,
                'label'       => "Год события",
                'choices'     => $yearsRange,
                'placeholder' => "не указано",
                'attr'     => [
                    'style' => 'max-width: 130px;',
                ],
            ])
            ->add('photoPath', 'text', [
                'required'  => FALSE,
                'mapped'    => FALSE,
                'read_only' => TRUE,
                'label'     => "Имя файла",
                'data'      => $photoPath,
                'attr' => [
                    'hidden' => TRUE,
                ],
            ])
            ->add('photoFile', 'vich_file', [
                'required'      => $photoRequired,
                'label'         => "Фотография",
                'allow_delete'  => FALSE,
                'download_link' => FALSE,
                'help'          => $photoHelpOption,
                'attr'          => [
                    'style' => 'width: 200px; padding: 5px 0 0 5px;',
                ],
            ])
        ;
    }
}
