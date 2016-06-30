<?php
// src/MenuBundle/DataFixtures/ORM/LoadMenu.php
namespace MenuBundle\DataFixtures;

use Doctrine\Common\DataFixtures\AbstractFixture,
    Doctrine\Common\DataFixtures\OrderedFixtureInterface,
    Doctrine\Common\Persistence\ObjectManager;

use MenuBundle\Entity\Menu;

class LoadMenu extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $menuItem = (new Menu)
            ->setTitle("Главная")
            ->setRoute("index");
        $manager->persist($menuItem);
        $manager->flush();

        $menuItem->setTitle("Home")
            ->setTranslatableLocale('en');
        $manager->persist($menuItem);
        $manager->flush();

        // ---

        $menuItem = (new Menu)
            ->setTitle("Афиша")
            ->setRoute("affiche");
        $manager->persist($menuItem);
        $manager->flush();

        $menuItem->setTitle("Affiche")
            ->setTranslatableLocale('en');
        $manager->persist($menuItem);
        $manager->flush();

        // ---

        $menuItem = (new Menu)
            ->setTitle("Блог")
            ->setRoute("blog");
        $manager->persist($menuItem);
        $manager->flush();

        $menuItem->setTitle("Blog")
            ->setTranslatableLocale('en');
        $manager->persist($menuItem);
        $manager->flush();

        // ---

        $menuItem = (new Menu)
            ->setTitle("Группа")
            ->setRoute("band");
        $manager->persist($menuItem);
        $manager->flush();

        $menuItem->setTitle("Band")
            ->setTranslatableLocale('en');
        $manager->persist($menuItem);
        $manager->flush();

        // ---

        $menuItem = (new Menu)
            ->setTitle("Музыка")
            ->setRoute("music");
        $manager->persist($menuItem);
        $manager->flush();

        $menuItem->setTitle("Music")
            ->setTranslatableLocale('en');
        $manager->persist($menuItem);
        $manager->flush();

        // ---

        $menuItem = (new Menu)
            ->setTitle("Галерея")
            ->setRoute("gallery");
        $manager->persist($menuItem);
        $manager->flush();

        $menuItem->setTitle("Gallery")
            ->setTranslatableLocale('en');
        $manager->persist($menuItem);
        $manager->flush();

        // ---

        $menuItem = (new Menu)
            ->setTitle("Контакты")
            ->setRoute("contacts");
        $manager->persist($menuItem);
        $manager->flush();

        $menuItem->setTitle("Contacts")
            ->setTranslatableLocale('en');
        $manager->persist($menuItem);
        $manager->flush();
    }

    public function getOrder()
    {
        return 1;
    }
}
