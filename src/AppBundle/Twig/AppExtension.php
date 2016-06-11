<?php
// src/AppBundle/Twig/AppExtension.php
namespace AppBundle\Twig;

use Exception;

use DateTime;

use Twig_Extension,
    Twig_SimpleFilter;

class AppExtension extends Twig_Extension
{
    public function getFilters()
    {
        return array(
            new Twig_SimpleFilter('timeline', array($this, 'timelineFilter')),
        );
    }

    public function timelineFilter($alphaYear)
    {
        $omegaYear = (new DateTime)->format('Y');

        if( $alphaYear == $omegaYear )
            $timeline = $alphaYear;

        if( $alphaYear < $omegaYear )
            $timeline = "{$alphaYear} - {$omegaYear}";

        if( $alphaYear > $omegaYear )
            throw new Exception('Alpha year cannot be greater than Omega year');

        return $timeline;
    }

    public function getName()
    {
        return 'app_extension';
    }
}
