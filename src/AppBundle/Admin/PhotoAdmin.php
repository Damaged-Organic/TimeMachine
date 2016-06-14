<?php
// src/AppBundle/Admin/PhotoAdmin.php
namespace AppBundle\Admin;

use Symfony\Component\DependencyInjection\ContainerInterface,
    Symfony\Component\Validator\Constraints as Assert;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Route\RouteCollection;

use Pix\SortableBehaviorBundle\Services\PositionHandler;

use AppBundle\Admin\Utility\Traits\BandYearsRangeTrait,
    AppBundle\Entity\Tag;

class PhotoAdmin extends Admin
{
    use BandYearsRangeTrait;

    public $last_position = 1;

    private $positionService;

    public function setPositionService(PositionHandler $positionHandler)
    {
        $this->positionService = $positionHandler;
    }

    protected $datagridValues = [
        '_page'       => 1,
        '_sort_order' => 'ASC',
        '_sort_by'    => 'position',
    ];

    protected function configureRoutes(RouteCollection $collection)
    {
        $collection
            ->add('move', $this->getRouterIdParameter().'/move/{position}')
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $this->last_position = $this->positionService->getLastPosition(
            $this->getRoot()->getClass()
        );

        $listMapper
            ->addIdentifier('id', 'number', [
                'label' => "ID",
            ])
            ->add('title', 'text', [
                'label' => "Название",
            ])
            ->add('yearTaken', 'number', [
                'label' => "Дата съемки",
            ])
            ->add('tag', 'entity', [
                'label' => "Тэг",
            ])
            ->add('_action', 'actions', [
                'actions' => [
                    'move' => [
                        'template' => 'PixSortableBehaviorBundle:Default:_sort.html.twig',
                    ],
                ],
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $yearsRange = $this->getYearsRangeChoice();

        if( $photo = $this->getSubject() ) {
            $photoPath = $photo->getPhotoPath();

            $photoRequired   = ( $photo->getPhotoName() ) ? FALSE : TRUE;
            $photoHelpOption = ( $photoPath )
                ? '<img src="' . $photoPath . '" class="admin-preview" />'
                : FALSE;
        } else {
            $photoPath = NULL;

            $photoRequired   = TRUE;
            $photoHelpOption = FALSE;
        }

        // Sonata mega-kludge to get parent value from embeded admin for new child entities
        if( $this->getSubject() ) {
            $tag       = ( $photo->getTag() ) ?: NULL;
            $yearTaken = $this->getSubject()->getYearTaken();

            $session = $this->getRequest()->getSession();

            if( !$yearTaken )
                $yearTaken = $session->get('photo_admin_year_taken');

            if( !$tag )
                $tag = $session->get('photo_admin_tag');
        } else {
            $tag       = $this->getParentFieldDescription()->getAdmin()->getSubject()->getTag();
            $yearTaken = $this->getParentFieldDescription()->getAdmin()->getSubject()->getYearTaken();

            $session = $this->getRequest()->getSession();

            if( $yearTaken ) {
                $session->set('photo_admin_year_taken', $yearTaken);
            } else {
                $yearTaken = $session->get('photo_admin_year_taken');
            }

            if( $tag ) {
                $session->set('photo_admin_tag', $tag);
            } else {
                $tag = $session->get('photo_admin_tag');
            }
        }

        if( $tag ) {
            // Entity from session becomes detached, so merging it back to avoid exception
            $tag = $this->getConfigurationPool()->getContainer()->get('doctrine.orm.entity_manager')->merge($tag);
        }

        $formMapper
            ->add('getPositionNumber', 'number', [
                'required'  => FALSE,
                'read_only' => TRUE,
                'disabled'  => TRUE,
                'label'     => "№",
                'attr' => [
                    'style' => 'width: 40px; text-align: center;',
                ],
            ])
            ->add('isCover', 'checkbox', [
                'required' => FALSE,
                'label'    => "Обложка альбома",
            ])
            ->add('position','hidden', [
                'attr' => [
                    "hidden" => TRUE,
                ]
            ])
            ->add('translations', 'a2lix_translations_gedmo', [
                'label'              => "Тексты",
                'translatable_class' => 'AppBundle\Entity\Photo',
                'required'           => FALSE,
                'fields' => [
                    'title' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => FALSE,
                                'label'    => "Название",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Title",
                            ],
                        ],
                        'attr' => [
                            'style' => 'min-width: 300px;',
                        ],
                    ],
                ],
            ])
            ->add('photoPath', 'text', [
                'required'  => FALSE,
                'mapped'    => FALSE,
                'read_only' => TRUE,
                'label'     => "Имя файла",
                'data'      => $photoPath,
                'attr' => [
                    'hidden' => TRUE,
                ],
            ])
            ->add('photoFile', 'vich_file', [
                'required'      => $photoRequired,
                'label'         => "Фотография",
                'allow_delete'  => FALSE,
                'download_link' => FALSE,
                'help'          => $photoHelpOption,
                'attr'          => [
                    'style' => 'width: 200px; padding: 5px 0 0 5px;',
                ],
            ])
            ->add('yearTaken', 'choice', [
                'label'   => "Год съемки",
                'choices' => $yearsRange,
                'data'    => $yearTaken,
            ])
            ->add('tag', 'entity', [
                'required'    => FALSE,
                'label'       => "Тэг",
                'class'       => 'AppBundle\Entity\Tag',
                'placeholder' => Tag::getDefaultTag(),
                'data'        => $tag,
            ])
        ;
    }
}
