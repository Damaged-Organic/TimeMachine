<?php
// src/AppBundle/Admin/ArticleBlockAdmin.php
namespace AppBundle\Admin;

use DateTime;

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
                ? '<img src="' . $imagePath . '" class="admin-preview" />'
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
                                'required' => TRUE,
                                'label'    => "Текст",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Text",
                            ],
                        ],
                        'field_type' => 'textarea',
                        'attr'       => [
                            'rows' => '10',
                            'style' => 'min-width: 600px;',
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
                'allow_delete'  => FALSE,
                'download_link' => FALSE,
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
