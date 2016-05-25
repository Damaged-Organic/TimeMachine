<?php
// src/AppBundle/DataFixtures/ORM/LoadMusician.php
namespace AppBundle\DataFixtures\ORM;

use DateTime;

use Doctrine\Common\DataFixtures\AbstractFixture,
    Doctrine\Common\DataFixtures\OrderedFixtureInterface,
    Doctrine\Common\Persistence\ObjectManager;

use AppBundle\Entity\Musician;

class LoadMusician extends AbstractFixture implements OrderedFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $musician_1 = (new Musician)
            ->setTag($this->getReference('tag_makarevich'))
            ->setFullName("Андрей Макаревич")
            ->setSkill("Вокалист")
            ->setStory("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, unde tempora earum tenetur veritatis fugiat fuga, nesciunt voluptatibus consectetur consequuntur nemo necessitatibus. Dolores laborum libero eum ipsam soluta, nulla error")
            ->setDateOfBirth(new DateTime('11-12-1953'))
            ->setYearOfEntry('1969')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setVichObjectName("")
        ;
        $manager->persist($musician_1);
        $manager->flush();

        $musician_1
            ->setTranslatableLocale('en')
            ->setFullName("Andrey Makarevich")
            ->setSkill("Vocalist")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_1);
        $manager->flush();

        // ---

        $musician_2 = (new Musician)
            ->setTag($this->getReference('tag_kutikov'))
            ->setFullName("Александр Кутиков")
            ->setSkill("Басист")
            ->setStory("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, unde tempora earum tenetur veritatis fugiat fuga, nesciunt voluptatibus consectetur consequuntur nemo necessitatibus. Dolores laborum libero eum ipsam soluta, nulla error")
            ->setDateOfBirth(new DateTime('13-04-1952'))
            ->setYearOfEntry('1979')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setVichObjectName("")
        ;
        $manager->persist($musician_2);
        $manager->flush();

        $musician_2
            ->setTranslatableLocale('en')
            ->setFullName("Alexandr Kutikov")
            ->setSkill("Bassist")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_2);
        $manager->flush();

        // ---

        $musician_3 = (new Musician)
            ->setTag($this->getReference('tag_efremov'))
            ->setFullName("Валерий Ефремов")
            ->setSkill("Барабанщик")
            ->setStory("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, unde tempora earum tenetur veritatis fugiat fuga, nesciunt voluptatibus consectetur consequuntur nemo necessitatibus. Dolores laborum libero eum ipsam soluta, nulla error")
            ->setDateOfBirth(new DateTime('25-12-1953'))
            ->setYearOfEntry('1980')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setVichObjectName("")
        ;
        $manager->persist($musician_3);
        $manager->flush();

        $musician_3
            ->setTranslatableLocale('en')
            ->setFullName("Valeriy Efremov")
            ->setSkill("Drummer")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_3);
        $manager->flush();

        // ---

        $musician_4 = (new Musician)
            ->setTag($this->getReference('tag_derzhavin'))
            ->setFullName("Андрей Державин")
            ->setSkill("Клавишник")
            ->setStory("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, unde tempora earum tenetur veritatis fugiat fuga, nesciunt voluptatibus consectetur consequuntur nemo necessitatibus. Dolores laborum libero eum ipsam soluta, nulla error")
            ->setDateOfBirth(new DateTime('20-09-1963'))
            ->setYearOfEntry('2000')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setVichObjectName("")
        ;
        $manager->persist($musician_4);
        $manager->flush();

        $musician_4
            ->setTranslatableLocale('en')
            ->setFullName("Andrey Derjavin")
            ->setSkill("Keyboardist")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_4);
        $manager->flush();

        // ---

        $musician_t = (new Musician)
            ->setTag()
            ->setFullName("Test")
            ->setSkill("Test")
            ->setStory("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, unde tempora earum tenetur veritatis fugiat fuga, nesciunt voluptatibus consectetur consequuntur nemo necessitatibus. Dolores laborum libero eum ipsam soluta, nulla error")
            ->setDateOfBirth(new DateTime('01-01-1960'))
            ->setYearOfEntry('2015')
            ->setYearOfExit('2015')
            ->setIsMainCast(FALSE)
            ->setVichObjectName("")
        ;
        $manager->persist($musician_t);
        $manager->flush();

        $musician_t
            ->setTranslatableLocale('en')
            ->setFullName("Test")
            ->setSkill("Test")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_t);
        $manager->flush();

        // ---
    }

    public function getOrder()
    {
        return 2;
    }
}
