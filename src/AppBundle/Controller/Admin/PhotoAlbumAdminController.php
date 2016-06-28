<?php
// src/AppBundle/Controller/Admin/PhotoAlbumAdminController.php
namespace AppBundle\Controller\Admin;

use DateTime;

use Symfony\Component\HttpFoundation\RedirectResponse,
    Symfony\Component\HttpFoundation\File\UploadedFile;

use Sonata\AdminBundle\Controller\CRUDController as Controller,
    Sonata\AdminBundle\Datagrid\ProxyQueryInterface;

use AppBundle\Entity\Photo;

class PhotoAlbumAdminController extends Controller
{
    public function createAction()
    {
        // the key used to lookup the template
        $templateKey = 'edit';

        if (false === $this->admin->isGranted('CREATE')) {
            throw new \AccessDeniedException();
        }

        $object = $this->admin->getNewInstance();

        $this->admin->setSubject($object);

        /** @var $form \Symfony\Component\Form\Form */
        $form = $this->admin->getForm();
        $form->setData($object);

        if ($this->getRestMethod() == 'POST') {
            $form->submit($this->get('request'));

            $isFormValid = $form->isValid();

            // Restrict photo album without photos
            $photos      = $object->getPhotos();
            $photosBatch = $form->get('photos_batch')->getData();

            if( count($photos) == 0 && count($photosBatch) == 0 ) {
                $this->addFlash(
                    'sonata_flash_error',
                    'В фотоальбоме должна быть хотя бы одна фотография!'
                );

                $isFormValid = false;
            } else {
                // persist if the form was valid and if in preview mode the preview was approved
                if ($isFormValid && (!$this->isInPreviewMode() || $this->isPreviewApproved())) {
                    if (false === $this->admin->isGranted('CREATE', $object)) {
                        throw new \AccessDeniedException();
                    }

                    try {
                        $this->handlePhotosBatchUpload($photosBatch, $object);

                        $object = $this->admin->create($object);

                        if ($this->isXmlHttpRequest()) {
                            return $this->renderJson(array(
                                'result'   => 'ok',
                                'objectId' => $this->admin->getNormalizedIdentifier($object),
                            ));
                        }

                        $this->addFlash(
                            'sonata_flash_success',
                            $this->admin->trans(
                                'flash_create_success',
                                array('%name%' => $this->escapeHtml($this->admin->toString($object))),
                                'SonataAdminBundle'
                            )
                        );

                        // redirect to edit mode
                        return $this->redirectTo($object);
                    } catch (\ModelManagerException $e) {
                        $this->logModelManagerException($e);

                        $isFormValid = false;
                    }
                }

                // show an error message if the form failed validation
                if (!$isFormValid) {
                    if (!$this->isXmlHttpRequest()) {
                        $this->addFlash(
                            'sonata_flash_error',
                            $this->admin->trans(
                                'flash_create_error',
                                array('%name%' => $this->escapeHtml($this->admin->toString($object))),
                                'SonataAdminBundle'
                            )
                        );
                    }
                } elseif ($this->isPreviewRequested()) {
                    // pick the preview template if the form was valid and preview was requested
                    $templateKey = 'preview';
                    $this->admin->getShow();
                }
            }
        }

        $view = $form->createView();

        // set the theme for the current Admin Form
        $this->get('twig')->getExtension('form')->renderer->setTheme($view, $this->admin->getFormTheme());

        return $this->render($this->admin->getTemplate($templateKey), array(
            'action' => 'create',
            'form'   => $view,
            'object' => $object,
        ));
    }

    public function editAction($id = null)
    {
        // the key used to lookup the template
        $templateKey = 'edit';

        $id = $this->get('request')->get($this->admin->getIdParameter());
        $object = $this->admin->getObject($id);

        if (!$object) {
            throw new \NotFoundHttpException(sprintf('unable to find the object with id : %s', $id));
        }

        if (false === $this->admin->isGranted('EDIT', $object)) {
            throw new \AccessDeniedException();
        }

        $this->admin->setSubject($object);

        /** @var $form \Symfony\Component\Form\Form */
        $form = $this->admin->getForm();
        $form->setData($object);

        if ($this->getRestMethod() == 'POST') {
            $form->submit($this->get('request'));

            $isFormValid = $form->isValid();

            // Restrict photo album without photos
            $photos      = $object->getPhotos();
            $photosBatch = $form->get('photos_batch')->getData();

            if( count($photos) == 0 && count($photosBatch) == 0 ) {
                $this->addFlash(
                    'sonata_flash_error',
                    'В фотоальбоме должна быть хотя бы одна фотография!'
                );

                $isFormValid = false;
            } else {
                // persist if the form was valid and if in preview mode the preview was approved
                if ($isFormValid && (!$this->isInPreviewMode() || $this->isPreviewApproved())) {
                    try {
                        $this->handlePhotosBatchUpload($photosBatch, $object);

                        $object = $this->admin->update($object);

                        if ($this->isXmlHttpRequest()) {
                            return $this->renderJson(array(
                                'result'    => 'ok',
                                'objectId'  => $this->admin->getNormalizedIdentifier($object),
                            ));
                        }

                        $this->addFlash(
                            'sonata_flash_success',
                            $this->admin->trans(
                                'flash_edit_success',
                                array('%name%' => $this->escapeHtml($this->admin->toString($object))),
                                'SonataAdminBundle'
                            )
                        );

                        // redirect to edit mode
                        return $this->redirectTo($object);
                    } catch (\ModelManagerException $e) {
                        $this->logModelManagerException($e);

                        $isFormValid = false;
                    }
                }

                // show an error message if the form failed validation
                if (!$isFormValid) {
                    if (!$this->isXmlHttpRequest()) {
                        $this->addFlash(
                            'sonata_flash_error',
                            $this->admin->trans(
                                'flash_edit_error',
                                array('%name%' => $this->escapeHtml($this->admin->toString($object))),
                                'SonataAdminBundle'
                            )
                        );
                    }
                } elseif ($this->isPreviewRequested()) {
                    // enable the preview template if the form was valid and preview was requested
                    $templateKey = 'preview';
                    $this->admin->getShow();
                }
            }
        }

        $view = $form->createView();

        // set the theme for the current Admin Form
        $this->get('twig')->getExtension('form')->renderer->setTheme($view, $this->admin->getFormTheme());

        return $this->render($this->admin->getTemplate($templateKey), array(
            'action' => 'edit',
            'form'   => $view,
            'object' => $object,
        ));
    }

    private function handlePhotosBatchUpload($photosBatch, $object)
    {
        foreach($photosBatch as $file)
        {
            if( $file === NULL || !($file instanceof UploadedFile) )
                continue;

            $photo = (new Photo)
                ->setPhotoFile($file)
                ->setPhotoAlbum($object)
                ->setDateTaken(new DateTime)
            ;

            $errors = $this->get('validator')->validate($photo);

            if( count($errors) > 0 )
                continue;

            $this->getDoctrine()->getManager()->persist($photo);
        }
    }
}
