<?php
// src/AppBundle/DataFixtures/ORM/LoadContact.php
namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\AbstractFixture,
    Doctrine\Common\DataFixtures\OrderedFixtureInterface,
    Doctrine\Common\Persistence\ObjectManager;

use AppBundle\Entity\Contact;

class LoadContact extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $contact = (new Contact)
            ->setRole("Администратор")
            ->setPerson("Земцов Алексей")
            ->setPhone("+7 (916) 777-50-25")
            ->setEmail(NULL);
        $manager->persist($contact);
        $manager->flush();

        $contact
            ->setRole("Administrator")
            ->setPerson("Zemcov Aleksej")
            ->setTranslatableLocale('en');
        $manager->persist($contact);
        $manager->flush();

        // ---

        $contact = (new Contact)
            ->setRole("Пресс-секретарь")
            ->setPerson("Чернин Антон")
            ->setPhone("+7 (916) 363-05-48")
            ->setEmail("ablackey@mail.ru");
        $manager->persist($contact);
        $manager->flush();

        $contact
            ->setRole("Press secretary")
            ->setPerson("Chernin Anton")
            ->setTranslatableLocale('en');
        $manager->persist($contact);
        $manager->flush();

        // ---

        $contact = (new Contact)
            ->setRole("Звук")
            ->setPerson("Куслапу Сергей")
            ->setPhone("+7 (916) 313-89-41")
            ->setEmail(NULL);
        $manager->persist($contact);
        $manager->flush();

        $contact
            ->setRole("Sound")
            ->setPerson("Kuslapu Sergej")
            ->setTranslatableLocale('en');
        $manager->persist($contact);
        $manager->flush();

        // ---

        $contact = (new Contact)
            ->setRole("Свет")
            ->setPerson("Бубнов Игорь")
            ->setPhone("+7 (926) 238-68-96")
            ->setEmail(NULL);
        $manager->persist($contact);
        $manager->flush();

        $contact
            ->setRole("Light")
            ->setPerson("Bubnov Igor")
            ->setTranslatableLocale('en');
        $manager->persist($contact);
        $manager->flush();
    }

    public function getOrder()
    {
        return 1;
    }
}
