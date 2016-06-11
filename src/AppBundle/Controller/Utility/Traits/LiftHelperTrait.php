<?php
// src/AppBundle/Controller/Utility/Traits/LiftHelperTrait.php
namespace AppBundle\Controller\Utility\Traits;

trait LiftHelperTrait
{
    public function isLiftParameterValid($liftParameter)
    {
        if( empty($liftParameter) )
            return FALSE;

        if( !is_numeric($liftParameter) )
            return FALSE;

        return TRUE;
    }

    public function composeResponseData($current, $isLast, $collection = NULL)
    {
        return [
            'isLast'  => $isLast,
            'current' => $current,
            'data'    => $collection,
        ];
    }

    public function isLast($liftParameter, $totalCount, array $collection)
    {
        return ( $totalCount == ($liftParameter + count($collection)) );
    }
}
