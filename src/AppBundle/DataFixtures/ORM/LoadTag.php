<?php
// src/AppBundle/DataFixtures/ORM/LoadTag.php
namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture,
    Doctrine\Common\DataFixtures\OrderedFixtureInterface,
    Doctrine\Common\Persistence\ObjectManager;

use AppBundle\Entity\Tag;

class LoadTag extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $tag_makarevich = (new Tag)
            ->setTitle("Макаревич")
            ->setName("makarevich")
            ->setPriority(1)
        ;
        $manager->persist($tag_makarevich);
        $manager->flush();

        $tag_makarevich
            ->setTranslatableLocale('en')
            ->setTitle("Makarevich")
        ;
        $manager->persist($tag_makarevich);
        $manager->flush();

        // ---

        $tag_kutikov = (new Tag)
            ->setTitle("Кутиков")
            ->setName("kutikov")
            ->setPriority(2)
        ;
        $manager->persist($tag_kutikov);
        $manager->flush();

        $tag_kutikov
            ->setTranslatableLocale('en')
            ->setTitle("Kutikov")
        ;
        $manager->persist($tag_kutikov);
        $manager->flush();

        // ---

        $tag_efremov = (new Tag)
            ->setTitle("Ефремов")
            ->setName("efremov")
            ->setPriority(3)
        ;
        $manager->persist($tag_efremov);
        $manager->flush();

        $tag_efremov
            ->setTranslatableLocale('en')
            ->setTitle("Efremov")
        ;
        $manager->persist($tag_efremov);
        $manager->flush();

        // ---

        $tag_derzhavin = (new Tag)
            ->setTitle("Державин")
            ->setName("derzhavin")
            ->setPriority(4)
        ;
        $manager->persist($tag_derzhavin);
        $manager->flush();

        $tag_derzhavin
            ->setTranslatableLocale('en')
            ->setTitle("Derzhavin")
        ;
        $manager->persist($tag_derzhavin);
        $manager->flush();

        // ---

        $this->addReference('tag_makarevich', $tag_makarevich);
        $this->addReference('tag_kutikov', $tag_kutikov);
        $this->addReference('tag_efremov', $tag_efremov);
        $this->addReference('tag_derzhavin', $tag_derzhavin);
    }

    public function getOrder()
    {
        return 1;
    }
}
