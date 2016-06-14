<?php
// src/AppBundle/Admin/QuestionaryAdmin.php
namespace AppBundle\Admin;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

class QuestionaryAdmin extends Admin
{
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('question', 'text', [
                'label' => "Вопрос",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('translations', 'a2lix_translations_gedmo', [
                'label'              => 'Тексты',
                'translatable_class' => 'AppBundle\Entity\Questionary',
                'required'           => TRUE,
                'fields' => [
                    'question' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => TRUE,
                                'label'    => "Вопрос",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Question",
                            ],
                        ],
                    ],
                    'answer' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => TRUE,
                                'label'    => "Ответ",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Answer",
                            ],
                        ],
                        'attr' => [
                            'cols' => '175',
                            'rows' => '3',
                        ],
                    ],
                ],
            ])
        ;
    }
}
