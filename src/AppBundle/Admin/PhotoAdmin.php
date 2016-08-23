<?php
// src/AppBundle/Admin/PhotoAdmin.php
namespace AppBundle\Admin;

use IntlDateFormatter;

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
            ->add('dateTaken', 'date', [
                'label'    => "Дата съемки",
                'dateType' => IntlDateFormatter::LONG,
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
            $tags      = ( count($photo->getTags()) > 0 ) ? $photo->getTags() : NULL;
            $dateTaken = $this->getSubject()->getDateTaken();

            $session = $this->getRequest()->getSession();

            if( !$dateTaken )
                $dateTaken = $session->get('photo_admin_date_taken');

            if( !$tags )
                $tags = $session->get('photo_admin_tags');
        } else {
            $tags      = $this->getParentFieldDescription()->getAdmin()->getSubject()->getTags();
            $dateTaken = $this->getParentFieldDescription()->getAdmin()->getSubject()->getDateTaken();

            $session = $this->getRequest()->getSession();

            if( $dateTaken ) {
                $session->set('photo_admin_date_taken', $dateTaken);
            } else {
                $dateTaken = $session->get('photo_admin_date_taken');
            }

            if( count($tags) > 0 ) {
                $session->set('photo_admin_tags', $tags);
            } else {
                $tags = $session->get('photo_admin_tags');
            }
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
            ->add('dateTaken', 'sonata_type_datetime_picker', [
                'label'  => "Дата съемки",
                'format' => 'dd-MM-yyyy',
                'attr'   => [
                    'data-date-format' => 'DD-MM-YYYY',
                ],
                'dp_default_date' => $dateTaken,
                'data'            => $dateTaken,
            ])
            // ->add('tags', 'sonata_type_model', [
            //     'required'     => FALSE,
            //     'label'        => 'Дополнительные тэги',
            //     'by_reference' => FALSE,
            //     'multiple'     => TRUE,
            //     'help'         => 'Персонифицированные тэги для фотоальбома',
            //     'data'         => $tags,
            // ])
        ;
    }
}
