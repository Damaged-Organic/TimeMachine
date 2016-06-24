<?php
// src/AppBundle/Form/Type/SubscriberType.php
namespace AppBundle\Form\Type;

use Symfony\Component\Form\AbstractType,
    Symfony\Component\Form\FormBuilderInterface,
    Symfony\Component\OptionsResolver\OptionsResolverInterface,
    Symfony\Component\Translation\TranslatorInterface;

class SubscriberType extends AbstractType
{
    private $_translator;

    public function __construct(TranslatorInterface $translator)
    {
        $this->_translator = $translator;
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add("email", 'email', [
                'required' => FALSE,
                'label'    => "subscriber.email.label",
                'attr'     => [
                    'placeholder'        => "subscriber.email.placeholder",
                    'data-rule-required' => "true",
                    'data-msg-required'  => $this->_translator->trans('subscriber.email.not_blank', [], 'validators'),
                    'data-rule-email'    => "true",
                    'data-msg-email'     => $this->_translator->trans('subscriber.email.valid', [], 'validators'),
                ],
            ])
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults([
            'data_class'         => 'AppBundle\Entity\Subscriber',
            'translation_domain' => 'forms',
        ]);
    }

    public function getName()
    {
        return "subscriberType";
    }
}
