<?php
// src/AppBundle/Admin/AlbumAdmin.php
namespace AppBundle\Admin;

use DateTime;

use Sonata\AdminBundle\Admin\Admin,
    Sonata\AdminBundle\Datagrid\ListMapper,
    Sonata\AdminBundle\Datagrid\DatagridMapper,
    Sonata\AdminBundle\Form\FormMapper;

use AppBundle\Entity\Album;

class AlbumAdmin extends Admin
{
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('id', 'number', [
                'label' => "ID",
            ])
            ->addIdentifier('title', 'text', [
                'label' => "Название",
            ])
            ->add('yearOfRelease', 'number', [
                'label' => "Год выпуска",
            ])
            ->add('getSongsNumber', 'number', [
                'label' => "Количество песен",
            ])
            ->add('isActive', 'boolean', [
                'label' => "Отображается",
            ])
        ;
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $years = range('1969', (new DateTime())->format('Y'));

        $yearsRange = array_reverse(
            array_combine($years, $years), TRUE
        );

        if( $album = $this->getSubject() ) {
            $coverRequired   = ( $album->getCoverName() ) ? FALSE : TRUE;
            $coverHelpOption = ( $coverPath = $album->getCoverPath() )
                ? '<img src="' . $coverPath . '" class="admin-preview" />'
                : FALSE;

            $trackRequired   = ( $album->getTrackName() ) ? FALSE : TRUE;
            $trackHelpOption = ( $trackPath = $album->getTrackPath() )
                ? 'Аудиофайл: <a href="' . $trackPath . '">' . basename($trackPath) . '</a>'
                : FALSE;
        } else {
            $coverRequired   = TRUE;
            $coverHelpOption = FALSE;

            $trackRequired   = TRUE;
        }

        $formMapper
            ->tab('Альбом')
                ->with('Альбом - Локализованные данные')
                    ->add('translations', 'a2lix_translations_gedmo', [
                        'label'              => FALSE,
                        'translatable_class' => 'AppBundle\Entity\Album',
                        'required'           => TRUE,
                        'fields' => [
                            'title' => [
                                'locale_options' => [
                                    'ru' => ['label' => "Название"],
                                    'en' => ['label' => "Title"],
                                ],
                            ],
                            'description' => [
                                'locale_options' => [
                                    'ru' => ['label' => "Описание"],
                                    'en' => ['label' => "Description"],
                                ],
                                'field_type' => 'textarea',
                                'attr'       => [
                                    'rows' => '5',
                                ],
                            ],
                        ],
                    ])
                ->end()
                ->with('Альбом - Общие данные')
                    ->add('coverFile', 'vich_file', [
                        'label'         => "Обложка",
                        'required'      => $coverRequired,
                        'allow_delete'  => FALSE,
                        'download_link' => FALSE,
                        'help'          => $coverHelpOption,
                    ])
                    ->add('trackFile', 'vich_file', [
                        'label'         => "Заглавная песня",
                        'required'      => $trackRequired,
                        'allow_delete'  => FALSE,
                        'download_link' => FALSE,
                        'help'          => $trackHelpOption,
                    ])
                    ->add('yearOfRelease', 'choice', [
                        'label'   => "Год выпуска",
                        'choices' => $yearsRange,
                    ])
                    ->add('iTunesLink', 'text', [
                        'required' => FALSE,
                        'label'    => "Ссылка на iTunes",
                    ])
                    ->add('googlePlayLink', 'text', [
                        'required' => FALSE,
                        'label'    => "Ссылка на Google Play",
                    ])
                    ->add('isActive', 'checkbox', [
                        'required' => FALSE,
                        'label'    => "Отображается",
                    ])
                ->end()
            ->end()
            ->tab('Список песен')
                ->with('Альбом - Песни')
                    ->add('songs', 'sonata_type_collection', [
                        'label'        => FALSE,
                        'by_reference' => FALSE,
                        'required'     => FALSE,
                        'btn_add'      => 'Добавить песню'
                    ], [
                        'edit'     => 'inline',
                        'inline'   => 'table',
                        'sortable' => 'position',
                    ])
                ->end()
            ->end()
        ;
    }
}
