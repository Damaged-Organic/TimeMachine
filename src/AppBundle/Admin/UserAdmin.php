<?php
// src/AppBundle/Admin/UserAdmin.php
namespace AppBundle\Admin;

use Sonata\UserBundle\Admin\Model\UserAdmin as SonataUserAdmin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Show\ShowMapper,
    Sonata\AdminBundle\Route\RouteCollection;

class UserAdmin extends SonataUserAdmin
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
            ->addIdentifier('username')
            ->add('email')
            ->add('enabled', NULL, [
                'editable' => TRUE,
            ])
            ->add('locked', NULL, [
                'editable' => TRUE,
            ])
            ->add('createdAt')
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
    }

    protected function configureShowFields(ShowMapper $showMapper)
    {
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->with('General')
                ->add('username')
                ->add('email', NULL, [
                    'label' => "Электронный адрес",
                ])
                ->add('plainPassword', 'text', [
                    'required' => ( !$this->getSubject() || is_null($this->getSubject()->getId()) ),
                    'label'    => "Открытый пароль (введите для изменения)",
                ])
            ->end()
        ;
    }
}
