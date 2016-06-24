<?php
// src/AppBundle/DataFixtures/ORM/LoadMetadata.php
namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture,
    Doctrine\Common\DataFixtures\OrderedFixtureInterface,
    Doctrine\Common\Persistence\ObjectManager;

use AppBundle\Entity\Metadata;

class LoadMetadata extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $metadata = (new Metadata)
            ->setRoute("index")
            ->setRobots("index, follow")
            ->setTitle("Главная")
            ->setDescription("");
        $manager->persist($metadata);
        $manager->flush();

        $metadata->setTitle("Home")
            ->setDescription("")
            ->setTranslatableLocale('en');
        $manager->persist($metadata);
        $manager->flush();

        // ---

        $metadata = (new Metadata)
            ->setRoute("affiche")
            ->setRobots("index, follow")
            ->setTitle("Афиша")
            ->setDescription("");
        $manager->persist($metadata);
        $manager->flush();

        $metadata->setTitle("Affiche")
            ->setDescription("")
            ->setTranslatableLocale('en');
        $manager->persist($metadata);
        $manager->flush();

        // ---

        $metadata = (new Metadata)
            ->setRoute("blog")
            ->setRobots("index, follow")
            ->setTitle("Блог")
            ->setDescription("");
        $manager->persist($metadata);
        $manager->flush();

        $metadata->setTitle("Blog")
            ->setDescription("")
            ->setTranslatableLocale('en');
        $manager->persist($metadata);
        $manager->flush();

        // ---

        $metadata = (new Metadata)
            ->setRoute("band")
            ->setRobots("index, follow")
            ->setTitle("Группа")
            ->setDescription("");
        $manager->persist($metadata);
        $manager->flush();

        $metadata->setTitle("Band")
            ->setDescription("")
            ->setTranslatableLocale('en');
        $manager->persist($metadata);
        $manager->flush();

        // ---

        $metadata = (new Metadata)
            ->setRoute("music")
            ->setRobots("index, follow")
            ->setTitle("Музыка")
            ->setDescription("");
        $manager->persist($metadata);
        $manager->flush();

        $metadata->setTitle("Music")
            ->setDescription("")
            ->setTranslatableLocale('en');
        $manager->persist($metadata);
        $manager->flush();

        // ---

        $metadata = (new Metadata)
            ->setRoute("gallery")
            ->setRobots("index, follow")
            ->setTitle("Галерея")
            ->setDescription("");
        $manager->persist($metadata);
        $manager->flush();

        $metadata->setTitle("Gallery")
            ->setDescription("")
            ->setTranslatableLocale('en');
        $manager->persist($metadata);
        $manager->flush();

        // ---

        $metadata = (new Metadata)
            ->setRoute("subscription")
            ->setRobots("index, follow")
            ->setTitle("Подписка")
            ->setDescription("");
        $manager->persist($metadata);
        $manager->flush();

        $metadata->setTitle("Subscription")
            ->setDescription("")
            ->setTranslatableLocale('en');
        $manager->persist($metadata);
        $manager->flush();

        // ---
    }

    public function getOrder()
    {
        return 1;
    }
}
