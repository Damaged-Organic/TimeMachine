<?php
// src/AppBundle/Controller/FormController.php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method,
    Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Bundle\FrameworkBundle\Controller\Controller,
    Symfony\Component\HttpFoundation\Request,
    Symfony\Component\HttpFoundation\Response,
    Symfony\Component\HttpFoundation\JsonResponse;

use AppBundle\Controller\Utility\FormErrorHandlerTrait;

use AppBundle\Model\Feedback,
    AppBundle\Form\Type\FeedbackType;

class FormController extends Controller
{
    use FormErrorHandlerTrait;
}
