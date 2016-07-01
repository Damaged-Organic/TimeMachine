<?php
// src/AppBundle/Admin/ContactAdmin.php
namespace AppBundle\Admin;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Route\RouteCollection;

class ContactAdmin extends Admin
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
            ->addIdentifier('role', 'text', [
                'label' => "Должность",
            ])
            ->add('person', 'text', [
                'label' => "Фамилия и имя",
            ])
            ->add('phone', 'text', [
                'label' => "Телефон",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->with('Контакт - Локализованные данные')
                ->add('translations', 'a2lix_translations_gedmo', [
                    'label'              => FALSE,
                    'translatable_class' => 'AppBundle\Entity\Contact',
                    'required'           => TRUE,
                    'fields' => [
                        'role' => [
                            'locale_options' => [
                                'ru' => [
                                    'required' => TRUE,
                                    'label'    => "Должность",
                                ],
                                'en' => [
                                    'required' => TRUE,
                                    'label'    => "Role",
                                ],
                            ],
                        ],
                        'person' => [
                            'locale_options' => [
                                'ru' => [
                                    'required' => FALSE,
                                    'label'    => "Фамилия и имя",
                                ],
                                'en' => [
                                    'required' => FALSE,
                                    'label'    => "Last and first name",
                                ],
                            ],
                            'required' => FALSE,
                        ],
                    ],
                ])
            ->end()
            ->with('Контакт - Общие данные')
                ->add('phone', 'text', [
                    'label' => "Телефон",
                    'attr'  => [
                        'class' => 'phone-masked',
                    ]
                ])
                ->add('email', 'email', [
                    'required' => FALSE,
                    'label'    => "E-mail",
                ])
            ->end()
        ;
    }


}
