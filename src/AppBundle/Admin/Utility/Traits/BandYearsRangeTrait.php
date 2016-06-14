<?php
// src/AppBundle/Admin/Utility/Traits/BandYearsRangeTrait.php
namespace AppBundle\Admin\Utility\Traits;

use DateTime;

trait BandYearsRangeTrait
{
    public function getYearsRangeChoice()
    {
        $years = range('1969', (new DateTime())->format('Y'));

        $yearsRange = array_reverse(
            array_combine($years, $years), TRUE
        );

        return $yearsRange;
    }

    public function getFullYearsRangeChoice()
    {
        $years = range('1900', (new DateTime())->format('Y'));

        $yearsRange = array_reverse(
            array_combine($years, $years), TRUE
        );

        return $yearsRange;
    }
}
