<?php
// src/AppBundle/Entity/Utility/Traits/ErrorHandlerTrait.php
namespace AppBundle\Entity\Utility\Traits;

trait ErrorHandlerTrait
{
    private $error;

    public function setError($error)
    {
        $this->error = $error;

        return $this;
    }

    public function getError()
    {
        return $this->error;
    }
}
