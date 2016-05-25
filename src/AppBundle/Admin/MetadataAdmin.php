<?php
// src/AppBundle/Admin/MetadataAdmin.php
namespace AppBundle\Admin;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Route\RouteCollection;

class MetadataAdmin extends Admin
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
                'label' => "Заголовок страницы",
            ])
            ->add('route', 'text', [
                'label' => "Роут (Системная настройка)",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->with('Метаданные - Локализованные данные')
                ->add('translations', 'a2lix_translations_gedmo', [
                    'label'              => "Управление локализациями",
                    'translatable_class' => 'AppBundle\Entity\Metadata',
                    'required'           => TRUE,
                    'fields' => [
                        'title' => [
                            'locale_options' => [
                                'ru' => ['label' => "Заголовок страницы"],
                                'en' => ['label' => "Page title"],
                            ],
                        ],
                        'description' => [
                            'locale_options' => [
                                'ru' => ['label' => "Описание страницы"],
                                'en' => ['label' => "Page description"],
                            ],
                            'required' => FALSE,
                        ],
                    ],
                ])
            ->end()
            ->with('Метаданные - Общие данные')
                ->add('route', 'text', [
                    'label'    => "Роут (Системная настройка)",
                    'disabled' => TRUE,
                ])
                ->add('robots', 'text', [
                    'label'    => "Метаданные для поисковых ботов",
                    'required' => FALSE,
                ])
            ->end()
        ;
    }
}
