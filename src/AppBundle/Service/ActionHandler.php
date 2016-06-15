<?php
// src/AppBundle/Service/ActionHandler.php
namespace AppBundle\Service;

use Symfony\Component\HttpFoundation\Request;

use AppBundle\Service\Utility\Interfaces\ActionParametersInterface;

class ActionHandler implements ActionParametersInterface
{
    private function isNumeric($parameter)
    {
        return ( !is_null($parameter) && is_numeric($parameter) );
    }

    private function validateLiftParameter($liftParameter)
    {
        return ( $this->isNumeric($liftParameter) ) ? $liftParameter : FALSE;
    }

    private function validateTagParameter($tagParameter)
    {
        return ( $this->isNumeric($tagParameter) ) ? $tagParameter : FALSE;
    }

    private function validateYearParameter($yearParameter)
    {
        return ( $this->isNumeric($yearParameter) ) ? $yearParameter : FALSE;
    }

    private function validateGalleryRequest(Request $request)
    {
        if( !($request->query->has(self::PARAMETER_TAG) && $request->query->has(self::PARAMETER_YEAR)) ) {
            return FALSE;
        } else {
            $tagParameter  = $this->validateTagParameter($request->query->get(self::PARAMETER_TAG));
            $yearParameter = $this->validateYearParameter($request->query->get(self::PARAMETER_YEAR));

            if( $tagParameter === FALSE && $yearParameter === FALSE )
                return FALSE;
        }

        if( !($request->query->has(self::PARAMETER_LIFT)) ) {
            $liftParameter = NULL;
        } else {
            $liftParameter = $this->validateLiftParameter($request->query->get(self::PARAMETER_LIFT));

            if( $liftParameter === FALSE )
                return FALSE;
        }

        return [
            self::PARAMETER_TAG  => $tagParameter,
            self::PARAMETER_YEAR => $yearParameter,
            self::PARAMETER_LIFT => $liftParameter,
        ];
    }

    public function getGalleryRequestParameters(Request $request)
    {
        return $this->validateGalleryRequest($request);
    }

    public function composeGalleryResponseData($requestParameters, $totalCount = NULL, $collection = NULL)
    {
        return [
            'totalCount' => $requestParameters[self::PARAMETER_LIFT],
            'isLast'     => $this->isLast($requestParameters, $totalCount, $collection),
            'data'       => $collection,
        ];
    }

    private function isLast($requestParameters, $totalCount, $collection = NULL)
    {
        if( !$totalCount )
            return TRUE;

        return ( $totalCount == ($requestParameters[self::PARAMETER_LIFT] + count($collection)) );
    }
}
