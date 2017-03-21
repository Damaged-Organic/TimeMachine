<?php
// src/AppBundle/Admin/RiderAdmin.php
namespace AppBundle\Admin;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Route\RouteCollection;

class RiderAdmin extends Admin
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
            ->addIdentifier('name', 'text', [
                'label' => "Райдер",
            ])
            ->add('link', 'text', [
                'label' => "Ссылка"
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->with('Райдер - Общие данные')
                ->add('name', 'text', [
                    'disabled'  => TRUE,
                    'read_only' => TRUE,
                    'label'     => "Райдер",
                ])
                ->add('link', 'text', [
                    'label' => "Ссылка",
                ])
            ->end()
        ;
    }
}
