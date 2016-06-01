<?php
// src/AppBundle/Admin/SubscriberAdmin.php
namespace AppBundle\Admin;

use IntlDateFormatter;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Route\RouteCollection;

class SubscriberAdmin extends Admin
{
    protected function configureRoutes(RouteCollection $collection)
    {
        $collection
            ->remove('create')
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('email', 'email', [
                'label' => "Електронный адрес",
            ])
            ->add('subscribedAt', 'datetime', [
                'label'    => "Дата и время подписки",
                'dateType' => IntlDateFormatter::SHORT,
            ])
            ->add('isActive', 'boolean', [
                'label'    => "Получает уведомления",
                'editable' => TRUE,
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->with('Подписчик - Общие данные')
                ->add('email', 'email', [
                    'disabled'  => TRUE,
                    'read_only' => TRUE,
                    'label'     => "Електронный адрес",
                ])
                ->add('subscribedAt', 'sonata_type_datetime_picker', [
                    'disabled'  => TRUE,
                    'read_only' => TRUE,
                    'label'  => "Дата и время подписки",
                    'format' => 'dd-MM-yyyy HH:mm',
                    'attr'   => [
                        'data-date-format' => 'DD-MM-YYYY HH:mm',
                    ],
                ])
                ->add('isActive', 'checkbox', [
                    'required' => FALSE,
                    'label'    => "Получает уведомления",
                ])
            ->end()
        ;
    }
}
