<?php
// src/AppBundle/Controller/Admin/MusicianAdminController.php
namespace AppBundle\Controller\Admin;

use Exception;

use Symfony\Component\HttpFoundation\RedirectResponse;

use Sonata\AdminBundle\Controller\CRUDController as Controller,
    Sonata\AdminBundle\Datagrid\ProxyQueryInterface;

class MusicianAdminController extends Controller
{
    public function deleteAction($id)
    {
        if( FALSE === $this->admin->isGranted('DELETE') )
            throw new AccessDeniedException();

        $id = $this->get('request')->get($this->admin->getIdParameter());

        $musician = $this->admin->getObject($id);

        if( !$musician )
            throw new NotFoundHttpException(sprintf('unable to find the Musician with id : %s', $id));

        // Restrict deletion of main cast musician
        if( $musician->getIsMainCast() )
        {
            $this->addFlash('sonata_flash_error', 'Нельзя удалять музыканта из основого состава группы!');

            return $this->redirectTo($musician);
        }

        return parent::deleteAction($id);
    }

    public function batchActionDelete(ProxyQueryInterface $query)
    {
        if( FALSE === $this->admin->isGranted('DELETE') )
            throw new AccessDeniedException();

        $result = $query->execute();

        if( count($result) )
        {
            try {
                foreach ($result as $musician)
                {
                    // Restrict deletion of main cast musicians
                    if( $musician->getIsMainCast() )
                        throw new Exception;

                    $this->admin->delete($musician, FALSE);
                }

                $this->addFlash('sonata_flash_success', 'flash_batch_delete_success');
            } catch( Exception $e ) {
                $this->addFlash('sonata_flash_error', 'Нельзя удалять музыканта из основого состава группы!');
            }
        }

        return new RedirectResponse($this->admin->generateUrl(
            'list',
            array('filter' => $this->admin->getFilterParameters())
        ));
    }
}
