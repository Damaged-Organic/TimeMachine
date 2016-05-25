<?php
// src/AppBundle/Admin/TagAdmin.php
namespace AppBundle\Admin;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Route\RouteCollection;

class TagAdmin extends Admin
{
    protected function configureRoutes(RouteCollection $collection)
    {
        $collection
            ->remove('create')
            ->remove('delete')
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Название тэга",
            ])
            ->add('name', 'text', [
                'label' => "Имя тэга",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->with('Тэг - Локализованные данные')
                ->add('translations', 'a2lix_translations_gedmo', [
                    'label'              => FALSE,
                    'translatable_class' => 'AppBundle\Entity\Tag',
                    'required'           => TRUE,
                    'fields' => [
                        'title' => [
                            'locale_options' => [
                                'ru' => [
                                    'label' => "Название тэга",
                                ],
                                'en' => [
                                    'label' => "Tag title",
                                ]
                            ],
                        ],
                    ]
                ])
            ->end()
            ->with('Тэг - Общие данные')
                ->add('name', 'text', [
                    'label'    => "Имя тэга",
                    'disabled' => TRUE,
                ])
            ->end()
        ;
    }
}
