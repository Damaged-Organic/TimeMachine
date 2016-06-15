<?php
// src/AppBundle/Admin/PhotoAlbumAdmin.php
namespace AppBundle\Admin;

use IntlDateFormatter;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Admin\Utility\Traits\BandYearsRangeTrait,
    AppBundle\Entity\Tag,
    AppBundle\Entity\PhotoAlbum;

class PhotoAlbumAdmin extends Admin
{
    use BandYearsRangeTrait;

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Название",
            ])
            ->add('dateTaken', 'date', [
                'label'    => "Дата съемки",
                'dateType' => IntlDateFormatter::LONG,
            ])
            ->add('getTagOrDefault', NULL, [
                'label' => "Тэг",
            ])
            ->add('getPhotosNumber', 'number', [
                'label' => "Количество фотографий",
            ])
            ->add('isActive', 'boolean', [
                'label'    => "Отображается",
                'editable' => TRUE,
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $yearsRange = $this->getYearsRangeChoice();

        $formMapper
            ->tab('Фотоальбом')
                ->with('Фотоальбом - Локализованные данные')
                    ->add('translations', 'a2lix_translations_gedmo', [
                        'label'              => FALSE,
                        'translatable_class' => 'AppBundle\Entity\PhotoAlbum',
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
                            'description' => [
                                'locale_options' => [
                                    'ru' => [
                                        'required' => TRUE,
                                        'label'    => "Описание",
                                    ],
                                    'en' => [
                                        'required' => FALSE,
                                        'label'    => "Description",
                                    ],
                                ],
                                'field_type' => 'textarea',
                                'attr'       => [
                                    'rows' => '5',
                                ],
                            ],
                            'slug' => [
                                'display' => FALSE,
                            ],
                        ],
                    ])
                ->end()
                ->with('Фотоальбом - Общие данные')
                    ->add('dateTaken', 'sonata_type_datetime_picker', [
                        'label'  => "Дата съемки",
                        'format' => 'dd-MM-yyyy',
                        'attr'   => [
                            'data-date-format' => 'DD-MM-YYYY',
                        ],
                    ])
                    ->add('isActive', 'checkbox', [
                        'required' => FALSE,
                        'label'    => "Отображается",
                    ])
                ->end()
                ->with('Фотоальбом - Тэг')
                    ->add('tag', 'entity', [
                        'required'    => FALSE,
                        'label'       => FALSE,
                        'class'       => 'AppBundle\Entity\Tag',
                        'placeholder' => Tag::getDefaultTag(),
                    ])
                ->end()
            ->end()
            ->tab('Список фотографий')
                ->with('Фотоальбом - фотографии')
                    ->add('photos', 'sonata_type_collection', [
                        'label'        => FALSE,
                        'by_reference' => FALSE,
                        'required'     => TRUE,
                        'btn_add'      => 'Добавить фотографию'
                    ], [
                        'edit'     => 'inline',
                        'inline'   => 'table',
                        'sortable' => 'position',
                    ])
                ->end()
            ->end()
        ;
    }

    public function prePersist($photoAlbum)
    {
        if( !($photoAlbum instanceof PhotoAlbum) )
            return;

        $this->setPhotoAlbumCover($photoAlbum);
    }

    public function preUpdate($photoAlbum)
    {
        if( !($photoAlbum instanceof PhotoAlbum) )
            return;

        $this->setPhotoAlbumCover($photoAlbum);
    }

    private function setPhotoAlbumCover(PhotoAlbum $photoAlbum)
    {
        $index = NULL;

        foreach( $photoAlbum->getPhotos() as $key => $photo )
        {
            if( $photo->getIsCover() )
            {
                $index = $key;
                break;
            }
        }

        if( is_null($index) ) {
            foreach( $photoAlbum->getPhotos() as $key => $photo )
            {
                $photo->setIsCover(TRUE);
                break;
            }
        } else {
            foreach( $photoAlbum->getPhotos() as $key => $photo )
            {
                $isCover = ( $key === $index );

                $photo->setIsCover($isCover);
            }
        }
    }

    public function getFormTheme()
    {
        return array_merge(
            parent::getFormTheme(),
            array('ApplicationSonataUserBundle:Admin/Form:form_admin_fields.html.twig')
        );
    }
}
