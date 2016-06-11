<?php
// src/AppBundle/Admin/SongAdmin.php
namespace AppBundle\Admin;

use Symfony\Component\Validator\Constraints as Assert;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper,
    Sonata\AdminBundle\Route\RouteCollection;

use Pix\SortableBehaviorBundle\Services\PositionHandler;

class SongAdmin extends Admin
{
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
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Название",
            ])
            ->add('getFormattedSongDuration', 'text', [
                'label' => "Длительность",
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
            ->add('position','hidden', [
                'attr' => [
                    "hidden" => TRUE,
                ]
            ])
            ->add('translations', 'a2lix_translations_gedmo', [
                'label'              => "Тексты",
                'translatable_class' => 'AppBundle\Entity\Song',
                'required'           => TRUE,
                'fields' => [
                    'title' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => TRUE,
                                'label'    => "Название",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Title",
                            ],
                        ],
                    ],
                    'lyrics' => [
                        'locale_options' => [
                            'ru' => [
                                'required' => TRUE,
                                'label'    => "Текст (паттерн для аккордов - [аккорд])",
                            ],
                            'en' => [
                                'required' => FALSE,
                                'label'    => "Text",
                            ],
                        ],
                        'field_type' => 'textarea',
                        'attr'       => [
                            'cols' => '175',
                            'rows' => '2',
                        ],
                    ],
                ],
            ])
            ->add('durationMinutes', 'integer', [
                'label'    => "Длительность (минут)",
                'required' => FALSE,
                'constraints' => [
                    new Assert\Range(['min' => 0, 'max' => 59]),
                ],
            ])
            ->add('durationSeconds', 'integer', [
                'label'    => "Длительность (секунд)",
                'required' => FALSE,
                'constraints' => [
                    new Assert\Range(['min' => 0, 'max' => 59]),
                ],
            ])
        ;
    }
}
