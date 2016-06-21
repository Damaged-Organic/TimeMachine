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

    private function validateSongParameter($songParameter)
    {
        return ( $this->isNumeric($songParameter) ) ? $songParameter : FALSE;
    }

    private function isLast($requestParameters, $totalCount, $collection = NULL)
    {
        if( !$totalCount )
            return TRUE;

        return ( $totalCount == ($requestParameters[self::PARAMETER_LIFT] + count($collection)) );
    }

    public function getGalleryRequestParameters(Request $request)
    {
        return $this->validateGalleryRequest($request);
    }

    private function validateGalleryRequest(Request $request)
    {
        $tagParameter = ( $request->query->has(self::PARAMETER_TAG) )
            ? $this->validateTagParameter($request->query->get(self::PARAMETER_TAG))
            : FALSE;

        if( $tagParameter === FALSE )
            return FALSE;

        $yearParameter = ( $request->query->has(self::PARAMETER_YEAR) )
            ? $this->validateYearParameter($request->query->get(self::PARAMETER_YEAR))
            : FALSE;

        if( $yearParameter === FALSE )
            return FALSE;

        $liftParameter = ( $request->query->has(self::PARAMETER_LIFT) )
            ? $this->validateLiftParameter($request->query->get(self::PARAMETER_LIFT))
            : FALSE;

        return [
            self::PARAMETER_TAG  => $tagParameter,
            self::PARAMETER_YEAR => $yearParameter,
            self::PARAMETER_LIFT => $liftParameter,
        ];
    }

    public function composeGalleryResponseData($requestParameters, $totalCount = NULL, $collection = NULL)
    {
        return [
            'totalCount' => $requestParameters[self::PARAMETER_LIFT],
            'data'       => $collection,
            'isLast'     => $this->isLast($requestParameters, $totalCount, $collection),
        ];
    }

    public function composeEmptyGalleryResponseData($message)
    {
        $data = ['noContent' => $message];

        return [
            'data' => $data,
        ];
    }

    public function getLiftRequestParameters(Request $request)
    {
        return $this->validateLiftRequest($request);
    }

    private function validateLiftRequest(Request $request)
    {
        $liftParameter = ( $request->query->has(self::PARAMETER_LIFT) )
            ? $this->validateLiftParameter($request->query->get(self::PARAMETER_LIFT))
            : FALSE;

        if( $liftParameter === FALSE )
            return FALSE;

        return [
            self::PARAMETER_LIFT => $liftParameter,
        ];
    }

    public function composeLiftResponseData($requestParameters, $totalCount = NULL, $collection = NULL)
    {
        return [
            'current'  => $requestParameters[self::PARAMETER_LIFT],
            'data'     => $collection,
            'isLast'   => $this->isLast($requestParameters, $totalCount, $collection),
        ];
    }

    public function getSongRequestParameters(Request $request)
    {
        return $this->validateSongRequest($request);
    }

    private function validateSongRequest(Request $request)
    {
        $songParameter = ( $request->query->has(self::PARAMETER_SONG) )
            ? $this->validateSongParameter($request->query->get(self::PARAMETER_SONG))
            : FALSE;

        if( $songParameter === FALSE )
            return FALSE;

        return $songParameter;
    }

    public function composeSongResponseData($lyrics)
    {
        $lyrics = preg_replace('/\h+/', ' ', $lyrics);

        return [
            'data' => $lyrics,
        ];
    }
}
