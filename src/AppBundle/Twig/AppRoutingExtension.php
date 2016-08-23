<?php
// src/AppBundle/Twig/AppRoutingExtension.php
namespace AppBundle\Twig;

use Symfony\Component\HttpFoundation\RequestStack;

use Symfony\Bridge\Twig\Extension\RoutingExtension,
    Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class AppRoutingExtension extends RoutingExtension
{
    private $generator;
    private $request;

    private $defaultLocale;

    public function __construct(UrlGeneratorInterface $generator, RequestStack $requestStack, $locale)
    {
        $this->generator = $generator;
        $this->request   = $requestStack->getMasterRequest();

        $this->defaultLocale = $locale;
    }

    public function getPath($name, $parameters = array(), $relative = false, $useLocale = false)
    {
        if( !$useLocale ) {
            $name = $this->getDefaultNameIfPossible($name);
        }

        return $this->generator->generate($name, $parameters, $relative ? UrlGeneratorInterface::RELATIVE_PATH : UrlGeneratorInterface::ABSOLUTE_PATH);
    }

    public function getUrl($name, $parameters = array(), $schemeRelative = false, $useLocale = false)
    {
        if( !$useLocale ) {
            $name = $this->getDefaultNameIfPossible($name);
        }

        return $this->generator->generate($name, $parameters, $schemeRelative ? UrlGeneratorInterface::NETWORK_PATH : UrlGeneratorInterface::ABSOLUTE_URL);
    }

    private function getDefaultNameIfPossible($name)
    {
        $defaultName = implode('_', [$name, 'default']);

        $routeExists = $this->generator->getRouteCollection()->get($defaultName);

        $isLocaleDefault = ( $this->defaultLocale === $this->request->getLocale() );

        return ( $routeExists && $isLocaleDefault )
            ? $defaultName
            : $name
        ;
    }
}
