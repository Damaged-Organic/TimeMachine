<?php
// src/AppBundle/Admin/ArticleBlockAdmin.php
namespace AppBundle\Admin;

use DateTime;

use Symfony\Component\Validator\Constraints as Assert;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

class ArticleBlockAdmin extends Admin
{
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('id', 'number', [
                'label' => "ID",
            ])
            ->add('youTubeLink', 'text', [
                'label' => "Ссылка на видео YouTube",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        if( $articleBlock = $this->getSubject() ) {
            $imagePath = $articleBlock->getImagePath();

            $imageHelpOption = ( $imagePath )
                ? '<img src="' . $imagePath . '" class="admin-preview">'
                : FALSE;
        } else {
            $imagePath = NULL;

            $imageHelpOption = FALSE;
        }

        $formMapper
            ->add('translations', 'a2lix_translations_gedmo', [
                'label'              => 'Тексты',
                'translatable_class' => 'AppBundle\Entity\ArticleBlock',
                'required'           => TRUE,
                'fields' => [
                    'text' => [
                        'locale_options' => [
                            'ru' => [
                                'required'    => TRUE,
                                'label'       => "Текст",
                                'field_type'  => 'ckeditor',
                                'config_name' => 'base_config',
                                'constraints' => [
                                    new Assert\NotBlank,
                                    new Assert\Length(['max' => 2000]),
                                ],
                            ],
                            'en' => [
                                'required'    => FALSE,
                                'label'       => "Text",
                                'field_type'  => 'ckeditor',
                                'config_name' => 'base_config',
                                'constraints' => [
                                    new Assert\Length(['max' => 2000]),
                                ],
                            ],
                        ],
                    ],
                    'quote' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => FALSE,
                                'label'    => "Цитата",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Quote",
                            ],
                        ],
                        'field_type' => 'textarea',
                        'attr'       => [
                            'rows' => '3',
                        ],
                    ],
                ],
            ])
            ->add('photoPath', 'text', [
                'required'  => FALSE,
                'mapped'    => FALSE,
                'read_only' => TRUE,
                'label'     => "Имя файла",
                'data'      => $imagePath,
                'attr' => [
                    'hidden' => TRUE,
                    'empty'  => TRUE,
                ],
            ])
            ->add('imageFile', 'vich_file', [
                'required'      => FALSE,
                'label'         => "Изображение",
                'allow_delete'  => TRUE,
                'download_link' => TRUE,
                'help'          => $imageHelpOption,
                'attr'          => [
                    'style' => 'min-width: 200px; padding: 5px 0 0 5px;',
                ],
            ])
            ->add('youTubeLink', 'text', [
                'required' => FALSE,
                'label'    => "Ссылка на видео YouTube",
                'attr' => [
                    'style' => 'min-width: 200px;',
                ],
            ])
        ;
    }
}
