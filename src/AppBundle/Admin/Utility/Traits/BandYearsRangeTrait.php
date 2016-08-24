<?php
// src/AppBundle/Admin/Utility/Traits/BandYearsRangeTrait.php
namespace AppBundle\Admin\Utility\Traits;

use DateTime;

trait BandYearsRangeTrait
{
    public function getYearsRangeChoice()
    {
        return $this->combineYearsChoice(1969, (new DateTime())->format('Y'));
    }

    public function getFullYearsRangeChoice()
    {
        return $this->combineYearsChoice(1900, (new DateTime())->format('Y'));
    }

    public function getLifeYearsRangeChoice()
    {
        return $this->combineYearsChoice(100, 1);
    }

    private function combineYearsChoice($from, $to)
    {
        $years = range($from, $to);

        $yearsRange = array_reverse(
            array_combine($years, $years), TRUE
        );

        return $yearsRange;
    }
}
