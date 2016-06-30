<?php
// src/AppBundle/Controller/Admin/ArticleAdminController.php
namespace AppBundle\Controller\Admin;

use Exception;

use Symfony\Component\HttpFoundation\RedirectResponse;

use Sonata\AdminBundle\Controller\CRUDController as Controller,
    Sonata\AdminBundle\Datagrid\ProxyQueryInterface;

class ArticleAdminController extends Controller
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

            // Restrict article without preview image
            $articleBlocks = $object->getArticleBlocks();

            if( count($articleBlocks) == 0 ) {
                $this->addFlash(
                    'sonata_flash_error',
                    'Должен присутствовать хотя бы один блок статьи!'
                );

                $isFormValid = false;
            } elseif( $articleBlocks[0]->getImageFile() == FALSE ) {
                $this->addFlash(
                    'sonata_flash_error',
                    'Для первого блока статьи должно быть загружено изображение!'
                );

                $isFormValid = false;
            } else {
                // persist if the form was valid and if in preview mode the preview was approved
                if ($isFormValid && (!$this->isInPreviewMode() || $this->isPreviewApproved())) {
                    if (false === $this->admin->isGranted('CREATE', $object)) {
                        throw new \AccessDeniedException();
                    }

                    try {
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

            // Restrict article without preview image
            $articleBlocks = $object->getArticleBlocks();

            if( count($articleBlocks) == 0 ) {
                $this->addFlash(
                    'sonata_flash_error',
                    'Должен присутствовать хотя бы один блок статьи!'
                );

                $isFormValid = false;
            } else {
                // persist if the form was valid and if in preview mode the preview was approved
                if ($isFormValid && (!$this->isInPreviewMode() || $this->isPreviewApproved())) {
                    try {
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
}
