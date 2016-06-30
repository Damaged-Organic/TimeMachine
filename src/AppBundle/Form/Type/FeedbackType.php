<?php
// src/AppBundle/Form/Type/FeedbackType.php
namespace AppBundle\Form\Type;

use Symfony\Component\Form\AbstractType,
    Symfony\Component\Form\FormBuilderInterface,
    Symfony\Component\OptionsResolver\OptionsResolverInterface,
    Symfony\Component\Translation\TranslatorInterface;

class FeedbackType extends AbstractType
{
    private $_translator;

    public function __construct(TranslatorInterface $translator)
    {
        $this->_translator = $translator;
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add("name", 'text', [
                'attr'  => [
                    'placeholder'         => "feedback.name.placeholder",
                    'data-rule-required'  => "true",
                    'data-msg-required'   => $this->_translator->trans('feedback.name.not_blank', [], 'validators'),
                    'data-rule-minlength' => 2,
                    'data-msg-minlength'  => $this->_translator->trans('feedback.name.length.min', [], 'validators'),
                    'data-rule-maxlength' => 200,
                    'data-msg-maxlength'  => $this->_translator->trans('feedback.name.length.max', [], 'validators'),
                ],
            ])
            ->add("email", 'email', [
                'attr'  => [
                    'placeholder'        => "feedback.email.placeholder",
                    'data-rule-required' => "true",
                    'data-msg-required'  => $this->_translator->trans('feedback.email.not_blank', [], 'validators'),
                    'data-rule-email'    => "true",
                    'data-msg-email'     => $this->_translator->trans('feedback.email.valid', [], 'validators'),
                ],
            ])
            ->add("subject", 'text', [
                'required' => FALSE,
                'attr'  => [
                    'placeholder'         => "feedback.subject.placeholder",
                    'data-rule-minlength' => 2,
                    'data-msg-minlength'  => $this->_translator->trans('feedback.subject.length.min', [], 'validators'),
                    'data-rule-maxlength' => 200,
                    'data-msg-maxlength'  => $this->_translator->trans('feedback.subject.length.max', [], 'validators'),
                ],

            ])
            ->add("message", 'textarea', [
                'attr'  => [
                    'placeholder'         => "feedback.message.placeholder",
                    'data-rule-required'  => "true",
                    'data-msg-required'   => $this->_translator->trans('feedback.message.not_blank', [], 'validators'),
                    'data-rule-minlength' => 5,
                    'data-msg-minlength'  => $this->_translator->trans('feedback.message.length.min', [], 'validators'),
                    'data-rule-maxlength' => 1500,
                    'data-msg-maxlength'  => $this->_translator->trans('feedback.message.length.max', [], 'validators'),
                ],
            ])
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults([
            'data_class'         => 'AppBundle\Model\Feedback',
            'translation_domain' => 'forms'
        ]);
    }

    public function getName()
    {
        return "feedbackType";
    }
}
