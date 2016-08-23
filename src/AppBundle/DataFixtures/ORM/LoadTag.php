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
            ->setTitle("Концерты")
            ->setName("concerts")
            ->setPriority(1)
        ;
        $manager->persist($tag_makarevich);
        $manager->flush();

        $tag_makarevich
            ->setTranslatableLocale('en')
            ->setTitle("Concerts")
        ;
        $manager->persist($tag_makarevich);
        $manager->flush();

        // ---

        $tag_kutikov = (new Tag)
            ->setTitle("Фотосессии")
            ->setName("photoshoots")
            ->setPriority(2)
        ;
        $manager->persist($tag_kutikov);
        $manager->flush();

        $tag_kutikov
            ->setTranslatableLocale('en')
            ->setTitle("Photoshoots")
        ;
        $manager->persist($tag_kutikov);
        $manager->flush();

        // ---

        $tag_efremov = (new Tag)
            ->setTitle("Рабочие будни")
            ->setName("dailyroutine")
            ->setPriority(3)
        ;
        $manager->persist($tag_efremov);
        $manager->flush();

        $tag_efremov
            ->setTranslatableLocale('en')
            ->setTitle("Daily routine")
        ;
        $manager->persist($tag_efremov);
        $manager->flush();

        // ---

        $tag_derzhavin = (new Tag)
            ->setTitle("Вдохновение")
            ->setName("inspiration")
            ->setPriority(4)
        ;
        $manager->persist($tag_derzhavin);
        $manager->flush();

        $tag_derzhavin
            ->setTranslatableLocale('en')
            ->setTitle("Inspiration")
        ;
        $manager->persist($tag_derzhavin);
        $manager->flush();

        // ---

        // $this->addReference('tag_makarevich', $tag_makarevich);
        // $this->addReference('tag_kutikov', $tag_kutikov);
        // $this->addReference('tag_efremov', $tag_efremov);
        // $this->addReference('tag_derzhavin', $tag_derzhavin);
    }

    public function getOrder()
    {
        return 1;
    }
}
