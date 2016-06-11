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
            ->setTitle("Андрей Макаревич")
            ->setSkill("Вокалист")
            ->setStory("Ей-богу, я не знаю ответа на вопрос, почему так долго вместе остается “Машина Времени”. Дружба-дружбой, но это абсолютно ничего не объясняет. Когда я задумываюсь над этим вопросом, начинает казаться, что наши песни сами требуют, чтобы мы их играли. У нас просто не остается другого выбора - только повиноваться их требованию")
            ->setDateOfBirth(new DateTime('11-12-1953'))
            ->setYearOfEntry('1969')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setPhotoName("")
            ->setPhotoMain("makar.jpg")
            ->setPhotoPart("makar-part.jpg")
            ->setPhotoMenu("makar-menu.jpg")
        ;
        $manager->persist($musician_1);
        $manager->flush();

        $musician_1
            ->setTranslatableLocale('en')
            ->setTitle("Andrey Makarevich")
            ->setSkill("Vocalist")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_1);
        $manager->flush();

        // ---

        $musician_2 = (new Musician)
            ->setTag($this->getReference('tag_kutikov'))
            ->setTitle("Александр Кутиков")
            ->setSkill("Басист")
            ->setStory("Вообще длительность нашей жизни определяем не мы - это такой магический ход камней. Скажем так: в этом есть некоторая божественная составляющая - наверное, из-за этого так долго существует “Машина Времени”, и из-за этого так долго вместе такое количество столь разных, но очень интересных, хороших и талантливых людей")
            ->setDateOfBirth(new DateTime('13-04-1952'))
            ->setYearOfEntry('1979')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setPhotoName("")
            ->setPhotoMain("kytikov.jpg")
            ->setPhotoPart("kytikov-part.jpg")
            ->setPhotoMenu("kytikov-menu.jpg")
        ;
        $manager->persist($musician_2);
        $manager->flush();

        $musician_2
            ->setTranslatableLocale('en')
            ->setTitle("Alexandr Kutikov")
            ->setSkill("Bassist")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_2);
        $manager->flush();

        // ---

        $musician_3 = (new Musician)
            ->setTag($this->getReference('tag_efremov'))
            ->setTitle("Валерий Ефремов")
            ->setSkill("Барабанщик")
            ->setStory("На мой взгляд, “Машина Времени” до сих пор вместе исключительно из-за дружбы, которая сложилась между людьми внутри коллектива. Когда-то я просто спросил у ребят: “Насколько все это серьезно и надолго?”. Мне ответили, что достаточно серьезно и, видимо, надолго. Как оказалось, это была настоящая правда")
            ->setDateOfBirth(new DateTime('25-12-1953'))
            ->setYearOfEntry('1980')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setPhotoName("")
            ->setPhotoMain("efremov.jpg")
            ->setPhotoPart("efremov-part.jpg")
            ->setPhotoMenu("efremov-menu.jpg")
        ;
        $manager->persist($musician_3);
        $manager->flush();

        $musician_3
            ->setTranslatableLocale('en')
            ->setTitle("Valeriy Efremov")
            ->setSkill("Drummer")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_3);
        $manager->flush();

        // ---

        $musician_4 = (new Musician)
            ->setTag($this->getReference('tag_derzhavin'))
            ->setTitle("Андрей Державин")
            ->setSkill("Клавишник")
            ->setStory("Поезд, купе, пять утра...  вдруг появляется строка: «Новая весна тебя убьет». Тут же на трех струнах (остальные еще не натянуты, поскольку концерт завтра) дрын-дрын - возникает мелодия. Потом все уснут, а вечером ее вспомнят и за полчаса-час вырулят хит. Вот тебе и “Машина Времени”: шаманы, колдуны-шаманы")
            ->setDateOfBirth(new DateTime('20-09-1963'))
            ->setYearOfEntry('2000')
            ->setYearOfExit(NULL)
            ->setIsMainCast(TRUE)
            ->setPhotoName("")
            ->setPhotoMain("derjavin.jpg")
            ->setPhotoPart("derjavin-part.jpg")
            ->setPhotoMenu("derjavin-menu.jpg")
        ;
        $manager->persist($musician_4);
        $manager->flush();

        $musician_4
            ->setTranslatableLocale('en')
            ->setTitle("Andrey Derjavin")
            ->setSkill("Keyboardist")
            ->setStory("Lorem ipsum dolor sit amet")
        ;
        $manager->persist($musician_4);
        $manager->flush();

        // ---

        $musician_t = (new Musician)
            ->setTag()
            ->setTitle("Test")
            ->setSkill("Test")
            ->setStory("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, unde tempora earum tenetur veritatis fugiat fuga, nesciunt voluptatibus consectetur consequuntur nemo necessitatibus. Dolores laborum libero eum ipsam soluta, nulla error")
            ->setDateOfBirth(new DateTime('01-01-1960'))
            ->setYearOfEntry('2015')
            ->setYearOfExit('2015')
            ->setIsMainCast(FALSE)
            ->setPhotoName("")
        ;
        $manager->persist($musician_t);
        $manager->flush();

        $musician_t
            ->setTranslatableLocale('en')
            ->setTitle("Test")
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
