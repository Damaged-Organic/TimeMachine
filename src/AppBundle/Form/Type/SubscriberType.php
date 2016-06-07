<?php
// src/AppBundle/Form/Type/SubscriberType.php
namespace AppBundle\Form\Type;

use Symfony\Component\Form\AbstractType,
    Symfony\Component\Form\FormBuilderInterface,
    Symfony\Component\OptionsResolver\OptionsResolverInterface;

class SubscriberType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add("email", 'email', [
                'label' => "subscriber.email.label",
                'attr'  => [
                    'placeholder' => "subscriber.email.placeholder",
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
