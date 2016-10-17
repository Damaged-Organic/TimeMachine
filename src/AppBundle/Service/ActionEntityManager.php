<?php
// src/AppBundle/Service/ActionEntityManager.php
namespace AppBundle\Service;

use Twig_Environment;

use Symfony\Component\HttpFoundation\Request,
    Symfony\Component\HttpFoundation\RequestStack,
    Symfony\Component\Routing\Router,
    Symfony\Component\Translation\TranslatorInterface;

use Vich\UploaderBundle\Templating\Helper\UploaderHelper;

use Liip\ImagineBundle\Controller\ImagineController;

use AppBundle\Entity\Concert,
    AppBundle\Entity\Article,
    AppBundle\Entity\Musician,
    AppBundle\Entity\Album,
    AppBundle\Entity\PhotoAlbum;

class ActionEntityManager
{
    private $_requestStack;

    private $_router;

    private $_translator;

    private $_twigEngine;

    private $_uploaderHelper;

    private $_imagineController;

    public function setRequestStack(RequestStack $requestStack)
    {
        $this->_requestStack = $requestStack;
    }

    public function setRouter(Router $router)
    {
        $this->_router = $router;
    }

    public function setTranslator(TranslatorInterface $translator)
    {
        $this->_translator = $translator;
    }

    public function setTwigEngine(Twig_Environment $twigEngine)
    {
        $this->_twigEngine = $twigEngine;
    }

    public function setUploaderHelper(UploaderHelper $uploaderHelper)
    {
        $this->_uploaderHelper = $uploaderHelper;
    }

    public function setImagineController(ImagineController $imagineController)
    {
        $this->_imagineController = $imagineController;
    }

    /** Helper methods */

    private function getUploadedImage($entity, $mapping, $thumb = FALSE)
    {
        $image = $this->_uploaderHelper->asset($entity, $mapping);

        return ( $thumb ) ? $this->getThumbImage($image, $thumb) : $image;
    }

    private function getThumbImage($image, $thumb)
    {
        $image = $this->_imagineController->filterAction(
            new Request, $image, $thumb
        );

        return $image->headers->get('location');
    }

    private function truncateDescription($description, $length)
    {
        return call_user_func_array(
            $this->_twigEngine->getFilter('truncate')->getCallable(),
            [$this->_twigEngine, $description, $length]
        );
    }

    private function translateCount($count, $key)
    {
        return $this->_translator->transChoice(
            $key, $count, ['%count%' => $count]
        );
    }

    private function translate($key)
    {
        return $this->_translator->trans($key);
    }

    private function getLink($entity, $path)
    {
        return $this->_router->generate($path, [
            'id' => $entity->getId(), 'slug' => $entity->getSlug(),
        ]);
    }

    private function getLocale()
    {
        $request = $this->_requestStack->getCurrentRequest();

        return $request->getLocale();
    }

    /** END Helper methods */

    public function flattenAlbums(array $albums)
    {
        foreach( $albums as $album )
        {
            if( !($album instanceof Album) )
                continue;

            $cover       = $this->getUploadedImage($album, 'coverFile', 'album_cover_thumb');
            $description = $this->truncateDescription($album->getDescription(), 250);
            $songCount   = $this->translateCount($album->getSongsNumber(), 'music.album.songs');
            $linkTitle   = $this->translate('music.album.details');
            $link        = $this->getLink($album, 'music');

            $output[] = [
                'cover'       => $cover,
                'year'        => $album->getYearOfRelease(),
                'title'       => $album->getTitle(),
                'description' => $description,
                'songCount'   => $songCount,
                'linkTitle'   => $linkTitle,
                'link'        => $link,
            ];
        }

        return $output;
    }

    public function flattenConcerts(array $concerts)
    {
        foreach( $concerts as $concert )
        {
            if( !($concert instanceof Concert) )
                continue;

            $photo     = $this->getUploadedImage($concert, 'posterFile', 'affiche_poster_thumb');
            $linkTitle = ( $concert->getTicketsLink() )
                ? $this->translate('affiche.tickets.available')
                : $this->translate('affiche.tickets.not_available')
            ;

            $output[] = [
                "photo"       => $photo,
                "photoTitle"  => $concert->getCity(),
                "location"    => $concert->getCountry() . ", " . $concert->getCity(),
                "street"      => $concert->getPlace(),
                "machineDate" => $concert->getDoorsOpenAt()->format('Y-m-d'),
                "humanDate"   => $concert->getHumanDate($this->getLocale()),
                "title"       => $concert->getTitle(),
                "description" => $concert->getDescription(),
                "linkTitle"   => $linkTitle,
                "link"        => $concert->getTicketsLink(),
            ];
        }

        return $output;
    }

    public function flattenArticles(array $articles)
    {
        foreach( $articles as $article )
        {
            if( !($article instanceof Article) )
                continue;

            $majorArticleBlock = $article->getArticleBlocks()[0];

            $photo     = $this->getUploadedImage($majorArticleBlock, 'imageFile', 'blog_image_thumb');
            $viewCount = $this->translateCount($article->getViews(), 'blog.article.views');
            $linkTitle = $this->translate('blog.article.read_more');
            $link      = $this->getLink($article, 'blog');

            $output[] = [
                'photo'       => $photo,
                'photoTitle'  => $article->getTitle(),
                'machineDate' => $article->getCreatedAt()->format('Y-m-d'),
                'year'        => $article->getCreatedAt()->format('Y'),
                'humanDate'   => $article->getHumanDate(),
                'title'       => $article->getTitle($this->getLocale()),
                'description' => $majorArticleBlock->getTextShort(250),
                'viewCount'   => $viewCount,
                'linkTitle'   => $linkTitle,
                'link'        => $link,
            ];
        }

        return $output;
    }

    public function flattenMusicians(array $musicians)
    {
        foreach( $musicians as $musician )
        {
            if( !($musician instanceof Musician) )
                continue;

            $photo        = $this->getUploadedImage($musician, 'photoFile', 'musician_photo_thumb');
            $yearsInGroup = $this->translateCount($musician->getYearsActive(), 'band.musician.years');
            $description  = $this->truncateDescription($musician->getStory(), 500);
            $linkTitle    = $this->translate('band.musician.read_more');
            $link         = ( $musician->getIsMainCast() )
                ? $this->getLink($musician, 'band')
                : NULL
            ;

            $output[] = [
                "photo"        => $photo,
                "photoTitle"   => $musician->getTitle(),
                "entryYear"    => $musician->getYearOfEntry(),
                "yearsInGroup" => $yearsInGroup,
                "role"         => $musician->getSkill(),
                "title"        => $musician->getTitle(),
                "description"  => $description,
                'linkTitle'    => $linkTitle,
                'link'         => $link,
            ];
        }

        return $output;
    }

    public function flattenPhotoAlbums(array $photoAlbums)
    {
        foreach( $photoAlbums as $photoAlbum )
        {
            if( !($photoAlbum instanceof PhotoAlbum) )
                continue;

            $majorPhoto = $photoAlbum->getCoverPhoto();

            $photo       = $this->getUploadedImage($majorPhoto, 'photoFile', 'photo_album_photo_thumb');
            $photoCount  = $this->translateCount($photoAlbum->getPhotosNumber(), 'gallery.photo.amount');
            $description = $this->truncateDescription($photoAlbum->getDescription(), 500);
            $linkTitle   = $this->translate('gallery.photo.view');
            $link        = $this->getLink($photoAlbum, 'gallery');

            $output[] = [
                'photo'       => $photo,
                'year'        => $photoAlbum->getDateTaken()->format('Y'),
                'machineDate' => $photoAlbum->getDateTaken()->format('Y-m-d'),
                'humanDate'   => $photoAlbum->getHumanDate($this->getLocale()),
                'photoCount'  => $photoCount,
                'title'       => $photoAlbum->getTitle(),
                'description' => $description,
                'linkTitle'   => $linkTitle,
                'link'        => $link,
            ];
        }

        return $output;
    }

    public function emptyPhotoAlbums()
    {
        return $this->_translator->trans('common.empty.photo_album', [], 'responses');
    }
}
