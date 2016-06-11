<?php
// src/AppBundle/Controller/ComponentController.php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request;

class ComponentController extends Controller
{
    public function localeAction(Request $request, $_locale)
    {
        $switchLocale = ( $_locale == 'ru' ) ? 'en' : 'ru';

        return $this->render('AppBundle:Component/Header:locale.html.twig', [
            'route'        => $this->get('app.metadata')->getCurrentRoute(),
            'switchLocale' => $switchLocale,
        ]);
    }

    public function menuAction(Request $request, $_locale)
    {
        $_manager = $this->getDoctrine()->getManager();

        $menu = $_manager->getRepository('MenuBundle:Menu')->findAll();

        return $this->render('AppBundle:Component/Header:menu.html.twig', [
            'route' => $this->get('app.metadata')->getCurrentRoute(),
            'menu'  => $menu,
        ]);
    }

    public function socialAction(Request $request, $_locale)
    {
        $social = $this->getParameter('social');

        $social = [
            'facebook' => $social['facebook'],
            'twitter'  => $social['twitter'],
            'youtube'  => $social['youtube'],
        ];

        return $this->render('AppBundle:Component/Header:social.html.twig', [
            'social' => $social,
        ]);
    }

    public function bandAction(Request $request, $_locale)
    {
        $_manager = $this->getDoctrine()->getManager();

        $musicians = $_manager->getRepository('AppBundle:Musician')
            ->findMainCast()
        ;

        return $this->render('AppBundle:Component/Header:band.html.twig', [
            'musicians' => $musicians,
        ]);
    }
}
