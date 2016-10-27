-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2016 at 11:58 AM
-- Server version: 5.5.52-0+deb8u1-log
-- PHP Version: 5.6.26-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `time_machine`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `yearOfRelease` int(11) NOT NULL,
  `iTunesLink` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googlePlayLink` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `coverName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trackName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `description`, `yearOfRelease`, `iTunesLink`, `googlePlayLink`, `isActive`, `slug`, `coverName`, `trackName`, `updatedAt`) VALUES
(1, 'ВЫ', 'Все  было сделано за осень и зиму 2015-2016: когда нам запрещали очередной концерт, мы воспринимали это как повод провести лишний день в студии. Название "ВЫ" - это благодарность поклонникам, которые остаются с группой и в лучшие, и в худшие времена.', 2016, 'https://itunes.apple.com/ru/album/vy/id1107197698', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%92%D0%AB?id=Bkyvj3mjrjcjrt3ba6rskq3vbkq', 1, 'vy', '576eb4fa1a31e.jpg', '576eb81b710ec.mp3', '2016-06-25 19:58:03'),
(2, 'Крысы', 'Интернет-сингл. Эти три песни мы начали разбирать еще при Маргулисе, но окончательно сделали после его ухода. К нам присоединился Игорь Хомич, и все сразу встало на свои места.', 2012, 'https://itunes.apple.com/ru/album/krysy-single/id658775185', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9A%D1%80%D1%8B%D1%81%D1%8B?id=Byj5mbwut2gmd6xhfw35ym3wecu', 1, 'krysy', '576ebff3447e1.jpg', '576ec07f84400.mp3', '2016-06-25 20:33:51'),
(3, 'Неизданное Ч. 1', 'Никогда не издавался отдельно - только как часть первого бокс-сета "Машины Времени". Здесь мы забрались в самую глубину архивов группы и откопали записи 1969-1976 годов, включая наш поход в студию программы "Музыкальный киоск".', 1996, 'https://itunes.apple.com/ru/album/neizdannoe-c.-1/id658247957', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9D%D0%B5%D0%B8%D0%B7%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B5_%D0%A7_1?id=Bpldppmtqtlqxxpnjllgcvuq65m', 1, 'nieizdannoie_ch_1', '576ec14684d93.jpg', '576ec2444c026.mp3', '2016-06-25 20:41:24'),
(4, 'Это было так давно', 'Запись 1978 года, со всеми хитами нашей программы того времени. Оригинал впоследствии был утрачен, но у Саши Градского обнаружилась приличная копия. Кутиков вернулся к своей работе 14-летней давности и отреставрировал её, как мог.', 1992, 'https://itunes.apple.com/ru/album/eto-bylo-tak-davno.../id658922757', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%AD%D1%82%D0%BE_%D0%91%D1%8B%D0%BB%D0%BE_%D0%A2%D0%B0%D0%BA_%D0%94%D0%B0%D0%B2%D0%BD%D0%BE?id=Bvfz25xyhfhiblcb755urznau3m', 1, 'eto_bylo_tak_davno', '576ec2e025ee8.jpg', '576ec98711306.mp3', '2016-06-25 21:12:23'),
(5, 'Неизданное, Ч. 2', 'Альбом выходил только как часть нашего второго бокс-сета. Для него мы собирали записи 1976-1984 годов из личных архивов, включая самую первую версию "Марионеток". Еще один подарок фанатам.', 2004, 'https://itunes.apple.com/ru/album/neizdannoe-c.-2/id658212855', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9D%D0%B5%D0%B8%D0%B7%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%B5_%D0%A7_2?id=Blbepxyimnsek6edxak4o7babze', 1, 'nieizdannoie_ch_2', '576ec7de7a5d8.jpg', '576ec8e26e763.mp3', '2016-06-25 21:09:38'),
(6, 'В добрый час', 'Наша первая "настоящая" пластинка, появившаяся на восемнадцатом году существования группы. Сделали ее без нас, взяли фонограммы и фото, которые оказались под рукой у сотрудников "Мелодии". Но мы были рады и тому!', 1986, 'https://itunes.apple.com/ru/album/v-dobryj-cas/id658940931', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%92_%D0%94%D0%BE%D0%B1%D1%80%D1%8B%D0%B9_%D0%A7%D0%B0%D1%81?id=Bxjhppir3indh2sbulxweuc76vi', 1, 'v_dobryi_chas', '576ecae1bad77.jpg', '576ecae1bb5b0.mp3', '2016-06-25 21:18:09'),
(7, 'Реки и Мосты', 'Первый наш "концептуальный альбом", из двух частей. Записан уже в перестроечное время, поэтому издали его относительно быстро. Ленинградский завод выпустил оба диска вместе, а московский - по отдельности.', 1987, 'https://itunes.apple.com/ru/album/reki-i-mosty/id658940344', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%A0%D0%B5%D0%BA%D0%B8_%D0%B8_%D0%9C%D0%BE%D1%81%D1%82%D1%8B?id=Btpqvfolmysucnhej42repbjeoe', 1, 'rieki_i_mosty', '576ecc65a5e96.jpg', '576ecc65a6757.mp3', '2016-06-25 21:24:37'),
(8, 'В круге света', 'Последняя работа, сделанная с Сашей Зайцевым. Песни писались во время постоянных гастролей, прямо на ходу,  чтобы для нас самих сохранялась какая-то интрига в ходе концертов. За обложку спасибо "битлам".', 1988, 'https://itunes.apple.com/ru/album/v-kruge-sveta/id658875981', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%92_%D0%9A%D1%80%D1%83%D0%B3%D0%B5_%D0%A1%D0%B2%D0%B5%D1%82%D0%B0?id=Bfyvw6gons2imtdy7m4m5g33o5a', 1, 'v_krughie_svieta', '576ece7807243.jpg', '576ece7807aba.mp3', '2016-06-25 21:33:28'),
(9, 'Медленная хорошая музыка', 'Не самый любимый наш альбом. Он какой-то мутный и по звуку, и по ощущениям в момент записи (Женя и Петя только вернулись, и не было понятно, насколько они задержатся), да и время вокруг было мутное.', 1991, 'https://itunes.apple.com/ru/album/medlennaa-horosaa-muzyka/id658244678', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9C%D0%B5%D0%B4%D0%BB%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F_%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F_%D0%9C%D1%83%D0%B7%D1%8B%D0%BA%D0%B0?id=Brcfeychfmmkkzdi4usm4lwx6vm', 1, 'miedliennaia_khoroshaia_muzyka', '576ed07914a8b.jpg', '576ed0791530c.mp3', '2016-06-25 21:42:01'),
(10, 'Внештатный командир земли (Блюзы Эль Мокамбо)', 'Мы придумали легендарного музыканта Эль Мокамбо и как бы пели его песни. На самом деле мы все сочинили сами, и каждый показал себя с лучшей стороны! Можно сказать, "Машина" вернулась.', 1993, 'https://itunes.apple.com/ru/album/vnestatnyj-komandir-zemli/id658289393', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%92%D0%BD%D0%B5%D1%88%D1%82%D0%B0%D1%82%D0%BD%D1%8B%D0%B9_%D0%9A%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4%D0%B8%D1%80_%D0%97%D0%B5%D0%BC%D0%BB%D0%B8?id=Bbn7o4t7rzuhkd6glaagml4fecu', 1, 'vnieshtatnyi_komandir_ziemli_bliuzy_el_mokambo', '576ed20f4e088.jpg', '57bc1457954fd.mp3', '2016-08-23 12:16:07'),
(11, 'Unplugged (Акустический концерт)', 'Запись акустического концерта октября 1993 года. Виниловая версия альбома выпущена на пикчерз-виниле - изображение с обложки альбома было нанесено непосредственно на грампластинку. Также была издана видеоверсия альбома в формате LD.', 1994, 'https://itunes.apple.com/ru/album/unplugged-akusticeskij-koncert/id862462925', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_Unplugged_%D0%90%D0%BA%D1%83%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%BA%D0%BE%D0%BD%D1%86%D0%B5%D1%80%D1%82?id=Bi6xbpiwc2apfs33r7or5nh63j4', 1, 'unplugged_akustichieskii_kontsiert', '576ed3bfd8fd2.jpg', '576ed3bfd9879.mp3', '2016-06-25 21:55:59'),
(12, 'Кого ты хотел удивить', 'Сборник песен с "магнитоальбомов" первой половины 80х. Тогда мы в перерывах между гастролями заскакивали на "Мелодию", записывали по 4-5 песен, а сотрудники без нашего ведома выпускали эти записи в народ.', 1995, 'https://itunes.apple.com/ru/album/kogo-ty-hotel-udivit/id658246094', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9A%D0%BE%D0%B3%D0%BE_%D0%A2%D1%8B_%D0%A5%D0%BE%D1%82%D0%B5%D0%BB_%D0%A3%D0%B4%D0%B8%D0%B2%D0%B8%D1%82%D1%8C?id=Badkvnj4tbaflrk2a2csmxcbx7m', 1, 'kogho_ty_khotiel_udivit', '576ed4aa05f99.jpg', '576ed4aa06807.mp3', '2016-06-25 21:59:54'),
(13, 'Картонные Крылья Любви', 'Наш альбом с безумно романтичным названием. Записывали мы его практически живьем, сидели на сцене московского ДК ГПЗ и играли все вместе. А потом уже дописывали голоса и какие-то соло.', 1996, 'https://itunes.apple.com/ru/album/kartonnye-kryl-a-lubvi/id658875691', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5_%D0%9A%D1%80%D1%8B%D0%BB%D1%8C%D1%8F_%D0%9B%D1%8E%D0%B1%D0%B2%D0%B8?id=Bv6r7m2k3ybmowjwjjpbdbs753y', 1, 'kartonnyie_kryl_ia_liubvi', '57702c309b7ed.jpg', '57702c309c05e.mp3', '2016-06-26 22:25:36'),
(14, 'Десять Лет Спустя', 'В конце 80х мы решили взять и перезаписать наши основные хиты десятилетней в среднем давности в приличном звуке. И если сейчас вы слышите по радио "Поворот", "Скачки", "Марионетки" - то они взяты с этой пластинки.', 1987, 'https://itunes.apple.com/ru/album/desat-let-spusta/id658939794', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%94%D0%B5%D1%81%D1%8F%D1%82%D1%8C_%D0%9B%D0%B5%D1%82_%D0%A1%D0%BF%D1%83%D1%81%D1%82%D1%8F?id=B5obguyvzdbgdtax75bq56valou', 1, 'diesiat_liet_spustia', '57702ca27a346.jpg', '57bc13874b560.mp3', '2016-08-23 12:12:39'),
(15, 'Отрываясь', 'То же место, та же технология, что и в "Крыльях". Все четверо авторов пишут в полную силу,  новый материал накопился меньше чем за год... в последний раз мы работали тем составом так продуктивно. Дальше начались проблемы.', 1997, 'https://itunes.apple.com/ru/album/otryvaas/id658246293', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9E%D1%82%D1%80%D1%8B%D0%B2%D0%B0%D1%8F%D1%81%D1%8C?id=Bd2ual2i2oxhkpe3n3g2ravrjqy', 1, 'otryvaias', '57702e6fef046.jpg', '57702e6fef8e4.mp3', '2016-06-26 22:35:11'),
(16, 'Часы и Знаки', 'Весь сезон 1998-1999 мы провели в кругосветном концертном туре, посвященном тридцатилетию "Машины". Песни сочинялись "на перекладных", как десять лет назад. И на этот раз авторов оказалось только трое.', 1999, 'https://itunes.apple.com/ru/album/casy-i-znaki/id658211467', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%A7%D0%B0%D1%81%D1%8B_%D0%B8_%D0%97%D0%BD%D0%B0%D0%BA%D0%B8?id=B2or6k4minynq5ve6mlsjmzepfm', 1, 'chasy_i_znaki', '57702ef1463ee.jpg', '57702ef146c69.mp3', '2016-06-26 22:37:21'),
(17, 'Маленький Принц', 'Сборник из двух концертов 1980 года, первый из них - это весенняя сдача программы "Маленький принц" худсовету Росконцерта. Меньше аплодисментов - чище запись! Второй диск записан осенью, но это та же программа.', 2000, 'https://itunes.apple.com/ru/album/malen-kij-princ/id658875891', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9C%D0%B0%D0%BB%D0%B5%D0%BD%D1%8C%D0%BA%D0%B8%D0%B9_%D0%9F%D1%80%D0%B8%D0%BD%D1%86?id=Bvxpygz4jvyzjs7asokoiqx7k2e', 1, 'malien_kii_prints', '57703044ce08d.jpg', '577030f6baf8a.mp3', '2016-06-26 22:45:58'),
(18, 'XXX лет (Юбилейный концерт в Олимпийском)', '"Живой" альбом и DVD, выходил с двумя разными обложками. Запись с концерта 17 декабря в "Олимпийском" - это было финальное шоу тура и последнее выступление Петра Подгородецкого в составе группы.', 2000, 'https://itunes.apple.com/ru/album/xxx-let-ubilejnyj-koncert/id862465291', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_XXX_%D0%BB%D0%B5%D1%82_%D0%AE%D0%B1%D0%B8%D0%BB%D0%B5%D0%B9%D0%BD%D1%8B%D0%B9_%D0%BA%D0%BE%D0%BD%D1%86%D0%B5%D1%80%D1%82_%D0%B2_%D0%9E%D0%BB%D0%B8%D0%BC%D0%BF%D0%B8%D0%B9?id=Bjlam44akz2rl6t72x7c52g625m', 1, 'xxx_liet_iubilieinyi_kontsiert_v_olimpiiskom', '5770334732fa8.jpg', '5770334733848.mp3', '2016-06-26 22:55:51'),
(19, 'Лучшие песни. Часть первая 1989-2000', 'Мы никогда не делали классических "бестов" - таких, которые состоят из уже изданных версий песен - но в этот раз решили пойти навстречу поклонникам. К тому же в те времена диски еще продавались... В итоге "часть первая" так и осталась единственной.', 2001, 'https://itunes.apple.com/ru/album/lucsie-pesni-1989-2000/id1006607504', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9B%D1%83%D1%87%D1%88%D0%B8%D0%B5_%D0%BF%D0%B5%D1%81%D0%BD%D0%B8_1989_2000?id=Bdyuhs7fceuxrlgywhuak5blclu', 1, 'luchshiie_piesni_chast_piervaia_1989_2000', '577034fc7adef.jpg', '577034fc7b65e.mp3', '2016-06-26 23:03:08'),
(20, 'Место где свет', 'Новая метла! Андрей Державин принес в группу не только свой материал, но и другой, более компьютерный подход к аранжировкам и записи. Не везде это пригодилось, но в нескольких песнях результат оказался блестящим.', 2001, 'https://itunes.apple.com/ru/album/mesto-gde-svet/id658247960', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9C%D0%B5%D1%81%D1%82%D0%BE_%D0%93%D0%B4%D0%B5_%D0%A1%D0%B2%D0%B5%D1%82?id=Bt4rxtgbsvkmjfiqky2idto7an4', 1, 'miesto_ghdie_sviet', '5770355dac6b7.jpg', '5770355dacefc.mp3', '2016-06-26 23:04:45'),
(21, 'Машинально', 'Мы объявили конкурс в «Комсомольской правде» на название альбома. В результате победу одержала 26-летняя москвичка Элина Соколова. А еще именно на этой обложке появился наш фирменный знак - шестеренка-пацифик.', 2004, 'https://itunes.apple.com/ru/album/masinal-no/id658212856', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE?id=Bpyerkc2j3vxuojphuknpojtypi', 1, 'mashinal_no', '577036a908f6d.jpg', '577036a909816.mp3', '2016-06-26 23:10:17'),
(22, 'Kremlin Rocks!', 'Наши лучшие песни, сыгранные живьем с камерным оркестром «Kremlin» под управлением Миши Рахлевского. Запись выходила и на DVD. С нами уже Сережа Остроумов и Саня Дитковский.', 2005, 'https://itunes.apple.com/ru/album/kremlin-rocks!-live/id862441553', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9A%D0%B0%D0%BC%D0%B5%D1%80%D0%BD%D1%8B%D0%B9_%D0%BE%D1%80%D0%BA%D0%B5%D1%81%D1%82%D1%80_Kremlin_Kremlin_Ro?id=Bwpztnjrfjlb4chbvg5xaeb2zo4', 1, 'kremlin_rocks', '577037d26a126.jpg', '577037d26a97c.mp3', '2016-06-26 23:15:14'),
(23, 'Time Machine', 'Time Machine записан на легендарной студии Abbey Road в Лондоне. В первый раз мы попробовали написать большую часть песен совместно (обычно каждый приносит свои темы), и в первый раз нам помог человек "со стороны" - Володя Матецкий.', 2007, 'https://itunes.apple.com/ru/album/time-machine/id658941125', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_Time_Machine?id=Bdfwn23kcwfl5tsik5fxwk5gtma', 1, 'time_machine', '5770392e0554a.jpg', '5770392e061ba.mp3', '2016-06-26 23:21:02'),
(24, 'Машины Не Парковать', 'К юбилею мы решили затеять "двойной трибьют". Наши друзья и знакомые перепели наши песни, а мы перепели песни наших друзей и сочинили несколько новых. Первый проект назвали "Машинопись", второй - "Машины не парковать".', 2009, 'https://itunes.apple.com/ru/album/masiny-ne-parkovat/id658209510', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D1%8B_%D0%9D%D0%B5_%D0%9F%D0%B0%D1%80%D0%BA%D0%BE%D0%B2%D0%B0%D1%82%D1%8C?id=Bto2qzsishh5vbikyiiocnoofju', 1, 'mashiny_nie_parkovat', '57703acc43958.jpg', '57703acc441cc.mp3', '2016-06-26 23:27:56'),
(25, 'День 14810-й', 'Концертный двойной диск - запись сорокалетия "Машины" в "Олимпийском". Записывал и сводил звук Хакан "Бролин" Сёдерстрём под чутким руководством Кутикова. В итоге получился первый живой альбом, звучание которого устроило всех "машинистов".', 2010, 'https://itunes.apple.com/ru/album/den-14810-j-ubilejnyj-koncert/id862463995', 'https://play.google.com/store/music/album/%D0%9C%D0%B0%D1%88%D0%B8%D0%BD%D0%B0_%D0%92%D1%80%D0%B5%D0%BC%D0%B5%D0%BD%D0%B8_%D0%94%D0%B5%D0%BD%D1%8C_14810_%D0%B9_%D0%AE%D0%B1%D0%B8%D0%BB%D0%B5%D0%B9%D0%BD%D1%8B%D0%B9_%D0%BA%D0%BE%D0%BD%D1%86%D0%B5%D1%80%D1%82_%D0%B2_%D0%9E%D0%BB?id=Bjeic6eqeov3hhg5irvagq45ulu', 1, 'dien_14810_i', '57703c8c0953d.jpg', '57703c8c09d8f.mp3', '2016-06-26 23:35:24'),
(26, 'Лучшие песни 1979—1985', 'Мы решили заново записать с Женей и Петей те песни, которые когда-то были сделаны без них. Добавили записи с ленинградских концертов 1981 года. Плюс кое-что, зафиксированное на пленку в 1988 в США, и несколько неизданных песен.', 1993, NULL, NULL, 1, 'luchshiie_piesni_1979_1985', '57bc06675320c.jpg', '57bc046114e7d.mp3', '2016-08-23 11:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `albums_translations`
--

CREATE TABLE IF NOT EXISTS `albums_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums_translations`
--

INSERT INTO `albums_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'title', NULL),
(2, 1, 'en', 'description', NULL),
(3, 2, 'en', 'title', NULL),
(4, 2, 'en', 'description', NULL),
(5, 3, 'en', 'title', NULL),
(6, 3, 'en', 'description', NULL),
(7, 4, 'en', 'title', NULL),
(8, 4, 'en', 'description', NULL),
(9, 5, 'en', 'title', NULL),
(10, 5, 'en', 'description', NULL),
(11, 6, 'en', 'title', NULL),
(12, 6, 'en', 'description', NULL),
(13, 7, 'en', 'title', NULL),
(14, 7, 'en', 'description', NULL),
(15, 8, 'en', 'title', NULL),
(16, 8, 'en', 'description', NULL),
(17, 9, 'en', 'title', NULL),
(18, 9, 'en', 'description', NULL),
(19, 10, 'en', 'title', NULL),
(20, 10, 'en', 'description', NULL),
(21, 11, 'en', 'title', 'Unplugged (Акустический концерт)'),
(22, 11, 'en', 'description', 'Unplugged — концертный альбом российской и советской рок-группы Машина времени, выпущенный в 1994 году.'),
(23, 12, 'en', 'title', NULL),
(24, 12, 'en', 'description', NULL),
(25, 13, 'en', 'title', NULL),
(26, 13, 'en', 'description', NULL),
(27, 14, 'en', 'title', NULL),
(28, 14, 'en', 'description', NULL),
(29, 15, 'en', 'title', NULL),
(30, 15, 'en', 'description', NULL),
(31, 16, 'en', 'title', NULL),
(32, 16, 'en', 'description', NULL),
(33, 17, 'en', 'title', NULL),
(34, 17, 'en', 'description', NULL),
(35, 18, 'en', 'title', NULL),
(36, 18, 'en', 'description', NULL),
(37, 19, 'en', 'title', NULL),
(38, 19, 'en', 'description', NULL),
(39, 20, 'en', 'title', NULL),
(40, 20, 'en', 'description', NULL),
(41, 21, 'en', 'title', NULL),
(42, 21, 'en', 'description', NULL),
(43, 22, 'en', 'title', NULL),
(44, 22, 'en', 'description', NULL),
(45, 23, 'en', 'title', NULL),
(46, 23, 'en', 'description', NULL),
(47, 24, 'en', 'title', NULL),
(48, 24, 'en', 'description', NULL),
(49, 25, 'en', 'title', NULL),
(50, 25, 'en', 'description', NULL),
(51, 26, 'en', 'title', NULL),
(52, 26, 'en', 'description', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `views` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isSubscriptionSent` tinyint(1) NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `createdAt`, `views`, `isActive`, `isSubscriptionSent`, `slug`) VALUES
(10, '"МИРОМ ПРАВИТ ЛЮБОВЬ" - НА "НАШЕМ РАДИО"', '2016-04-29 13:53:00', 259, 1, 1, 'mirom_pravit_liubov_na_nashiem_radio'),
(11, 'ДОКТОР, ЧТО-ТО ЛОПАТКИ ЛОМИТ... НЕУЖТО КРЫЛЬЯ РЕЖУТСЯ?', '2016-08-26 23:40:00', 164, 1, 1, 'doktor_chto_to_lopatki_lomit_nieuzhto_kryl_ia_riezhutsia'),
(12, 'МОСКВИЧИ, ВНИМАНИЕ: ЖДЕМ ВСЕХ СВОИХ!', '2016-09-01 18:23:00', 200, 1, 1, 'moskvichi_vnimaniie_zhdiem_vsiekh_svoikh'),
(14, 'В ОЖИДАНИИ ЧЕГО-ТО НОВЕНЬКОГО...', '2016-09-01 19:10:00', 209, 1, 0, 'v_ozhidanii_chiego_to_novien_kogo'),
(15, 'ДОРОГИЕ КИЕВЛЯНЕ, ОБРАТИТЕ ВНИМАНИЕ!', '2016-09-05 17:01:00', 132, 1, 0, 'dorogiie_kiievlianie_obratitie_vnimaniie'),
(16, 'СОБИРАЕМСЯ В ЕВРОПЕЙСКИЙ ТУР', '2016-09-09 02:58:00', 153, 1, 0, 'sobiraiemsia_v_ievropieiskii_tur'),
(17, 'С ДНЕМ РОЖДЕНИЯ!', '2016-09-20 17:52:00', 154, 1, 1, 's_dniem_rozhdieniia'),
(18, 'А ЕЩЕ МЫ СЕГОДНЯ СДЕЛАЛИ ТО, ЧЕГО НЕ ДЕЛАЛИ ЛЕТ ДВЕНАДЦАТЬ...', '2016-09-20 17:59:00', 344, 1, 1, 'a_ieshchie_my_siegodnia_sdielali_to_chiego_nie_dielali_liet_dvienadtsat'),
(19, 'ПРЕМЬЕРА КЛИПА МИХАИЛА СЕГАЛА "ОДНАЖДЫ"', '2016-10-04 11:48:00', 397, 1, 1, 'priem_iera_klipa_mikhaila_siegala_odnazhdy'),
(20, 'НЕБОЛЬШОЙ СЮРПРИЗ!', '2016-10-17 13:05:00', 92, 1, 1, 'niebol_shoi_siurpriz');

-- --------------------------------------------------------

--
-- Table structure for table `articles_blocks`
--

CREATE TABLE IF NOT EXISTS `articles_blocks` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `quote` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youTubeLink` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youTubeId` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `rawText` longtext COLLATE utf8_unicode_ci,
  `textFormatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles_blocks`
--

INSERT INTO `articles_blocks` (`id`, `article_id`, `text`, `quote`, `youTubeLink`, `youTubeId`, `imageName`, `updatedAt`, `rawText`, `textFormatter`) VALUES
(18, 10, '<p>Сегодня на &quot;Нашем Радио&quot; в хит-параде &quot;Чартова Дюжина&quot; - премьера песни &quot;Миром правит любовь&quot; с нового альбома &quot;Машины Времени&quot; &quot;Вы&quot;! Начало программы - 19.00 по московскому времени, онлайн-трансляция&nbsp;<a href="http://player.nashe.ru/?play">тут</a>.&nbsp;Альбом будет выпущен в начале мая - вы сможете найти CD в новом номере журнала &quot;Русский пионер&quot;, а через несколько дней появится отдельная диджипак-версия</p>', 'У нас было несколько вариантов названия, но в итоге, по-моему, Сашку Кутикова осенила идея - а давайте выскажем нашим фанатам благодарность таким образом, давайте просто соберем их лица и поместим на обложку! И назовем альбом попросту "Вы". Сказано - сделано!', NULL, NULL, '576ed909ea6b0.jpg', '2016-06-25 22:18:33', NULL, NULL),
(19, 10, '<p>А предзаказ доступен уже сейчас: <a href="https://itunes.apple.com/ru/album/vy/id1107197698?app=iTunes">iTunes</a>,&nbsp; <a href="https://itun.es/ru/c8N_bb">Apple Music</a>,&nbsp;<a href="https://goo.gl/izl2FQ">Google Play</a>.&nbsp;И не забывайте покупать билеты на благотворительный фестиваль &quot;<a href="https://msk.kassir.ru/kassir/event/view/33916">Разные Люди</a>&quot;: 25 мая, 20.00, Stadium Live - Машина Времени, ДДТ, Чиж и Ко, Разные Люди, Братья Карамазовы, Серьга!</p>', NULL, 'https://www.youtube.com/watch?v=AUZYw3TePEY&feature=youtu.be', 'AUZYw3TePEY', NULL, NULL, NULL, NULL),
(20, 11, '<p>С ДНЕМ РОЖДЕНИЯ!!!</p>', NULL, NULL, NULL, '57c0a9eb3d228.jpg', '2016-08-26 23:43:23', NULL, NULL),
(21, 12, '<p>&quot;АВТОРАДИО&quot; ПРЕДСТАВЛЯЕТ:</p>\r\n\r\n<p>22 сентября, Градский Холл - Машина Времени, &quot;Концерт для своих&quot;!</p>', NULL, NULL, NULL, '57d02dbb9a96e.jpg', '2016-09-07 18:09:47', NULL, NULL),
(25, 14, '<p>... давайте пока посмотрим что-то старенькое!</p>', NULL, NULL, NULL, '57c853d399b1d.jpg', '2016-09-01 19:14:11', NULL, NULL),
(26, 14, '<p>Почти тридцать лет назад!</p>', NULL, 'https://www.youtube.com/watch?v=Ty7YPoRsOXc', 'Ty7YPoRsOXc', NULL, NULL, NULL, NULL),
(27, 15, '<p>Для тех, кто не успел купить билеты на концерт 22 октября - мы приедем на день раньше и сыграем дополнительный концерт 21! Подробности в &quot;Афише&quot;, там же ссылка на онлайн-продажу. До встречи!</p>', NULL, NULL, NULL, '57da69d8c65ab.jpg', '2016-09-15 12:28:56', NULL, NULL),
(28, 16, '<p>Уже не этой осенью, а следующей. Пока в расписании - Дюссельдорф, Нюрнберг, Гамбург и Лондон. На концерты в Германии уже и билеты появились! Заходите в раздел &quot;Афиша&quot;, всё там.</p>', NULL, NULL, NULL, '57da6988cf466.jpg', '2016-09-15 12:27:36', NULL, NULL),
(29, 17, '<p>Здорово быть барабанщиком: у него всего две палочки. Бывают и четыре, но это у тех, кто умничает.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Хорошо быть басистом: у него всего четыре струны. Бывает и пять, и шесть, но это у тех, кто умничает больше барабанщика.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Неплохо быть гитаристом: у него всего шесть струн. Бывает и семь, и даже двенадцать, но это у тех, кто умничает больше басиста с барабанщиком вместе взятых.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>А вот каково иметь дело с восемьюдесятью восемью клавишами и остаться в своем уме - это большой вопрос...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>С днем рождения, Андрей! Оставайся таким, какой ты есть - спокойным и здравомыслящим!</p>', NULL, NULL, NULL, '57ecbf15bc8de.jpg', '2016-09-29 10:13:25', NULL, NULL),
(30, 17, '<p><strong>ТАНЦУЮТ ВСЕ!!!</strong></p>\r\n\r\n<p>Приходите поздравить в Градский Холл 22 числа!</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'https://www.youtube.com/watch?v=2ayEOCPd8aY', '2ayEOCPd8aY', NULL, NULL, NULL, NULL),
(31, 18, '<p>Есть версии? &nbsp;</p>\r\n\r\n<p>Ждите подробностей!</p>', NULL, NULL, NULL, '57ecc0347bf71.jpg', '2016-09-29 10:18:12', NULL, NULL),
(32, 19, '<p>Наконец-то! Клип мы задумали летом, сняли в итоге в конце сентября, и по настроению он получился совсем осенним. Но, наверное,&nbsp;так и было надо. Спасибо, Михаил Сегал!</p>', NULL, NULL, NULL, '57f36d93a0703.jpg', '2016-10-04 11:51:31', NULL, NULL),
(33, 19, '<p>А вам - приятного просмотра!</p>', NULL, 'https://www.youtube.com/watch?v=SINxD9KmiT0', 'SINxD9KmiT0', NULL, NULL, NULL, NULL),
(34, 20, '<p>Михаил Сегал смонтировал ролик из оставшихся от клипа &quot;Однажды&quot; кадров - так что добро пожаловать на backstage. 20 сентября, Москва, Новопесчаная улица, дождь.</p>', NULL, NULL, NULL, '5804b6e86a29f.jpg', '2016-10-17 14:32:56', NULL, NULL),
(35, 20, '<p>Вот так, в грязище и муках, и рождается искусство :-)</p>', NULL, 'https://www.youtube.com/watch?v=nTEYfC_lltQ', 'nTEYfC_lltQ', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles_blocks_translations`
--

CREATE TABLE IF NOT EXISTS `articles_blocks_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles_blocks_translations`
--

INSERT INTO `articles_blocks_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(35, 18, 'en', 'text', NULL),
(36, 18, 'en', 'quote', NULL),
(37, 19, 'en', 'text', NULL),
(38, 19, 'en', 'quote', NULL),
(39, 20, 'en', 'text', NULL),
(40, 20, 'en', 'quote', NULL),
(41, 21, 'en', 'text', NULL),
(42, 21, 'en', 'quote', NULL),
(49, 25, 'en', 'text', NULL),
(50, 25, 'en', 'quote', NULL),
(51, 26, 'en', 'text', NULL),
(52, 26, 'en', 'quote', NULL),
(53, 27, 'en', 'text', NULL),
(54, 27, 'en', 'quote', NULL),
(55, 28, 'en', 'text', NULL),
(56, 28, 'en', 'quote', NULL),
(57, 29, 'en', 'text', NULL),
(58, 29, 'en', 'quote', NULL),
(59, 30, 'en', 'text', NULL),
(60, 30, 'en', 'quote', NULL),
(61, 31, 'en', 'text', NULL),
(62, 31, 'en', 'quote', NULL),
(63, 32, 'en', 'text', NULL),
(64, 32, 'en', 'quote', NULL),
(65, 33, 'en', 'text', NULL),
(66, 33, 'en', 'quote', NULL),
(67, 34, 'en', 'text', NULL),
(68, 34, 'en', 'quote', NULL),
(69, 35, 'en', 'text', NULL),
(70, 35, 'en', 'quote', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles_translations`
--

CREATE TABLE IF NOT EXISTS `articles_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles_translations`
--

INSERT INTO `articles_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(10, 10, 'en', 'title', NULL),
(11, 11, 'en', 'title', NULL),
(12, 12, 'en', 'title', NULL),
(14, 14, 'en', 'title', NULL),
(15, 15, 'en', 'title', NULL),
(16, 16, 'en', 'title', NULL),
(17, 17, 'en', 'title', NULL),
(18, 18, 'en', 'title', NULL),
(19, 19, 'en', 'title', NULL),
(20, 20, 'en', 'title', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biographies`
--

CREATE TABLE IF NOT EXISTS `biographies` (
  `id` bigint(20) NOT NULL,
  `musician_id` bigint(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `event` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `photoName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `rawText` longtext COLLATE utf8_unicode_ci,
  `textFormatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biographies`
--

INSERT INTO `biographies` (`id`, `musician_id`, `year`, `event`, `title`, `text`, `photoName`, `updatedAt`, `rawText`, `textFormatter`) VALUES
(5, 3, NULL, NULL, 'С чего все начиналось', '<p>Начало моей&nbsp;музыкальной&nbsp;&quot;карьера&quot; - играл на танцах в городе Мытищи, когда я еще в МГУ учился, в команде &quot;Авангард&quot;, кто ж тогда знал, что все так обернется. &nbsp;В &quot;Машину&quot; же меня пригласили. Мы тогда с Кутиковым играли в &quot;Високосном лете&quot;. В МВ началась реорганизация, и Макар позвал Кутикова, а тот уже и меня потянул... Вот так все и началось</p>', '578cd6272f220.jpg', '2016-07-18 16:14:15', NULL, NULL),
(6, 3, NULL, NULL, 'Мое призвание', '<p>Лежит душа к спорту, а барабанщик - тоже физическая нагрузка, как на тренажере. Работают все мышцы тела: и руки, и ноги, и шея. Это вам не за струны дергать</p>', '578cdbd28ee70.jpg', '2016-07-18 16:38:26', NULL, NULL),
(7, 3, NULL, NULL, 'Ход дела', '<p>История популярности - раньше была велика... при нарушении правил дорожного движения&nbsp;можно было отделаться автографом или пластинкой. Сейчас сотрудников ГАИ стало в разы меньше, кругом камеры, а их автографом не подкупишь. Роботы нового поколения, они не знают меня в лицо и кто за рулем</p>', '578cdbd2908cd.jpg', '2016-07-18 16:38:26', NULL, NULL),
(8, 3, NULL, NULL, 'Издержки славы', '<p>У нас был такой сумасшедший гастрольный график, что наш сынок Валерик&nbsp;стал забывать, как выглядит папа. Я приезжал, а малыш начинал плакать&hellip; В итоге жена в угол игровой комнаты поставила мой огромный цветной портрет. Портрет был выше самого ребенка. Сын входил в комнату, видел портрет, указывал пальчиком, попадая мне прям в рот и говорил: &ldquo;Папа&rdquo;</p>', '5790d9625345e.jpg', '2016-07-21 17:17:06', NULL, NULL),
(9, 4, NULL, NULL, 'С чего все начиналось', '<p>В первый раз мы пересеклись с &quot;Машиной&quot;, когда они приехали в Свердловск, а мы там жили со &quot;Сталкером&quot;, потому что у нас было много очень концертов. И мы в гостинице жили, по-моему, целый месяц. И когда мы увидели в буфете легендарных музыкантов, наше восхищение не имело границ... Они так с любопытством на нас посмотрели, но потом сходили на наш концерт, послушали. А мы, конечно, сходили к ним на концерт. И они нам даже дали поиграть на своих инструментах, вот так все и началось...</p>', '577113de33d8a.jpg', '2016-06-27 14:54:06', NULL, NULL),
(10, 4, NULL, NULL, 'Роль', '<p>На самом деле мне всегда нравилось быть просто музыкантом. В юности, в молодости своей я много поиграл в качестве обычного музыканта. Поэтому когда у меня появилась такая возможность, я с удовольствием согласился. Просто мне в какой-то момент очень сильно надоело&nbsp;то, что стал делать Андрей Державин, вернее то, что стало с ним происходить. По причине взросления, может быть и&nbsp;по разным другим причинам мне осточертело все что связано было с моей популярностью,&nbsp;и захотелось какой-нибудь паузы, смены формы. Вот оно и случилось.</p>\r\n\r\n<p>&nbsp;</p>', '5771156a751df.jpg', '2016-06-27 15:00:42', NULL, NULL),
(11, 4, NULL, NULL, 'Помню, как-то раз …', '<p>Когда-то народная молва записала меня&nbsp;в сыновья артиста Михаила Державина.&nbsp;И это единственная сплетня, которая грела мне душу. Хотя я ни в коем случае совпадением наших фамилий не пользовался. Просто, если твой однофамилец прекрасный, талантливый человек, это замечательно. Михаил Михайлович против своего &quot;отцовства&quot; тоже не возражал. Лишь Роксана Бабаян переживала, поскольку не могла меня &quot;родить&quot; в... восемь лет.<em>&nbsp;</em> Михаилу Михайловичу постоянно звонили девушки из разных городов, передавали приветы &quot;сыну&quot; Андрюше. А однажды спросили: &quot;Если это правда, что Андрей Державин - ваш сын, то почему же он поет, как Роксана Бабаян, а внешне - вылитый Александр Ширвиндт?&quot;.</p>', '577116e87df6e.jpg', '2016-06-27 15:07:04', NULL, NULL),
(12, 4, NULL, NULL, 'Издержки славы', '<p>Поклонницы, которые 20 лет назад приходили на концерты &quot;Сталкера&quot;, давно уже замужем, растят детей. У них свои проблемы, никто от одного лишь упоминания имени Андрея Державина в экстаз не приходит. И нужно подходить к этому процессу философски. Когда некоторые мои коллеги начинают кочевряжиться: дескать, как же они, бедняги, устали от назойливости поклонниц, - сразу хочется поинтересоваться: &quot;Слушай, старик, а где они, твои неистовые фанатки? Слабо хоть одну показать?&quot;. Когда я был молод и действительно популярен, к девчонкам относился замечательно. Слава Богу, хватило ума не злоупотреблять их вниманием и по дурости ерунды не натворить.</p>', '577116e87f846.jpg', '2016-06-27 15:07:04', NULL, NULL),
(13, 4, NULL, NULL, 'Есть ли жизнь помимо “Машины Времени”?', '<p>В детстве занимался борьбой. А поскольку все мы учились в одних школах и в одних институтах, то занимался тем, что и все. В то время довольно серьёзная была спортивная подготовка. Поэтому приходилось бегать кроссы на лыжах, просто бегать и играть в разные игры, вроде волейбола и баскетбола. Мне это всегда было по душе, доставляло удовольствие. Хотя бы потому, что можно было прогулять пару уроков, выступая за школьную или институтскую команду.</p>\r\n\r\n<p>Впоследствии я не стал бы себя причислять к активным спортсменам, потому что всё, что заставляю себя делать &ndash; это ходить время от времени в бассейн и заниматься гимнастикой, зарядкой. Активно ходить в тренажёрный зал каждый день не получается.</p>', '57711720e2c27.jpg', '2016-06-27 15:08:00', NULL, NULL),
(14, 2, NULL, NULL, 'С чего все начиналось', '<p>Так сложилось, что первая моя любовь училась в одном классе с Сережей Кавагое, он впоследствии познакомил нас с Андреем Макаревичем. Однажды Кавагое пригласил меня на репетицию &laquo;Машины времени&raquo;. Макар мне говорит: &laquo;Ты на чем играешь-то?&raquo;, я говорю: &laquo;На басу&raquo;. Он спрашивает: &laquo;Что сыграем?&raquo;, - отвечаю: &laquo;Ну что, давай &laquo;Yellow river&raquo; Кристи сыграем&raquo; И он начал играть, а я и говорю: &laquo;Вы неправильно играете, там гармония другая&raquo;, я им показал гармонию песни на басу. С учетом того, что через какое-то время бас-гитариста &laquo;Машин времени&raquo; Игоря Мазаева должны были забрать в армию, вопрос решился сам собой. Мы играли на концертах поочередно, а когда его забрали в армию, я сыграл первый концерт полностью с &laquo;Машиной времени&raquo;. Это было 3 ноября 1971 года в Театре Киноактера</p>', '577274f900686.jpg', '2016-06-28 16:00:40', NULL, NULL),
(15, 2, NULL, NULL, 'Мое призвание', '<p>Играю на бас-гитаре. Пою. Сочиняю музыку. Записываю песни. Издаю альбомы. Я &mdash; хороший кризисный менеджер. Когда наступает пиковая ситуация, во мне что-то просыпается и я знаю, что и когда надо сделать. Это делается. Все приходит в норму, и я опять ложусь на диван.</p>', '57727557231dd.jpg', '2016-06-28 16:02:15', NULL, NULL),
(16, 2, NULL, NULL, 'Ход дела', '<p>Однажды мы выступала в кафе &laquo;Спорт&raquo; на территории &laquo;Лужников&raquo;. На концерт пришла Алла Пугачева, тогда, в 1980-ом, мы и познакомились ближе. Пугачева послушала весь концерт, потом мы сели за один стол, и она сказала: &laquo;Ребята, как человек, который достаточно много прошел в жизни и достаточно хорошо знает музыкальный мир, я хочу вам сказать: если вы не разругаетесь, вы будете самой известной группой в Советском Союзе&raquo;. Я эту фразу запомнил и теперь, если возникают конфликтные ситуации с последующими не очень радостными перспективами, я тут же вспоминаю ее и стараюсь свести на нет все возникающие трения, хотя уже и Советского Союза даже нет...</p>', '577274f9142e9.jpg', '2016-06-28 16:00:41', NULL, NULL),
(17, 2, NULL, NULL, 'Помню, как-то раз …', '<p>Петя Подгородецкий играл на студии что-то лирическое. Вдруг я услышал интересную гармоническую последовательность и попросил его сыграть ее еще раз. Он сыграл еще, а у меня в голове уже звучала мелодия, я взял и спел ее от начала до конца, и один из наших театральных приятелей тут же окрестил ее &laquo;сентиментальным чудовищем&raquo;. Макар послушал мелодию и сказал: &laquo;Я на эту мелодию никогда слова не напишу, потому что это песня про любовь, а это не мой жанр&raquo;. Я был готов к этому, и тут же сыграл рок-н-ролльный вариант, который потом и стал песней &laquo;Поворот&raquo;. Макар пошел погулять на улицу Горького, зашел в кафе &laquo;Московское&raquo;, взял 100 грамм коньячку и одновременно написал две песни: &laquo;Поворот&raquo; и &laquo;Ах, что за луна&raquo;. Второй он гордился больше: Подгородецкий немного грассировал, и Макаревич написал песню таким образом, что в первом куплете и припеве не было ни одной буквы &laquo;р&raquo;. Ну, почти...</p>', '577279f4c7139.jpg', '2016-06-28 16:21:56', NULL, NULL),
(18, 2, NULL, NULL, 'Издержки славы', '<p>Очень часто люди, которым ты помогаешь стать известными, иногда даже известными и популярными, не просто забывают, кто им это принес на блюдечке с голубой каёмочкой, а еще и позволяют себе не всегда лицеприятные слова в адрес людей, благодаря которым они стали известными и популярными. Я несколько раз обжигался, не буду говорить с кем у меня подобные неприятности ассоциируются, но тем не менее, я сделал вывод, что больше я никому помогать не буду. Продюсирование, которым я занимался на протяжении 30 лет, меня больше не интересует. Я продюсирую новые альбомы &laquo;Машины Времени&raquo;, когда они возникают, и достаточно успешно продюсирую свои новые альбомы.</p>', '57727917644f0.jpg', '2016-06-28 16:18:15', NULL, NULL),
(19, 2, NULL, NULL, 'ЕСТЬ ЛИ ЖИЗНЬ ПОМИМО "МАШИНЫ ВРЕМЕНИ"?', '<p>Есть сольная карьера - уже три альбома и концерты с группой &quot;Нюанс&quot;. Есть любимая Италия - и отдельно любимые итальянские сухие вина. Есть любимый &quot;Спартак&quot;, за который я болею больше полувека. Есть любимые Патриаршие пруды и район вокруг них. И, самое главное, есть Катя-старшая и Катя-младшая.</p>', '5772791765908.jpg', '2016-06-28 16:18:15', NULL, NULL),
(20, 1, NULL, NULL, 'С чего все начиналось', '<p>Как попал в &quot;Машину времени&quot;? Да это&nbsp;не я попал в группу - группа как-то образовалась вокруг меня. Это было глубоко религиозное сообщество по прослушиванию песен &laquo;Битлз&raquo; и попыткам извлекать звуки из электрогитар. От музыки это было весьма далеко. Впрочем, мы двигались, как показала жизнь, в верном направлении</p>', '578cc337385ea.jpg', '2016-07-18 14:53:27', NULL, NULL),
(21, 1, NULL, NULL, 'Мое призвание', '<p>Занимаюсь практически всем - к сожалению. Иногда вопросами, далёкими от музыки, хотя очень хотелось бы именно музыкой и стихами себя ограничить</p>', '578cc57c8ff61.jpg', '2016-07-18 15:03:08', NULL, NULL),
(22, 1, NULL, NULL, 'Ход дела', '<p>Популярность для меня - великая тайна. Я не знаю, почему эта песня становится любима народом, а эта - нет, почему этого артиста любят, а этот оставляет всех равнодушными. Мы никогда не стремились стать популярными или написать шлягер - просто так получалось</p>', '578cc7ae516a8.jpg', '2016-07-18 15:12:30', NULL, NULL),
(23, 1, NULL, NULL, 'Помню, как-то раз...', '<p>Помню, как-то раз, когда я учился в девятом классе, к нам в школу приехала группа &laquo;Атланты&raquo; - с невероятными настоящими электрогитарами и усилителями нечеловеческой мощности - по тем временам. Я набрался наглости и попросил их барабанщика и лидера Алика Сикорского разрешить нам сыграть пару песен на их волшебных инструментах. И Алик разрешил. То, что я испытал за последующие десять минут, в корне изменило мою жизнь. Сикорскому кланяюсь до сих пор</p>', '578cc57c93086.jpg', '2016-07-18 15:03:08', NULL, NULL),
(24, 1, NULL, NULL, 'Издержки славы', '<p>Вообще довольно противно, когда на тебя таращатся, бессмысленно улыбаясь, и просят сфотографироваться, непременно приобняв при этом за плечо. Понимаешь, что это они от любви к тебе, но всё равно тяжеловато. На первых пятерых-шестерых терпения хватает - если настроение хорошее. Потом тяжело</p>', '578cc77e033ac.jpg', '2016-07-18 15:11:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biographies_translations`
--

CREATE TABLE IF NOT EXISTS `biographies_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biographies_translations`
--

INSERT INTO `biographies_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(13, 5, 'en', 'event', NULL),
(14, 5, 'en', 'title', NULL),
(15, 5, 'en', 'text', NULL),
(16, 6, 'en', 'event', NULL),
(17, 6, 'en', 'title', NULL),
(18, 6, 'en', 'text', NULL),
(19, 7, 'en', 'event', NULL),
(20, 7, 'en', 'title', NULL),
(21, 7, 'en', 'text', NULL),
(22, 8, 'en', 'event', NULL),
(23, 8, 'en', 'title', NULL),
(24, 8, 'en', 'text', NULL),
(25, 9, 'en', 'event', NULL),
(26, 9, 'en', 'title', NULL),
(27, 9, 'en', 'text', NULL),
(28, 10, 'en', 'event', NULL),
(29, 10, 'en', 'title', NULL),
(30, 10, 'en', 'text', NULL),
(31, 11, 'en', 'event', NULL),
(32, 11, 'en', 'title', NULL),
(33, 11, 'en', 'text', NULL),
(34, 12, 'en', 'event', NULL),
(35, 12, 'en', 'title', NULL),
(36, 12, 'en', 'text', NULL),
(37, 13, 'en', 'event', NULL),
(38, 13, 'en', 'title', NULL),
(39, 13, 'en', 'text', NULL),
(40, 14, 'en', 'event', NULL),
(41, 14, 'en', 'title', NULL),
(42, 14, 'en', 'text', NULL),
(43, 15, 'en', 'event', NULL),
(44, 15, 'en', 'title', NULL),
(45, 15, 'en', 'text', NULL),
(46, 16, 'en', 'event', NULL),
(47, 16, 'en', 'title', NULL),
(48, 16, 'en', 'text', NULL),
(49, 17, 'en', 'event', NULL),
(50, 17, 'en', 'title', NULL),
(51, 17, 'en', 'text', NULL),
(52, 18, 'en', 'event', NULL),
(53, 18, 'en', 'title', NULL),
(54, 18, 'en', 'text', NULL),
(55, 19, 'en', 'event', NULL),
(56, 19, 'en', 'title', NULL),
(57, 19, 'en', 'text', NULL),
(58, 20, 'en', 'event', NULL),
(59, 20, 'en', 'title', NULL),
(60, 20, 'en', 'text', NULL),
(61, 21, 'en', 'event', NULL),
(62, 21, 'en', 'title', NULL),
(63, 21, 'en', 'text', NULL),
(64, 22, 'en', 'event', NULL),
(65, 22, 'en', 'title', NULL),
(66, 22, 'en', 'text', NULL),
(67, 23, 'en', 'event', NULL),
(68, 23, 'en', 'title', NULL),
(69, 23, 'en', 'text', NULL),
(70, 24, 'en', 'event', NULL),
(71, 24, 'en', 'title', NULL),
(72, 24, 'en', 'text', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE IF NOT EXISTS `concerts` (
  `id` bigint(20) NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `doorsOpenAt` datetime NOT NULL,
  `ticketsLink` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isSubscriptionSent` tinyint(1) NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `posterName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `country`, `city`, `place`, `title`, `description`, `doorsOpenAt`, `ticketsLink`, `isActive`, `isSubscriptionSent`, `slug`, `posterName`, `updatedAt`) VALUES
(5, 'Украина', 'Киев', 'ВДНХ, пр. Академика Глушкова, 1', 'Фестиваль ATLAS WEEKEND', 'В 2016 году локацией ежегодного фестиваля Atlas Weekend станет ВДНХ. Событие обещает быть грандиозным и собрать около 300 000 посетителей. Самые популярные артисты Украины, Беларуси, Европы и США уже готовятся выступить перед украинскими поклонниками. Девиз Atlas Weekend: "Никаких ограничений - только хорошая музыка!"', '2016-06-22 15:00:00', 'https://kiev.karabas.com/atlas-weekend?utm_source=google&utm_medium=cpc&utm_campaign=Karabas_Event_Atlas_Weekend_8.07.2016_Search&utm_content=atlas_weekend&utm_term=+atlas_+weekend&gclid=CLzAmLTXxswCFWTbcgod9bYBsQ', 1, 1, 'fiestival_atlas_weekend', '576a846e96d06.png', '2016-06-22 15:28:30'),
(6, 'Латвия', 'Юрмала', 'Концертный зал «Дзинтари»', 'Grupas MAŠINA VREMEŅI koncerts PASAULĒ VALDA MĪLESTĪBA', 'Krievijas slavenākā grupa „Mašina vremeņi” atkal ir Jūrmalā!\r\n\r\n25. jūlijā muzikanti uzkāps uz Dzintaru koncertzāles skatuves ar programmu „Pasaulē valda mīlestība”, kas iekļauj leģendārus hītus un dziesmas no jaunā albuma „Vi” („Jūs”), kas iznācis 2016. gada maijā!', '2016-07-25 20:00:00', 'http://www.bilesuserviss.lv/lat/biletes/muzika/roks-un-pops/grupas-masina-vremeni-koncerts-pasaule-valda-milestiba-koncert-gruppy-mashina-vremeni-mirom-pravit-ljubov-189703/', 1, 0, 'grupas_masina_vremeni_koncerts_pasaule_valda_milestiba', '576ee3b221559.jpg', '2016-06-25 23:04:02'),
(7, 'Россия', 'Москва', 'Градский Холл', 'Концерт для своих (12+)', 'В Москве "Машина Времени" почти не играет камерных концертов. Только в больших залах. Но сейчас нам захотелось посмотреть в глаза своим зрителям и спеть что-то такое, что мы поем нечасто. Возможно, представить какие-то песни из альбома "ВЫ", которые москвичи еще не слышали.', '2016-09-22 20:00:00', 'https://gradskyhall.ru/seans.html?seansID=8a6a3e8d-f65f-11e5-ae34-00155d016401', 1, 1, 'kontsiert_dlia_svoikh_12', '57d02d5c2f0f0.jpg', '2016-09-07 18:08:12'),
(8, 'Украина', 'Львов', 'Национальный академический театр оперы и балета', 'Украинский тур 2016, Львов', 'Встречайте "Машину времени" во Львове. Классика за 47 лет, под которую мы рождались в 70-е, вырастали в 80-е, входили в самостоятельную жизнь в 90-е и меняли все вокруг в XXI веке', '2016-10-17 19:00:00', 'https://gastroli.ua/en/events/mashina-vremeny-lviv#.V3ATGlSLSUk', 1, 0, 'ukrainskii_tur_2016_l_vov_1', '57700dbb33c4c.jpg', '2016-06-26 20:15:39'),
(9, 'Украина', 'Львов', 'Национальный академический театр оперы и балета', 'Украинский тур 2016, Львов', 'Встречайте "Машину времени" во Львове. От "Крыс" до "Поворота", от редкостей и древностей до премьер, через золотой фонд - все песни не споют, их слишком много, но концерты будут долгими, готовьтесь!', '2016-10-18 19:00:00', 'https://gastroli.ua/en/events/mashina-vremeni-lviv#.V27x4uaLSv6', 1, 0, 'ukrainskii_tur_2016_l_vov', '57700e6956839.jpg', '2016-06-26 20:18:33'),
(10, 'Украина', 'Одесса', 'Дворец спорта', 'Украинский тур 2016, Одесса', 'Теперь украинские зрители услышат песни с уже законченной пластинки МВ! А кроме них, конечно же, прозвучит вся классика за 47 лет, под которую мы рождались в 70-е, вырастали в 80-е, входили в самостоятельную жизнь в 90-е и меняли все вокруг в XXI веке', '2016-10-20 19:00:00', 'https://www.concert.ua/eventpage/mashina-vremeni-odessa', 1, 0, 'ukrainskii_tur_2016_odiessa', '5770100481a9b.jpg', '2016-06-26 20:25:24'),
(11, 'Украина', 'Киев', 'Национальный дворец искусств "Украина"', 'Украинский тур 2016, Киев', '22 октября, в 19:00, в Национальном дворце «Украина» бессмертная «Машина времени» презентует 12-й студийный альбом! Старые и новые песни, стихи, бьющие в самое сердце, и музыканты, ставшие легендами', '2016-10-22 19:00:00', 'http://www.konstantind.com/Ticket.aspx?id=98', 1, 1, 'ukrainskii_tur_2016_kiiev', '57da6b57d1508.jpg', '2016-09-15 12:35:19'),
(12, 'Украина', 'Днепр', 'Академический театр оперы и балета', 'Украинский тур 2016, Днепр', 'Сколько же лет "Машина Времени" не путешествовала по Украине? Года три как минимум! А ведь в 2012 нынешний состав группы впервые вышел на сцену именно в Киеве, на Майдане! Это был грандиозный концерт, у команды открылось уже, наверно, двадцать второе дыхание, и именно тогда публика - украинская раньше, чем российская - впервые услышала со сцены три новых песни, которые стали фундаментом нового альбома "ВЫ"', '2016-10-24 19:00:00', 'http://dnepropetrovsk.internet-bilet.ua/Mashina-vremeny', 1, 0, 'ukrainskii_tur_2016_dniepr', '577010f47c323.jpg', '2016-06-26 20:29:24'),
(13, 'Украина', 'Харьков', 'Дворец спорта', 'Украинский тур 2016, Харьков', 'В этом году Андрей Макаревич вместе со своей «непрогибаемой» лидерской командой музыкантов проведут осенние каникулы в Украине. Грандиозный тур по большим украинским городам стартует в столице, а уже 26 октября жители Харькова смогут «покайфовать» от стильных, смелых, всегда актуальных песен прогрессивного коллектива', '2016-10-26 19:00:00', 'https://www.concert.ua/booking/mashina-vremeni-kharkiv', 1, 0, 'ukrainskii_tur_2016_khar_kov', '5770142c944e3.jpg', '2016-06-26 20:43:08'),
(14, 'Россия', 'Москва', 'КЗ "Крокус Сити Холл"', 'Миром правит любовь', 'В ''Крокусе'' - любимой московской площадке ''машинистов'' - прозвучат не только новинки. Вас ожидает вся классика за 47 лет: от ''Крыс'' до ''Поворота'', от редкостей и древностей до премьер, через золотой фонд - все песни не споют, их слишком много, но удовольствие вы получите!', '2017-03-10 20:00:00', 'http://www.concert.ru/Details.aspx?ActionID=63843', 1, 0, 'mirom_pravit_liubov', '577015b31c07f.jpg', '2016-06-26 20:49:39'),
(15, 'Молдова', 'Кишинев', 'Замок Castel Mimi', 'Открытие замка Castel Mimi', 'Это не совсем Кишинев, но недалеко от него.', '2016-09-17 13:00:00', 'https://iticket.md/event/deschiderea-castel-mimi-mashina-vr-m-ni-live/', 1, 0, 'otkrytiie_zamka_castel_mimi', '57bc68f93ae97.jpg', '2016-08-23 18:17:13'),
(16, 'Украина', 'Киев', 'Национальный дворец искусств "Украина"', 'Украинский тур 2016, Киев - ДОПОЛНИТЕЛЬНЫЙ КОНЦЕРТ', '21 октября, в 19:00, в Национальном дворце «Украина» - дополнительный концерт для тех, кто не успел взять билеты на 22-е! Песни из нового альбома "Вы" и вся классика за 47 лет!', '2016-10-21 19:00:00', 'http://kvutku.com/clone_new/shema_new.php?kassa_id=766&event_id=24781', 1, 0, 'ukrainskii_tur_2016_kiiev_dopolnitiel_nyi_kontsiert', '57da6ad876dca.jpg', '2016-09-15 12:33:12'),
(18, 'Германия', 'Дюссельдорф', 'Mitsubishi Electric Halle', 'Европейский тур-2017: Дюссельдорф', 'Мы уже играли на родине Kraftwerk, причем, кажется, в этом же зале. С тех пор наша дискография пополнилась альбомом "Вы", так что в этот приезд мы с удовольствием споем вам и старые, и новые песни!', '2017-10-22 19:00:00', 'http://kassir.kartina.tv/PublicAPI/WidgetStep1.aspx?__pid=LJLQG2OxszkvjDIB3SI1KA&__uid=MoUIEJLO9ufupK6DpbYrqQ&event=186387867&rand=31701926', 1, 0, 'ievropieiskii_tur_2017_diussiel_dorf', '57da6ca7c6c29.jpg', '2016-09-15 12:40:55'),
(19, 'Германия', 'Нюрнберг', 'Meistersingerhalle Großer Saal', 'Европейский тур-2017: Нюрнберг', 'В 1969 году на этой сцене играл Джими Хендрикс! С ума сойти. Наверно, ее тогда только построили. А теперь там выступаем мы - со старым и новым материалом. Приходите!', '2017-10-24 19:30:00', 'http://kassir.kartina.tv/PublicAPI/WidgetStep1.aspx?__pid=LJLQG2OxszkvjDIB3SI1KA&__uid=MoUIEJLO9ufupK6DpbYrqQ&event=186448133&rand=17509710', 1, 0, 'ievropieiskii_tur_2017_niurnbiergh', '57da6d0469d44.jpg', '2016-09-15 12:42:28'),
(20, 'Германия', 'Гамбург', 'Mehr! Theater am Großmarkt', 'Европейский тур-2017: Гамбург', 'Самые битловские места. Ну, не те самые, конечно: не квартал красных фонарей. Но зал красивый! Приходите послушать и то, что мы писали почти полвека назад, и то, что играем сейчас.', '2017-10-27 19:30:00', 'http://kassir.kartina.tv/PublicAPI/WidgetStep1.aspx?__pid=LJLQG2OxszkvjDIB3SI1KA&__uid=MoUIEJLO9ufupK6DpbYrqQ&event=186490579&rand=79286850', 1, 0, 'ievropieiskii_tur_2017_gamburgh', '57da6d600f689.jpg', '2016-09-15 12:44:00'),
(21, 'Великобритания', 'Лондон', 'Troxy', 'Европейский тур-2017: Лондон', 'В Лондоне мы были осенью 2015-го, теперь вернемся два года спустя - чтобы показать вам наш новый альбом, ну и куда ж нам без древних народных песен! Так что до встречи!', '2017-10-29 19:00:00', NULL, 1, 0, 'ievropieiskii_tur_2017_london', '57da6da14dfc1.jpg', '2016-09-15 12:45:05'),
(22, 'Россия', 'Екатеринбург', 'ККЗ "Космос"', 'Машина Времени в Екатеринбурге: "Миром Правит Любовь"', 'В 1978 году мы впервые приехали в Свердловск и сыграли на "Весне УПИ". С тех пор мы выступали в нашем любимом городе много-много раз, потом был перерыв - пора возвращаться! В программе - вся классика и песни с нового альбома "Вы"!', '2016-12-16 19:00:00', 'http://ekb.kassy.ru/event/930/', 1, 0, 'mashina_vriemieni_v_iekatierinburghie_mirom_pravit_liubov', '57da6c1423bd5.jpg', '2016-09-15 12:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `concerts_translations`
--

CREATE TABLE IF NOT EXISTS `concerts_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `concerts_translations`
--

INSERT INTO `concerts_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(21, 5, 'en', 'title', NULL),
(22, 5, 'en', 'description', NULL),
(23, 5, 'en', 'country', NULL),
(24, 5, 'en', 'city', NULL),
(25, 5, 'en', 'place', NULL),
(26, 6, 'en', 'title', NULL),
(27, 6, 'en', 'description', NULL),
(28, 6, 'en', 'country', NULL),
(29, 6, 'en', 'city', NULL),
(30, 6, 'en', 'place', NULL),
(31, 7, 'en', 'title', NULL),
(32, 7, 'en', 'description', NULL),
(33, 7, 'en', 'country', NULL),
(34, 7, 'en', 'city', NULL),
(35, 7, 'en', 'place', NULL),
(36, 8, 'en', 'title', NULL),
(37, 8, 'en', 'description', NULL),
(38, 8, 'en', 'country', NULL),
(39, 8, 'en', 'city', NULL),
(40, 8, 'en', 'place', NULL),
(41, 9, 'en', 'title', NULL),
(42, 9, 'en', 'description', NULL),
(43, 9, 'en', 'country', NULL),
(44, 9, 'en', 'city', NULL),
(45, 9, 'en', 'place', NULL),
(46, 10, 'en', 'title', NULL),
(47, 10, 'en', 'description', NULL),
(48, 10, 'en', 'country', NULL),
(49, 10, 'en', 'city', NULL),
(50, 10, 'en', 'place', NULL),
(51, 11, 'en', 'title', NULL),
(52, 11, 'en', 'description', NULL),
(53, 11, 'en', 'country', NULL),
(54, 11, 'en', 'city', NULL),
(55, 11, 'en', 'place', NULL),
(56, 12, 'en', 'title', NULL),
(57, 12, 'en', 'description', NULL),
(58, 12, 'en', 'country', NULL),
(59, 12, 'en', 'city', NULL),
(60, 12, 'en', 'place', NULL),
(61, 13, 'en', 'title', NULL),
(62, 13, 'en', 'description', NULL),
(63, 13, 'en', 'country', NULL),
(64, 13, 'en', 'city', NULL),
(65, 13, 'en', 'place', NULL),
(66, 14, 'en', 'title', NULL),
(67, 14, 'en', 'description', NULL),
(68, 14, 'en', 'country', NULL),
(69, 14, 'en', 'city', NULL),
(70, 14, 'en', 'place', NULL),
(71, 15, 'en', 'title', NULL),
(72, 15, 'en', 'description', NULL),
(73, 15, 'en', 'country', NULL),
(74, 15, 'en', 'city', NULL),
(75, 15, 'en', 'place', NULL),
(76, 16, 'en', 'title', NULL),
(77, 16, 'en', 'description', NULL),
(78, 16, 'en', 'country', NULL),
(79, 16, 'en', 'city', NULL),
(80, 16, 'en', 'place', NULL),
(86, 18, 'en', 'title', NULL),
(87, 18, 'en', 'description', NULL),
(88, 18, 'en', 'country', NULL),
(89, 18, 'en', 'city', NULL),
(90, 18, 'en', 'place', NULL),
(91, 19, 'en', 'title', NULL),
(92, 19, 'en', 'description', NULL),
(93, 19, 'en', 'country', NULL),
(94, 19, 'en', 'city', NULL),
(95, 19, 'en', 'place', NULL),
(96, 20, 'en', 'title', NULL),
(97, 20, 'en', 'description', NULL),
(98, 20, 'en', 'country', NULL),
(99, 20, 'en', 'city', NULL),
(100, 20, 'en', 'place', NULL),
(101, 21, 'en', 'title', NULL),
(102, 21, 'en', 'description', NULL),
(103, 21, 'en', 'country', NULL),
(104, 21, 'en', 'city', NULL),
(105, 21, 'en', 'place', NULL),
(106, 22, 'en', 'title', NULL),
(107, 22, 'en', 'description', NULL),
(108, 22, 'en', 'country', NULL),
(109, 22, 'en', 'city', NULL),
(110, 22, 'en', 'place', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `role`, `person`, `phone`, `email`) VALUES
(1, 'Администратор', 'Земцов Алексей', '+7 (916) 777-50-25', 'drotic67@mail.ru'),
(2, 'Пресс-секретарь', 'Чернин Антон', '+7 (916) 363-05-48', 'ablackey@mail.ru'),
(3, 'Звук', 'Гайлеш Александр', '+7 (916) 739-71-16', 'moonkey@yandex.ru'),
(4, 'Свет', 'Бубнов Игорь', '+7 (926) 238-68-96', 'egorsvet@mail.ru');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_translations`
--

CREATE TABLE IF NOT EXISTS `contacts_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts_translations`
--

INSERT INTO `contacts_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'role', 'Administrator'),
(2, 1, 'en', 'person', 'Zemcov Aleksej'),
(3, 2, 'en', 'role', 'Press secretary'),
(4, 2, 'en', 'person', 'Chernin Anton'),
(5, 3, 'en', 'role', 'Sound'),
(6, 3, 'en', 'person', 'Kuslapu Sergej'),
(7, 4, 'en', 'role', 'Light'),
(8, 4, 'en', 'person', 'Bubnov Igor');

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user`
--

CREATE TABLE IF NOT EXISTS `fos_user_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'infinitytime', 'infinitytime', 'webmaster@mashina.ru', 'webmaster@mashina.ru', 1, 'my9g1yz3idwo08sk4so0sscwogck44s', '40nnpy+kRHEtRztMoeYKWWdClQlp+rG3X97Or9n0sySXsToV3dHX4KSMI9AQAVZtRtxUkGch8fubYUh1EwDUcQ==', '2016-10-27 01:49:59', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2016-08-23 10:36:39', '2016-10-27 01:49:59', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `route`) VALUES
(1, 'Главная', 'index'),
(2, 'Афиша', 'affiche'),
(3, 'Блог', 'blog'),
(4, 'Группа', 'band'),
(5, 'Музыка', 'music'),
(6, 'Галерея', 'gallery'),
(7, 'Контакты', 'contacts');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE IF NOT EXISTS `menu_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'title', 'Home'),
(2, 2, 'en', 'title', 'Affiche'),
(3, 3, 'en', 'title', 'Blog'),
(4, 4, 'en', 'title', 'Band'),
(5, 5, 'en', 'title', 'Music'),
(6, 6, 'en', 'title', 'Gallery'),
(7, 7, 'en', 'title', 'Contacts');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE IF NOT EXISTS `metadata` (
  `id` bigint(20) NOT NULL,
  `route` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `robots` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `route`, `title`, `description`, `robots`) VALUES
(1, 'index', 'Главная', 'Добро пожаловать на официальный сайт группы "Машина Времени"!', 'index, follow'),
(2, 'affiche', 'Афиша', '', 'index, follow'),
(3, 'blog', 'Блог', '', 'index, follow'),
(4, 'band', 'Группа', '', 'index, follow'),
(5, 'music', 'Музыка', '', 'index, follow'),
(6, 'gallery', 'Галерея', '', 'index, follow'),
(7, 'contacts', 'Контакты', '', 'index, follow'),
(8, 'subscription', 'Подписка', '', 'index, follow');

-- --------------------------------------------------------

--
-- Table structure for table `metadata_translations`
--

CREATE TABLE IF NOT EXISTS `metadata_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `metadata_translations`
--

INSERT INTO `metadata_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'title', 'Home'),
(2, 2, 'en', 'title', 'Affiche'),
(3, 3, 'en', 'title', 'Blog'),
(4, 4, 'en', 'title', 'Band'),
(5, 5, 'en', 'title', 'Music'),
(6, 6, 'en', 'title', 'Gallery'),
(7, 7, 'en', 'title', 'Contacts'),
(8, 8, 'en', 'title', 'Subscription'),
(9, 1, 'en', 'description', 'Welcome to the official "Time Machine" band website!');

-- --------------------------------------------------------

--
-- Table structure for table `musicians`
--

CREATE TABLE IF NOT EXISTS `musicians` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `skill` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `story` text COLLATE utf8_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `yearOfEntry` int(11) NOT NULL,
  `yearOfExit` int(11) DEFAULT NULL,
  `isMainCast` tinyint(1) NOT NULL,
  `photoMain` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photoPart` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photoMenu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `photoName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `sid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yearsInactive` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `musicians`
--

INSERT INTO `musicians` (`id`, `title`, `skill`, `story`, `dateOfBirth`, `yearOfEntry`, `yearOfExit`, `isMainCast`, `photoMain`, `photoPart`, `photoMenu`, `slug`, `photoName`, `updatedAt`, `sid`, `yearsInactive`) VALUES
(1, 'Андрей Макаревич', 'Гитара, вокал', 'Ей-богу, я не знаю ответа на вопрос, почему так долго вместе остается “Машина Времени”. Дружба-дружбой, но это абсолютно ничего не объясняет. Когда я задумываюсь над этим вопросом, начинает казаться, что наши песни сами требуют, чтобы мы их играли. У нас просто не остается другого выбора - только повиноваться их требованию', '1953-12-11', 1969, NULL, 1, 'makar.jpg', 'makar-part.jpg', 'makar-menu.jpg', 'andriei_makarievich', '576eaccbaf0cf.jpg', '2016-06-25 19:09:47', 'makarevich', NULL),
(2, 'Александр Кутиков', 'Бас-гитара, вокал', 'Вообще длительность нашей жизни определяем не мы - это такой магический ход камней. Скажем так: в этом есть некоторая божественная составляющая - наверное, из-за этого так долго существует “Машина Времени”, и из-за этого так долго вместе такое количество столь разных, но очень интересных, хороших и талантливых людей', '1952-04-13', 1971, NULL, 1, 'kytikov.jpg', 'kytikov-part.jpg', 'kytikov-menu.jpg', 'alieksandr_kutikov', '576ead83c7eda.jpg', '2016-06-25 19:12:51', 'kutikov', 4),
(3, 'Валерий Ефремов', 'Ударные', 'На мой взгляд, “Машина Времени” до сих пор вместе исключительно из-за дружбы, которая сложилась между людьми внутри коллектива. Когда-то я просто спросил у ребят: “Насколько все это серьезно и надолго?”. Мне ответили, что достаточно серьезно и, видимо, надолго. Как оказалось, это была настоящая правда', '1953-12-25', 1979, NULL, 1, 'efremov.jpg', 'efremov-part.jpg', 'efremov-menu.jpg', 'valierii_iefriemov', '576ead7b9aa33.jpg', '2016-06-25 19:12:43', 'efremov', NULL),
(4, 'Андрей Державин', 'Клавишные, бэк-вокал', 'Поезд, купе, пять утра...  вдруг появляется строка: «Новая весна тебя убьет». Тут же на трех струнах (остальные еще не натянуты, поскольку концерт завтра) дрын-дрын - возникает мелодия. Потом все уснут, а вечером ее вспомнят и за полчаса-час вырулят хит. Вот тебе и “Машина Времени”: шаманы, колдуны-шаманы', '1963-09-20', 2000, NULL, 1, 'derjavin.jpg', 'derjavin-part.jpg', 'derjavin-menu.jpg', 'andriei_dierzhavin', '576ead776dc11.jpg', '2016-06-25 19:12:39', 'derzhavin', NULL),
(5, 'Игорь Хомич', 'Гитарист', 'Все просто и примитивно: играю на гитаре… Однажды позвонил Кутиков и сказал: “Хочешь поиграть?” - я ответил: “Почту за честь!”. Поиграли и решили остаться вместе. Всё! Слава “Машины Времени” - это слава не моя, а то, что 47 лет идет за ребятами. Если я сумею не попортить то, что было нажито, буду очень рад.', '1962-08-26', 2012, NULL, 0, NULL, NULL, NULL, 'ighor_khomich', '576ea17fa4358.jpg', '2016-06-25 18:21:35', NULL, NULL),
(6, 'Александр Дитковский', 'Трубач', 'Вы встречали людей, которые бы не знали “Машину”? Лично я - нет. Для меня “Машина времени” - это самая сокровенная Мечта Детства, которая осуществилась даже больше, чем я мог себе представить в самых смелых фантазиях', '1968-03-09', 2004, NULL, 0, NULL, NULL, NULL, 'alieksandr_ditkovskii', '576ea4e436b4c.jpg', '2016-06-25 18:36:04', NULL, NULL),
(7, 'Сергей Остроумов', 'Перкуссия', 'Мы с Саней Дитковским играли в "Оркестре Креольского Танго", а с "Машиной" в первый раз вышли на сцену на тридцатипятилетии на Красной площади. И задержались... С ними очень комфортно. И на сцене, и за сценой. Мы как-то сразу совпали и с Валерой Ефремовым, и со всеми.', '1965-07-04', 2004, NULL, 0, NULL, NULL, NULL, 'sierghiei_ostroumov', '576ea6aed999b.jpg', '2016-06-25 18:43:42', NULL, NULL),
(8, 'Сергей Кавагоэ', 'Клавиши, ударные', 'Кава - один из основателей группы. Человек с абсолютно нестандартным устройством головы, интуитивный музыкантище, отличный друг. Мы вместе прошли все наиболее значимые события семидесятых: триумфальные поездки в Таллин и Питер, первые записи. Играл он практически на всех инструментах: гитаре, бас-гитаре и даже органе фирмы Ace Tone. Но главным его инструментом были барабаны, играл он очень точно и плотно, со временем это стало фирменным звуком «Машины»', '1953-06-25', 1969, 1979, 0, NULL, NULL, NULL, 'sierghiei_kavaghoe', '576ea840f2304.jpg', '2016-06-25 18:50:24', NULL, NULL),
(9, 'Петр Подгородецкий', 'Клавишные, вокал', 'Человек невероятной энергии, готовый играть двадцать четыре часа в сутки. Дважды приходил в группу и дважды из нее уходил, в первый раз - по собственному желанию, во второй - по желанию всех остальных :-) Соавтор нескольких самых  больших хитов.', '1957-02-12', 1979, 1999, 0, NULL, NULL, NULL, 'pietr_podghorodietskii', '576ea8e37920e.jpg', '2016-06-25 18:53:07', NULL, 8),
(10, 'Евгений Маргулис', 'Гитара, вокал', 'Одна из ключевых фигур в истории группы. Дважды приходил в "Машину", дважды из нее уходил, но при этом до сих пор со всеми дружит. Именно в "Машине" Маргулис начал играть на бас-гитаре, петь и сочинять, а после своего возвращения в 1990 стал одним из основных авторов.', '1955-12-25', 1975, 2012, 0, NULL, NULL, NULL, 'ievghienii_marghulis', '5770187f9b94d.jpg', '2016-06-26 21:01:35', NULL, 11),
(11, 'Александр Зайцев', 'Клавишные', 'Саша был нашим клавишником почти 9 лет: с 1982 по 1990 год. Он всегда использовал свои способности и возможности инструментов по максимуму: "Заяц играет - не прибавить, не убавить".  Мы с ним объездили с концертами весь СССР и с десяток зарубежных стран. На гастроли он всегда с собой брал погоны как талисман. А вообще любил ходить в длиннополой офицерской шинели без погон, иногда носил гимнастерку и даже галифе с сапогами. За это мы ему дали прозвище - Полковник. Наш Полковник...', '1958-01-30', 1982, 1990, 0, NULL, NULL, NULL, 'alieksandr_zaitsiev', '5770181fb47ac.jpg', '2016-06-26 20:59:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `musicians_translations`
--

CREATE TABLE IF NOT EXISTS `musicians_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `musicians_translations`
--

INSERT INTO `musicians_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'title', 'Andrey Makarevich'),
(2, 1, 'en', 'skill', 'Guitar, Vocals'),
(3, 1, 'en', 'story', 'I swear I don''t know what the answer would be to the question about why Mashina Vremeni has stayed together for so long. It''s true that we''ve been friends, but that explains absolutely nothing. When I think about that question it starts to seem to me that our songs themselves demand that we play them. We simply have no other choice but to give in to their demands'),
(4, 1, 'en', 'slug', 'andrey_makarevich'),
(5, 2, 'en', 'title', 'Alexandr Kutikov'),
(6, 2, 'en', 'skill', 'Bass, Vocals'),
(7, 2, 'en', 'story', 'In general our longevity isn''t decided by us - it''s sort of a magical movement of the stones. Let''s put it this way: there''s some kind of heavenly supernatural component to it - I think that''s why Mashina Vremeni has been around for so long and for that reason all of these very different, but very interesting, good and talented people have stayed together'),
(8, 2, 'en', 'slug', 'alexandr_kutikov'),
(9, 3, 'en', 'title', 'Valeriy Efremov'),
(10, 3, 'en', 'skill', 'Drums'),
(11, 3, 'en', 'story', 'In my opinion, Mashina Vremeni is still together exclusively thanks to the friendship that has developed between the people inside the collective. At one point I asked the guys directly: "How serious is all of this and how long will it last?" They told me that they thought it would be very serious and for a long time. As time has shown, that has been absolutely true'),
(12, 3, 'en', 'slug', 'valeriy_efremov'),
(13, 4, 'en', 'title', 'Andrey Derjavin'),
(14, 4, 'en', 'skill', 'Keyboards, Vocals'),
(15, 4, 'en', 'story', 'The train, inside the car, five in the morning... And suddenly a line appears: "The new spring will kill you". Immediately, on three strings (the rest aren''t strung yet, there''s a concert the next day) twang-twang - and there''s a melody. Then everyone falls asleep, and in the evening they remember it and piece together a hit in half an hour or an hour. And that''s Mashina Vremeni for you - shamans, wizard-shamans'),
(16, 4, 'en', 'slug', 'andrey_derjavin'),
(17, 5, 'en', 'title', 'Test'),
(18, 5, 'en', 'skill', 'Test'),
(19, 5, 'en', 'story', 'Lorem ipsum dolor sit amet'),
(20, 5, 'en', 'slug', 'test'),
(21, 6, 'en', 'title', 'Александр Дитковский'),
(22, 6, 'en', 'skill', 'Трубач'),
(23, 6, 'en', 'story', 'Для меня “Машина времени” - это Мечта Детства, которая осуществилась даже больше, чем я ожидал'),
(24, 7, 'en', 'title', 'Сергей Остроумов'),
(25, 7, 'en', 'skill', 'Перкуссия'),
(26, 7, 'en', 'story', 'История'),
(27, 8, 'en', 'title', 'Сергей Кавагоэ'),
(28, 8, 'en', 'skill', 'Клавиши, ударные'),
(29, 8, 'en', 'story', 'Текст'),
(30, 9, 'en', 'title', 'Петр Подгородецкий'),
(31, 9, 'en', 'skill', 'Клавишные, вокал'),
(32, 9, 'en', 'story', 'Текст'),
(33, 10, 'en', 'title', 'Евгений Маргулис'),
(34, 10, 'en', 'skill', 'Гитара, вокал'),
(35, 10, 'en', 'story', 'Текст'),
(36, 11, 'en', 'title', 'Александр Зайцев'),
(37, 11, 'en', 'skill', 'Клавишные'),
(38, 11, 'en', 'story', 'Текст');

-- --------------------------------------------------------

--
-- Table structure for table `photoalbum_tag`
--

CREATE TABLE IF NOT EXISTS `photoalbum_tag` (
  `photoalbum_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photoalbum_tag`
--

INSERT INTO `photoalbum_tag` (`photoalbum_id`, `tag_id`) VALUES
(6, 1),
(7, 1),
(9, 3),
(11, 3),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 3),
(17, 3),
(18, 2),
(19, 1),
(20, 1),
(21, 1),
(26, 4),
(27, 2),
(28, 3),
(29, 2);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` bigint(20) NOT NULL,
  `photo_album_id` bigint(20) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isCover` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `photoName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `dateTaken` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=688 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo_album_id`, `title`, `isCover`, `position`, `photoName`, `updatedAt`, `dateTaken`) VALUES
(14, 6, 'Андрей Державин, Юрий Костин ("Авторадио"), Андрей Макаревич, Валерий Ефремов, Александр Кутиков,Евгений Маргулис, Михаил Капник', 0, 1, '5770006cc8d6a.jpg', '2016-06-26 19:18:52', '2007-09-23'),
(15, 6, NULL, 0, 2, '5770006ccb530.jpg', '2016-06-26 19:18:52', '2007-09-23'),
(16, 6, NULL, 0, 3, '5770006ccc42e.jpg', '2016-06-26 19:18:52', '2007-09-23'),
(17, 6, 'Выход на сцену', 0, 4, '5770006ccd323.jpg', '2016-06-26 19:18:52', '2007-09-23'),
(18, 6, NULL, 0, 5, '5770006cce1cb.jpg', '2016-06-26 19:18:52', '2007-09-23'),
(19, 6, NULL, 0, 6, '5770006ccf07c.jpg', '2016-06-26 19:18:52', '2007-09-23'),
(20, 6, NULL, 0, 7, '577000dae5e9f.jpg', '2016-06-26 19:20:42', '2007-09-23'),
(21, 6, NULL, 0, 8, '577000dae7350.jpg', '2016-06-26 19:20:42', '2007-09-23'),
(22, 6, NULL, 0, 9, '577000daf2835.jpg', '2016-06-26 19:20:42', '2007-09-23'),
(23, 6, NULL, 0, 10, '577000daf36e9.jpg', '2016-06-26 19:20:42', '2007-09-23'),
(24, 6, NULL, 0, 11, '577000db0038b.jpg', '2016-06-26 19:20:42', '2007-09-23'),
(25, 6, NULL, 0, 12, '577000db01263.jpg', '2016-06-26 19:20:43', '2007-09-23'),
(26, 6, NULL, 0, 13, '577000db0212e.jpg', '2016-06-26 19:20:43', '2007-09-23'),
(27, 6, NULL, 0, 14, '577000db0302f.jpg', '2016-06-26 19:20:43', '2007-09-23'),
(28, 6, NULL, 0, 15, '577000db03f20.jpg', '2016-06-26 19:20:43', '2007-09-23'),
(29, 6, NULL, 1, 16, '57bc289f75517.jpg', '2016-08-23 13:42:39', '2007-09-23'),
(30, 6, NULL, 0, 17, '57700216d3322.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(31, 6, NULL, 0, 18, '57700216deb44.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(32, 6, NULL, 0, 19, '57700216dfa2a.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(33, 6, NULL, 0, 20, '57700216e090a.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(34, 6, NULL, 0, 21, '57700216e17fd.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(35, 6, NULL, 0, 22, '57700216e271d.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(36, 6, NULL, 0, 23, '57700216e3653.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(37, 6, NULL, 0, 24, '57700216e457e.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(38, 6, NULL, 0, 25, '57700216e548d.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(39, 6, NULL, 0, 26, '57700216e639c.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(41, 6, NULL, 0, 27, '57700216e81ec.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(42, 6, NULL, 0, 28, '57700216e90eb.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(43, 6, NULL, 0, 29, '57700216ea020.jpg', '2016-06-26 19:25:58', '2007-09-23'),
(44, 6, NULL, 0, 30, '577002e4046f0.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(45, 6, NULL, 0, 31, '577002e405af4.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(46, 6, NULL, 0, 32, '577002e4069da.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(47, 6, NULL, 0, 33, '577002e407905.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(48, 6, NULL, 0, 34, '577002e4087e3.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(49, 6, 'Александр Алексадрович Варин ("Авторадио"), Андрей Державин и Юрий Костин ("Авторадо") после концерта', 0, 35, '577002e4096c3.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(50, 6, 'Андрей Белле, Андрей Державин, Борис Гребенщиков, Андрей Макаревич', 0, 36, '577002e40a5ac.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(51, 6, NULL, 0, 37, '577002e40b48b.jpg', '2016-06-26 19:29:24', '2007-09-23'),
(52, 6, NULL, 0, 38, '5770033005f8d.jpg', '2016-06-26 19:30:40', '2007-09-23'),
(53, 6, NULL, 0, 37, '577003300745c.jpg', '2016-06-26 19:30:40', '2007-09-23'),
(54, 6, 'Александр Александрович Варин ("Авторадио") и Мурзилки International открывают концерт', 0, 36, '5770033008344.jpg', '2016-06-26 19:30:40', '2007-09-23'),
(56, 7, 'Андрей Макаревич', 0, 1, '578cbda50b8a2.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(57, 7, 'Александр Кутиков', 0, 2, '578cbda50d73f.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(58, 7, 'Андрей Макаревич', 0, 3, '578cbda50f4eb.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(59, 7, 'Андрей Макаревич и Евгений Маргулис (задний план)', 0, 4, '578cbda511257.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(60, 7, 'Андрей Макаревич', 0, 5, '578cbda513040.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(61, 7, 'Игорь Хомич', 0, 6, '578cbda51483b.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(62, 7, 'Александр Кутиков', 0, 7, '578cbda5166ed.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(63, 7, 'Андрей Макаревич', 0, 8, '578cbda518564.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(64, 7, 'Андрей Макаревич', 0, 9, '578cbda519dd2.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(65, 7, 'Александр Дитковский', 0, 10, '578cbda51b6a2.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(66, 7, NULL, 0, 11, '578cbda51d6ac.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(67, 7, 'Андрей Макаревич', 0, 12, '578cbda51f62a.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(68, 7, 'Игорь Хомич и Андрей Макаревич', 0, 13, '578cbda5214c2.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(69, 7, 'Александр Зайцев, Андрей Макаревич, Валерий Ефремов (задний план)', 0, 14, '578cbda5232f3.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(70, 7, 'Андрей Макаревич', 0, 15, '578cbda525148.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(71, 7, NULL, 0, 16, '578cbda526fd3.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(72, 7, 'Андрей Макаревич и Александр Кутиков', 0, 17, '578cbda528f86.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(73, 7, 'Андрей Макаревич и Александр Дитковский', 0, 18, '578cbda52af4a.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(74, 7, NULL, 0, 20, '578cbda52cdd6.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(75, 7, NULL, 0, 19, '578cbda52e6e2.jpg', '2016-07-18 14:29:41', '2016-07-18'),
(76, 7, NULL, 0, 21, '578cbde918bcb.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(77, 7, 'Александр Кутиков', 0, 22, '578cbde91b2b7.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(78, 7, NULL, 0, 23, '578cbde91dd9a.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(79, 7, 'Андрей Макаревич', 0, 24, '578cbde920432.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(80, 7, 'Андрей Державин и Александр Дитковский', 0, 25, '578cbde922fa6.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(81, 7, NULL, 0, 26, '578cbde9254d8.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(82, 7, 'Александр Кутиков', 0, 27, '578cbde927acf.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(83, 7, NULL, 0, 28, '578cbde92a465.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(84, 7, 'Игорь Хомич и Андрей Макаревич', 1, 29, '578cbde92ca83.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(85, 7, 'Андрей Макаревич', 0, 30, '578cbde92f55e.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(86, 7, 'Андрей Макаревич', 0, 31, '578cbde931af6.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(87, 7, NULL, 0, 32, '578cbde9345c6.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(88, 7, 'Игорь Хомич и Андрей Макаревич', 0, 32, '578cbde9370cd.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(89, 7, 'Александр Дитковский', 0, 33, '578cbde93951c.jpg', '2016-07-18 14:30:49', '2016-07-18'),
(144, 9, NULL, 0, 2, '57ecb77bf2d33.jpg', '2016-09-29 09:40:59', '2016-09-29'),
(145, 9, 'Андрей Макаревич', 0, 3, '57ecb77c00409.jpg', '2016-09-29 09:41:00', '2016-09-29'),
(146, 9, 'Андрей Макаревич', 0, 1, '57ecb77c01be8.jpg', '2016-09-29 09:41:00', '2016-09-29'),
(147, 9, 'Александр Кутиков', 0, 5, '57ecb77c09051.jpg', '2016-09-29 09:41:00', '1980-12-31'),
(148, 9, 'Пётр Подгородецкий', 0, 4, '57ecb7acdb4d8.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(149, 9, NULL, 0, 6, '57ecb7acdcd68.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(150, 9, NULL, 1, 7, '57ecb7acde6b0.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(151, 9, 'Пётр Подгородецкий', 0, 8, '57ecb7acdfe9f.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(152, 9, 'Пётр Подгородецкий', 0, 9, '57ecb7ace1782.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(153, 9, 'Андрей Макаревич', 0, 10, '57ecb7ace3140.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(154, 9, 'Пётр Подгородецкий', 0, 11, '57ecb7ace4b8d.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(155, 9, 'Александр Кутиков', 0, 12, '57ecb7ace64b5.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(156, 9, 'Андрей Макаревич', 0, 13, '57ecb7ace7e42.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(157, 9, 'Пётр Подгородецкий', 0, 14, '57ecb7ace97dd.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(158, 9, 'Пётр Подгородецкий', 0, 15, '57ecb7aceb005.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(159, 9, 'Пётр Подгородецкий', 0, 16, '57ecb7acec8f4.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(160, 9, 'Александр Кутиков и Пётр Подгородецкий', 0, 17, '57ecb7acee308.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(161, 9, NULL, 0, 18, '57ecb7acefc5f.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(162, 9, 'Александр Кутиков', 0, 20, '57ecb7acf156e.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(163, 9, 'Александр Кутиков', 0, 20, '57ecb7acf2f86.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(164, 9, 'Пётр Подгородецкий', 0, 21, '57ecb7ad005c0.jpg', '2016-09-29 09:41:48', '2016-09-29'),
(165, 9, NULL, 0, 19, '57ecb7ad01f97.jpg', '2016-09-29 09:41:49', '2016-09-29'),
(166, 9, NULL, 0, 19, '57ecb7ad03b15.jpg', '2016-09-29 09:41:49', '2016-09-29'),
(167, 9, 'Пётр Подгородецкий', 0, 18, '57ecb7ad054bc.jpg', '2016-09-29 09:41:49', '2016-09-29'),
(189, 11, 'Андрей Макаревич', 0, 1, '57ecb993bb34e.jpg', '2016-09-29 09:49:55', '1980-09-29'),
(191, 11, 'Андрей Макаревич', 0, 2, '57ecb9a797195.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(192, 11, 'Андрей Макаревич', 0, 3, '57ecb9a798a60.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(193, 11, 'Александр Кутиков', 0, 4, '57ecb9a79a38a.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(194, 11, 'Александр Заборовский (художник по свету)', 0, 5, '57ecb9a79bbbc.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(195, 11, NULL, 0, 6, '57ecb9a79d60d.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(196, 11, 'Александр Заборовский (художник по свету)', 0, 7, '57ecb9a79ee28.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(197, 11, 'Владимир Анашкин (директор)', 0, 9, '57ecb9a7a0618.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(198, 11, 'Александр Бутузов (Фагот)', 0, 10, '57ecb9a7a1dc9.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(199, 11, 'Владимир Анашкин (директор)', 0, 12, '57ecb9a7a34c9.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(200, 11, 'Пётр Подгородецкий', 0, 11, '57ecb9a7a4c6d.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(201, 11, 'Пётр Подгородецкий', 0, 8, '57ecb9a7a64e8.jpg', '2016-09-29 09:50:15', '2016-09-29'),
(202, 11, 'Владимир Анашкин (директор)', 0, 13, '57ecb9b97d23e.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(203, 11, NULL, 0, 14, '57ecb9b97f0fb.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(204, 11, 'Андрей Макаревич, Лариса Гуменюк,  Владимир Анашкин', 0, 16, '57ecb9b9810bb.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(205, 11, NULL, 1, 15, '57ecb9b983092.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(206, 11, 'Пётр Подгородецкий', 0, 16, '57ecb9b984ffc.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(207, 11, 'Лариса Гуменюк (подруга)', 0, 15, '57ecb9b986e9c.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(208, 11, 'Владимир Анашкин (директор)', 0, 17, '57ecb9b988cf2.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(209, 11, 'Владимир Анашкин (директор)', 0, 14, '57ecb9b98ab73.jpg', '2016-09-29 09:50:33', '2016-09-29'),
(210, 12, 'Андрей Макаревич', 0, 1, '57ecc165be27e.jpg', '2016-09-29 10:23:17', '2016-09-22'),
(212, 12, NULL, 0, 2, '57ecc1720141d.jpg', '2016-09-29 10:23:30', '2016-09-29'),
(213, 12, 'Андрей Макаревич', 0, 3, '57ecc17202bb6.jpg', '2016-09-29 10:23:30', '2016-09-29'),
(214, 12, 'Игорь Хомич', 0, 4, '57ecc172042c2.jpg', '2016-09-29 10:23:30', '2016-09-29'),
(215, 12, 'Андрей Макаревич', 0, 5, '57ecc17205a15.jpg', '2016-09-29 10:23:30', '2016-09-29'),
(216, 12, 'Игорь Хомич, Александр Кутиков', 1, 6, '57ecc17207216.jpg', '2016-09-29 10:23:30', '2016-09-29'),
(217, 12, 'Александр Градский', 0, 7, '57ecc17208a3f.jpg', '2016-09-29 10:23:30', '2016-09-29'),
(218, 12, 'Игорь Хомич', 0, 8, '57ecc1720a19a.jpg', '2016-09-29 10:23:30', '2016-09-29'),
(219, 12, 'Андрей Макаревич', 0, 9, '57ecc18247315.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(220, 12, 'Валерий Ефремов', 0, 10, '57ecc182520a1.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(221, 12, 'Андрей Макаревич', 0, 11, '57ecc18253d47.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(222, 12, 'Игорь Хомич', 0, 12, '57ecc18255a00.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(223, 12, 'Андрей Макаревич', 0, 13, '57ecc182577c8.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(224, 12, 'Андрей Державин', 0, 14, '57ecc18259458.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(225, 12, 'Александр Дитковский', 0, 15, '57ecc1825b04c.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(226, 12, 'Александр Кутиков', 0, 16, '57ecc1825cd32.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(227, 12, 'Андрей Макаревич', 0, 17, '57ecc1825e9d6.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(228, 12, NULL, 0, 18, '57ecc18260691.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(229, 12, NULL, 0, 19, '57ecc18262399.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(230, 12, 'Александр Кутиков', 0, 20, '57ecc18263fab.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(231, 12, 'Андрей Макаревич', 0, 21, '57ecc18265b7a.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(232, 12, 'Андрей Макаревич', 0, 22, '57ecc1826776d.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(233, 12, 'Игорь Хомич и Андрей Макаревич', 0, 23, '57ecc1826947f.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(234, 12, 'Игорь Хомич и Андрей Макаревич', 0, 24, '57ecc1826b700.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(235, 12, NULL, 0, 25, '57ecc1826d911.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(236, 12, 'Александр Дитковский и Андрей Державин', 0, 26, '57ecc1826f58e.jpg', '2016-09-29 10:23:46', '2016-09-29'),
(237, 13, '(справа налево) Игорь Хомич, Андрей Макаревич, Александр Кутиков, Александр Дитковский', 0, 1, '57ed0f2434ed5.jpg', '2016-09-29 15:55:00', '2016-02-20'),
(238, 13, 'Андрей Макаревич и др.', 0, 2, '57ed0f2fb15e1.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(239, 13, 'Андрей Макаревич и др.', 0, 3, '57ed0f2fb3230.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(240, 13, 'Андрей Макаревич', 0, 4, '57ed0f2fb4d47.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(241, 13, 'Игорь Хомич и Андрей Макаревич', 1, 5, '57ed0f2fb69b6.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(242, 13, '(слева направо) Игорь Хомич, Андрей Макаревич, Сергей Остроумов, Александр Кутиков', 0, 6, '57ed0f2fb8651.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(243, 13, NULL, 0, 7, '57ed0f2fba3a5.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(244, 13, 'Андрей Макаревич', 0, 8, '57ed0f2fbc006.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(245, 13, 'Александр Кутиков', 0, 9, '57ed0f2fbddb8.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(246, 13, NULL, 0, 10, '57ed0f2fbf906.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(247, 13, 'Андрей Державин', 0, 11, '57ed0f2fc1638.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(248, 13, 'Андрей Макаревич', 0, 12, '57ed0f2fc327b.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(249, 13, 'Александр Кутиков', 0, 13, '57ed0f2fc5059.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(250, 13, 'Андрей Макаревич', 0, 14, '57ed0f2fc6ae9.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(251, 13, 'Андрей Макаревич', 0, 15, '57ed0f2fc8572.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(252, 13, 'Андрей Макаревич и Андрей Державин', 0, 16, '57ed0f2fca0b6.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(253, 13, NULL, 0, 17, '57ed0f2fcbe3c.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(254, 13, 'Андрей Макаревич', 0, 18, '57ed0f2fcda30.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(255, 13, 'Андрей Макаревич', 0, 19, '57ed0f2fcf473.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(256, 13, 'Игорь Хомич', 0, 20, '57ed0f2fd1213.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(257, 13, 'Андрей Макаревич', 0, 21, '57ed0f2fd2c56.jpg', '2016-09-29 15:55:11', '2016-09-29'),
(258, 14, 'Сувенирная продукция', 1, 1, '57ed13eaf0777.jpg', '2016-09-29 16:15:22', '2016-05-25'),
(259, 14, 'Перкуссия', 0, 2, '57ed13f774b71.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(260, 14, 'Игорь Хомич', 0, 3, '57ed13f776ceb.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(261, 14, 'Игорь Хомич', 0, 4, '57ed13f778bb8.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(262, 14, 'Александр Кутиков', 0, 5, '57ed13f77aa41.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(263, 14, 'Андрей Макаревич', 0, 6, '57ed13f77c7d9.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(264, 14, 'Андрей Макаревич', 0, 7, '57ed13f77e5d3.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(265, 14, 'Андрей Макаревич', 0, 8, '57ed13f780369.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(266, 14, 'Андрей Макаревич', 0, 9, '57ed13f78218e.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(267, 14, 'Андрей Макаревич', 0, 10, '57ed13f783f40.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(268, 14, 'Андрей Макаревич', 0, 11, '57ed13f785d26.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(269, 14, 'Андрей Макаревич', 0, 12, '57ed13f787aba.jpg', '2016-09-29 16:15:35', '2016-09-29'),
(270, 14, 'Александр Кутиков', 0, 13, '57ed140dba334.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(271, 14, 'Александр Кутиков', 0, 14, '57ed140dbc86f.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(272, 14, 'Александр Кутиков', 0, 15, '57ed140dbed44.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(273, 14, 'Александр Кутиков', 0, 16, '57ed140dc12b1.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(274, 14, 'Александр Кутиков', 0, 17, '57ed140dc32d1.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(275, 14, 'Игорь Хомич, Андрей Макаревич', 0, 18, '57ed140dc53a7.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(276, 14, 'Игорь Хомич, Андрей Макаревич', 0, 19, '57ed140dc7882.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(277, 14, NULL, 0, 20, '57ed140dc9df0.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(278, 14, 'Андрей Макаревич', 0, 21, '57ed140dcc17a.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(279, 14, 'Андрей Макаревич и Александр Чернецкий', 0, 22, '57ed140dce60e.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(280, 14, 'Андрей Макаревич, Юрий Шевчук, Александр Чернецкий', 0, 23, '57ed140dd0858.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(281, 14, 'Андрей Макаревич', 0, 24, '57ed140dd28bd.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(282, 14, 'Игорь Хомич', 0, 25, '57ed140dd4ada.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(283, 14, 'Андрей Макаревич', 0, 26, '57ed140dd6b0e.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(284, 14, 'Игорь Хомич', 0, 27, '57ed140dd8d47.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(285, 14, 'Андрей Макаревич', 0, 28, '57ed140ddae6a.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(286, 14, 'Александр Кутиков', 0, 29, '57ed140ddcf11.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(287, 14, 'Александр Кутиков', 0, 30, '57ed140ddf083.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(288, 14, 'Валерий Ефремов', 0, 31, '57ed140de126b.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(289, 14, 'Андрей Макаревич', 0, 32, '57ed140de34ad.jpg', '2016-09-29 16:15:57', '2016-09-29'),
(290, 14, 'Андрей Макаревич, Юрий Шевчук', 0, 33, '57ed14b143354.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(291, 14, 'Андрей Макаревич, Юрий Шевчук, Александр Чернецкий, Сергей Галанин', 0, 34, '57ed14b146504.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(292, 14, 'Сводный коллектив музыкантов', 0, 35, '57ed14b149488.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(293, 14, 'Андрей Макаревич сотоварищи', 0, 36, '57ed14b14c08b.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(294, 14, 'Игорь Хомич', 0, 37, '57ed14b14ecf3.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(295, 14, 'Андрей Макаревич, Александр Кутиков, Александр Дитковский', 0, 38, '57ed14b151930.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(296, 14, 'Сергей Остроумов', 0, 39, '57ed14b15457c.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(297, 14, 'Игорь Хомич и Андрей Макаревич', 0, 40, '57ed14b1570f0.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(298, 14, 'Игорь Хомич', 0, 41, '57ed14b159e2c.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(299, 14, 'Игорь Хомич', 0, 42, '57ed14b15cb3c.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(300, 14, 'Сводный коллектив музыкантов', 0, 43, '57ed14b15f87f.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(301, 14, 'Александр Кутиков', 0, 44, '57ed14b1623b2.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(302, 14, 'Андрей Макаревич', 0, 45, '57ed14b164ff8.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(303, 14, 'Александр Кутиков', 0, 46, '57ed14b167baf.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(304, 14, 'Андрей Державин, Александр Кутиков', 0, 47, '57ed14b16a666.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(305, 14, 'Александр Кутиков', 0, 48, '57ed14b16d17e.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(306, 14, 'Андрей Макаревич', 0, 49, '57ed14b16fd9e.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(307, 14, 'Игорь Хомич и Андрей Макаревич', 0, 50, '57ed14b172a84.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(308, 14, 'Игорь Хомич и Андрей Макаревич', 0, 51, '57ed14b175797.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(309, 14, 'Андрей Макаревич', 0, 52, '57ed14b178356.jpg', '2016-09-29 16:18:41', '2016-09-29'),
(310, 14, 'Андрей Макаревич', 0, 53, '57ed1511a7fdc.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(311, 14, 'Игорь Хомич', 0, 54, '57ed1511b5c89.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(312, 14, 'Андрей Макаревич', 0, 55, '57ed1511b959f.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(313, 14, 'Андрей Макаревич', 0, 56, '57ed1511bcdb3.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(314, 14, 'Игорь Хомич', 0, 57, '57ed1511c071f.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(315, 14, 'Андрей Макаревич', 0, 58, '57ed1511c3ff6.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(316, 14, 'Андрей Макаревич', 0, 59, '57ed1511c77ab.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(317, 14, 'Александр Кутиков', 0, 60, '57ed1511caf28.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(318, 14, 'Александр Кутиков', 0, 61, '57ed1511ce622.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(319, 14, 'Александр Кутиков', 0, 62, '57ed1511d1dc2.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(320, 14, 'Александр Кутиков', 0, 63, '57ed1511d558d.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(321, 14, 'Андрей Макаревич', 0, 64, '57ed1511d8c60.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(322, 14, 'Андрей Макаревич', 0, 65, '57ed1511dc355.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(323, 14, 'Андрей Макаревич', 0, 66, '57ed1511dfa2c.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(324, 14, 'Андрей Макаревич', 0, 67, '57ed1511e309a.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(325, 14, 'Андрей Макаревич', 0, 68, '57ed1511e67e6.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(326, 14, 'Андрей Макаревич', 0, 69, '57ed1511ea212.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(327, 14, 'Андрей Макаревич', 0, 70, '57ed1511edd59.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(328, 14, 'Андрей Макаревич сотоварищи', 0, 71, '57ed1511f1a8c.jpg', '2016-09-29 16:20:17', '2016-09-29'),
(329, 14, 'Андрей Макаревич', 0, 72, '57ed1512011a7.jpg', '2016-09-29 16:20:18', '2016-09-29'),
(330, 14, 'Андрей Макаревич сотоварищи', 0, 73, '57ed153ed0651.jpg', '2016-09-29 16:21:02', '2016-09-29'),
(331, 14, 'Андрей Макаревич', 0, 74, '57ed153ed74c5.jpg', '2016-09-29 16:21:02', '2016-09-29'),
(332, 14, 'Александр Кутиков', 0, 75, '57ed153edde5c.jpg', '2016-09-29 16:21:02', '2016-09-29'),
(333, 14, 'Андрей Макаревич', 0, 76, '57ed153ee2d0f.jpg', '2016-09-29 16:21:02', '2016-09-29'),
(334, 14, 'Андрей Макаревич', 0, 77, '57ed153ee75be.jpg', '2016-09-29 16:21:02', '2016-09-29'),
(335, 14, 'Александр Кутиков', 0, 78, '57ed153eebdc3.jpg', '2016-09-29 16:21:02', '2016-09-29'),
(336, 14, 'Андрей Макаревич', 0, 79, '57ed153ef0b96.jpg', '2016-09-29 16:21:02', '2016-09-29'),
(337, 14, 'Андрей Макаревич', 0, 80, '57ed153f014f1.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(338, 14, 'Андрей Макаревич сотоварищи', 0, 81, '57ed153f05ed8.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(339, 14, 'Андрей Макаревич', 0, 82, '57ed153f0a711.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(340, 14, 'Андрей Макаревич', 0, 83, '57ed153f0ef0b.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(341, 14, 'Андрей Макаревич', 0, 84, '57ed153f13627.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(342, 14, 'Андрей Державин, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 85, '57ed153f17dc2.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(343, 14, 'Андрей Макаревич и Александр Кутиков', 0, 86, '57ed153f1c647.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(344, 14, 'Андрей Макаревич', 0, 87, '57ed153f21026.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(345, 14, 'Андрей Макаревич', 0, 88, '57ed153f25b57.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(346, 14, 'Александр Чернецкий и Андрей Макаревич', 0, 89, '57ed153f2a2f0.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(347, 14, 'Андрей Макаревич', 0, 90, '57ed153f2e8ba.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(348, 14, 'Игорь Хомич и Андрей Макаревич', 0, 91, '57ed153f3303f.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(349, 14, 'Андрей Макаревич', 0, 92, '57ed153f377ec.jpg', '2016-09-29 16:21:03', '2016-09-29'),
(350, 14, 'Александр Чернецкий и Андрей Макаревич', 0, 93, '57ed156a7cbc7.jpg', '2016-09-29 16:21:46', '2016-09-29'),
(351, 14, 'Андрей Макаревич сотоварищи', 0, 94, '57ed156a8212b.jpg', '2016-09-29 16:21:46', '2016-09-29'),
(352, 14, 'Андрей Макаревич', 0, 95, '57ed156a873d5.jpg', '2016-09-29 16:21:46', '2016-09-29'),
(353, 14, 'Игорь Хомич и Андрей Макаревич', 0, 96, '57ed156a8c8e8.jpg', '2016-09-29 16:21:46', '2016-09-29'),
(354, 14, 'Андрей Державин, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 97, '57ed156a91d26.jpg', '2016-09-29 16:21:46', '2016-09-29'),
(355, 14, 'Александр Кутиков', 0, 98, '57ed156a9702b.jpg', '2016-09-29 16:21:46', '2016-09-29'),
(356, 15, 'Александр Кутиков, Александр Чернецкий, Андрей Макаревич', 1, 1, '57ed1aafda098.jpg', '2016-09-29 16:44:15', '2013-10-10'),
(357, 15, 'Игорь Хомич, Андрей Макаревич, Александр Кутиков, Александр Дитковский', 0, 2, '57ed1ad54f8b9.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(358, 15, 'Андрей Макаревич', 0, 3, '57ed1ad55137a.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(359, 15, 'Игорь Хомич и Андрей Макаревич', 0, 4, '57ed1ad55324b.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(360, 15, 'Андрей Державин, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 5, '57ed1ad554f28.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(361, 15, 'Александр Кутиков', 0, 6, '57ed1ad556b6e.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(362, 15, 'Андрей Макаревич', 0, 7, '57ed1ad5582eb.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(363, 15, 'Игорь Хомич', 0, 8, '57ed1ad559b1a.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(364, 15, 'Александр Кутиков, Александр Дитковский', 0, 9, '57ed1ad55b279.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(365, 15, 'Андрей Державин, Андрей Макаревич', 0, 10, '57ed1ad55c97b.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(366, 15, 'Александр Кутиков, Александр Дитковский', 0, 11, '57ed1ad55e00d.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(367, 15, 'Игорь Хомич и Андрей Макаревич', 0, 12, '57ed1ad55f879.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(368, 15, 'Игорь Хомич, Андрей Макаревич, Александр Кутиков (обнимает товарища), Андрей Державин, Валерий Ефремов, Александр Дитковский', 0, 13, '57ed1ad5611bb.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(369, 15, 'Андрей Макаревич', 0, 14, '57ed1ad5628fb.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(370, 15, NULL, 0, 15, '57ed1ad563f12.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(371, 15, NULL, 0, 16, '57ed1ad56554a.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(372, 15, NULL, 0, 17, '57ed1ad566b7b.jpg', '2016-09-29 16:44:53', '2016-09-29'),
(373, 16, '(слева направо: Андрей Макаревич, Сергей Рыженко, Александр Кутиков, Валерий Ефремов. Александр Зайцев (горизонтально)', 1, 1, '57f3adefd45ff.jpg', '2016-10-04 16:26:07', '1982-10-04'),
(374, 16, '(слева направо, стоят) Сергей Рыженко, Александр Зайцев, Андрей Макаревич; (сидят) Валерий Ефремов, Александр Кутиков', 0, 2, '57f3adfa5c2b2.jpg', '2016-10-04 16:26:18', '2016-10-04'),
(375, 16, '(слева направо) Александр Зайцев, Сергей Рыженко, Андрей Макаревич, Александр Кутиков, Валерий Ефремов', 0, 3, '57f3adfa63395.jpg', '2016-10-04 16:26:18', '2016-10-04'),
(376, 16, '(слева направо) Сергей Рыженко, Валерий Ефремов, Андрей Макаревич, Александр Кутиков, Александр Зайцев', 0, 4, '57f3adfa64ca7.jpg', '2016-10-04 16:26:18', '2016-10-04'),
(377, 16, '(слева направо) Александр Кутиков, Сергей Рыженко, Андрей Макаревич, Александр Зайцев, Валерий Ефремов', 0, 5, '57f3adfa66658.jpg', '2016-10-04 16:26:18', '2016-10-04'),
(378, 16, '(слева направо) Сергей Рыженко, Валерий Ефремов, Андрей Макаревич, Александр Кутиков, Александр Зайцев', 0, 6, '57f3adfa67fc9.jpg', '2016-10-04 16:26:18', '2016-10-04'),
(379, 16, 'Сергей Рыженко', 0, 7, '57f3adfa69a29.jpg', '2016-10-04 16:26:18', '2016-10-04'),
(380, 17, '(слева направо) Андрей Макаревич, Сергей Рыженко, Валерий Ефремов, Александр Кутиков', 1, 1, '57f3b03c3b063.jpg', '2016-10-04 16:35:56', '1983-10-07'),
(381, 17, 'Андрей Макаревич и Ко', 0, 2, '57f3b06350b90.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(382, 17, 'Рыбинск-1983,  (слева направо) Сергей Рыженко, Андрей Макаревич, Александр Кутиков, Александр Зайцев, Валерий Ефремов', 0, 3, '57f3b063524f0.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(383, 17, '(слева направо) Валерий Ефремов, Андрей Макаревич, Сергей Рыженко, Александр Кутиков, Александр Зайцев', 0, 4, '57f3b06353d7b.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(384, 17, '(слева направо) Валерий Ефремов, Сергей Рыженко, Андрей Макаревич, Александр Кутиков, Александр Зайцев', 0, 5, '57f3b063553c4.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(386, 17, 'Ленинград, июль 1982 года. (слева направо)?, Андрей Макаревич, Сергей Рыженко, ?, Александр Зайцев, Александр Кутиков (за рулём), Валерий Ефремов, ?', 0, 6, '57f3b063580ea.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(387, 17, '(слева направо) Александр Зайцев, Валерий Ефремов, Андрей Макаревич, Александр Кутиков, Сергей Рыженко', 0, 7, '57f3b063598ba.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(388, 17, 'Электросталь-1982', 0, 8, '57f3b0635af9b.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(389, 17, 'Ленинград, июль 1982 года. (слева направо) Александр Зайцев, Валерий Ефремов, Андрей Макаревич, ?, Александр Кутиков, Сергей Рыженко, ?', 0, 9, '57f3b0635c66b.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(390, 17, '(слева направо) Сергей Рыженко, Андрей Макаревич, Александр Кутиков', 0, 10, '57f3b0635de1d.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(391, 17, '(слева направо) Андрей Макаревич, Александр Зайцев, Сергей Рыженко, Валерий Ефремов, Александр Кутиков', 0, 11, '57f3b0635f736.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(393, 17, 'Владивосток, лето 1983 (слева направо) Сергей Рыженко, Александр Кутиков, Андрей Макаревич, Александр Зайцев, Валерий Ефремов', 0, 12, '57f3b06363022.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(394, 17, 'Владивосток, лето 1983 (слева направо) Сергей Рыженко, Андрей Макаревич, Валерий Ефремов, Александр Кутиков, Александр Зайцев', 0, 13, '57f3b06364e1d.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(396, 17, '(слева направо) Андрей Макаревич, Сергей Рыженко, Александр Кутиков, Валерий Ефремов, Александр Зайцев', 0, 14, '57f3b06367e06.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(399, 17, '(слева направо) Андрей Макаревич, Сергей Рыженко, Валерий Ефремов, Александр Кутиков, Александр Зайцев', 0, 15, '57f3b0636d6c0.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(400, 17, '(слева направо) Сергей Рыженко, Александр Кутиков, Андрей Макаревич, Валерий Ефремов, Александр Зайцев', 0, 16, '57f3b0636f4b6.jpg', '2016-10-04 16:36:35', '2016-10-04'),
(402, 17, 'Владивосток, лето 1983 (слева направо) Александр Кутиков, Валерий Ефремов, Андрей Макаревич, Александр Зайцев, Сергей Рыженко', 0, 17, '57f3b08b40dba.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(403, 17, '(слева направо) Александр Зайцев, Александр Кутиков, Валерий Ефремов, Андрей Макаревич, Сергей Рыженко', 0, 18, '57f3b08b436d0.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(404, 17, '(слева направо) Андрей Макаревич, Сергей Рыженко, Валерий Ефремов, Александр Кутиков', 0, 19, '57f3b08b45d8c.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(405, 17, '(слева направо) ?, Александр Зайцев, Валерий Ефремов, Андрей Макаревич', 0, 20, '57f3b08b485b6.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(406, 17, '(слева направо) Александр Зайцев, Валерий Ефремов, Андрей Макаревич, Сергей Рыженко', 0, 22, '57f3b08b4af2c.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(407, 17, 'Владивосток, лето 1983 (слева направо) Сергей Рыженко, Андрей Макаревич, Александр Кутиков, Валерий Ефремов', 0, 23, '57f3b08b4d1c6.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(408, 17, 'Вильнюс-1982', 0, 24, '57f3b08b4fbfd.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(410, 17, 'Вильнюс-1982', 0, 26, '57f3b08b54c54.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(411, 17, 'Сергей Рыженко и Александр Кутиков', 0, 27, '57f3b08b572c7.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(412, 17, 'Электросталь-1982 (слева направо) Андрей Макаревич, Валерий Ефремов, Сергей Рыженко, Александр Зайцев, Александр Кутиков', 0, 28, '57f3b08b59633.jpg', '2016-10-04 16:37:15', '2016-10-04'),
(413, 18, '1989 г. Валерий Ефремов, Андрей Макаревич, Александр Кутиков, Александр Зайцев', 1, 1, '58010e177c392.jpg', '2016-10-14 19:55:51', '2016-10-14'),
(421, 18, '1982, лето. Андрей Макаревич, Александр Кутиков', 0, 2, '580116e25c92e.jpg', '2016-10-14 20:33:22', '2016-10-14'),
(422, 18, '1985, Москва ЦДТ. Валерий Ефремов, Александр Зайцев, Андрей Макаревич, Александр Кутиков', 0, 3, '580117d46d335.jpg', '2016-10-14 20:37:24', '2016-10-14'),
(423, 18, '1982, лето. Сергей Рыженко, Андрей Макаревич, Александр Кутиков, Александр Зайцев', 0, 5, '580117d46f56e.jpg', '2016-10-14 20:37:24', '2016-10-14'),
(424, 18, '1984. Москва. Фотосессия. Валерий Ефремов, Александр Зайцев, Александр Кутиков. Андрей Макаревич (у штурвала)', 0, 4, '580117d4716b0.jpg', '2016-10-14 20:37:24', '2016-10-14'),
(425, 18, '1984, гастроли, после концерта. Валерий Ефремов, Александр Зайцев, Александр Кутиков, Андрей Макаревич', 0, 7, '5801191e188d4.jpg', '2016-10-14 20:42:54', '2016-10-14'),
(426, 18, '1981, весна. Ташкент. Валерий Ефремов, Ованес Мелик-Пашаев, Петр Подгородецкий, Андрей Макаревич, Александр Кутиков', 0, 6, '5801191e231a6.jpg', '2016-10-14 20:42:54', '2016-10-14'),
(427, 18, '1981, Сочи. Ованес Мелик-Пашаев, Петр Подгородецкий, Валерий Ефремов, Андрей Макаревич, Александр Кутиков, Александр Бутузов', 0, 9, '580119a2d3f1c.jpg', '2016-10-14 20:45:06', '2016-10-14'),
(428, 18, '1988. Пробы на плакат или афишу. Александр Зайцев, Андрей Макаревич, Валерий Ефремов. Александр Кутиков (внизу)', 0, 8, '580119a2d64ae.jpg', '2016-10-14 20:45:06', '2016-10-14'),
(429, 18, 'Александр Кутиков, Андрей Макаревич, Александр Зайцев, Валерий Ефремов', 0, 11, '58011a2884355.jpg', '2016-10-14 20:47:20', '2016-10-14'),
(430, 18, '1980 Питер. Андрей Макаревич, Валерий Ефремов, Александр Кутиков', 0, 10, '58011a2886a10.jpg', '2016-10-14 20:47:20', '2016-10-14'),
(431, 18, '1981. Москва. Фотосессия. (стоят) Пётр Подгородецкий, Ованес Мелик-Пашаев; (сидят) Андрей Макаревич, Александр Кутиков, Валерий Ефремов', 0, 12, '58011b71963c5.jpg', '2016-10-14 20:52:49', '2016-10-14'),
(432, 18, '1984, съемки для телевидения. (у рояля) Валерий Ефремов; Андрей Макаревич, Александр Кутиков, Александр Зайцев', 0, 14, '58011b7198b68.jpg', '2016-10-14 20:52:49', '2016-10-14'),
(433, 18, '1982 г. Андрей Макаревич, Александр Кутиков, Валерий Ефремов, Сергей Рыженко; (внизу) Александр Зайцев', 0, 13, '58011b719b22c.jpg', '2016-10-14 20:52:49', '2016-10-14'),
(434, 18, '1980-81 г. Андрей Макаревич, Валерий Ефремов, Пётр Подгородецкий, Александр Котиков', 0, 16, '58011c630bc63.jpg', '2016-10-14 20:56:51', '2016-10-14'),
(435, 18, '1986-87 год. Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 15, '58011c630e5f8.jpg', '2016-10-14 20:56:51', '2016-10-14'),
(436, 18, '1980. Питер. Валерий Ефремов, Ованес Мелик-Пашаев, Андрей Макаревич, Александр Кутиков, Пётр Подгородецкий', 0, 17, '58011cc879626.jpg', '2016-10-14 20:58:32', '2016-10-14'),
(437, 18, '1981. Москва. Фотосессия. Ованес Мелик-Пашаев, Александр Кутиков, Андрей Макаревич, Пётр Подгородецкий, Валерий Ефремов', 0, 18, '58011cc88472a.jpg', '2016-10-14 20:58:32', '2016-10-14'),
(438, 18, '1982. Александр Кутиков, Александр Зайцев, Андрей Макаревич, Валерий Ефремов', 0, 21, '58011d482d5ab.jpg', '2016-10-14 21:00:40', '2016-10-14'),
(439, 18, '1984, Питер, набережная. Александр Кутиков, Петр Подгородецкий, Андрей Макаревич, Валерий Ефремов', 0, 21, '58011d483016e.jpg', '2016-10-14 21:00:40', '2016-10-14'),
(440, 18, '1987. Александр Кутиков, Валерий Ефремов, Андрей Макаревич, Александр Зайцев', 0, 19, '58011dc4b4b7b.jpg', '2016-10-14 21:02:44', '2016-10-14'),
(442, 18, '1993. "Внештатный Командир Земли".  Пётр Подгородецкий, Андрей Макаревич, Александр Кутиков, Евгений Маргулис, Валерий Ефремов', 0, 22, '58011e89bcf62.jpg', '2016-10-14 21:06:01', '2016-10-14'),
(443, 18, 'Сергей Рыженко, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 20, '58011e89bfda4.jpg', '2016-10-14 21:06:01', '2016-10-14'),
(444, 19, 'Валерий Ефремов', 0, 1, '580f253204cd6.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(445, 19, 'Александр Кутиков', 0, 2, '580f253206b97.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(446, 19, 'Андрей Макаревич, Валерий Ефремов, Александр Кутиков, Александр Зайцев', 0, 3, '580f253208737.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(447, 19, 'Андрей Макаревич', 0, 4, '580f25320a5d2.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(448, 19, 'Валерий Ефремов, ?', 0, 5, '580f25320c429.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(449, 19, 'Андрей Макаревич', 0, 6, '580f25320e329.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(450, 19, 'Александр Кутиков, ?, Александр Зайцев', 0, 7, '580f2532101b8.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(451, 19, 'Андрей Макаревич', 0, 8, '580f253211fdb.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(452, 19, 'Александр Кутиков, Александр Зайцев', 0, 9, '580f253213e47.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(453, 19, 'Валерий Ефремов', 0, 10, '580f253215cc1.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(454, 19, 'Александр Зайцев', 0, 11, '580f253217b22.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(455, 19, 'Андрей Макаревич', 0, 12, '580f25321998a.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(456, 19, 'Александр Кутиков', 0, 13, '580f25321b804.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(457, 19, 'Андрей Макаревич', 0, 14, '580f25321d54e.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(458, 19, 'Андрей Макаревич', 0, 14, '580f25321f3c4.jpg', '2016-10-25 12:26:10', '2016-10-25'),
(460, 20, NULL, 1, 0, '580f25ff24699.jpg', '2016-10-25 12:29:35', '2016-10-25'),
(461, 20, NULL, 0, 0, '580f25ff25f21.jpg', '2016-10-25 12:29:35', '2016-10-25'),
(462, 21, NULL, 1, 0, '580f274f0ab1b.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(463, 21, NULL, 0, 1, '580f274f0c3c8.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(464, 21, NULL, 0, 2, '580f274f0dd7d.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(465, 21, NULL, 0, 3, '580f274f0f5cf.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(466, 21, NULL, 0, 4, '580f274f10e2a.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(467, 21, NULL, 0, 5, '580f274f126bd.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(468, 21, NULL, 0, 6, '580f274f13f20.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(469, 21, NULL, 0, 7, '580f274f157fe.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(470, 21, NULL, 0, 8, '580f274f16fff.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(471, 21, NULL, 0, 9, '580f274f1876b.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(472, 21, NULL, 0, 10, '580f274f19eae.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(473, 21, NULL, 0, 11, '580f274f1b5a5.jpg', '2016-10-25 12:35:11', '2016-10-25'),
(474, 19, 'Андрей Макаревич, Александр Кутиков, Александр Зайцев', 1, 15, '580fa5580b191.jpg', '2016-10-25 21:32:56', '2016-10-25'),
(475, 22, 'Андрей Макаревич, Александр Кутиков', 0, 1, '580fa7bab6cb7.jpg', '2016-10-25 21:43:06', '2016-10-25'),
(476, 22, 'Андрей Макаревич, Клара Фатова', 0, 2, '580fa7e4ac6f4.jpg', '2016-10-25 21:43:48', '2016-10-25'),
(477, 22, 'Александр Зайцев, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 3, '580fa7e4ae740.jpg', '2016-10-25 21:43:48', '2016-10-25'),
(478, 22, 'Валерий Ефремов, Александр Кутиков, Андрей Макаревич, Александр Зайцев', 0, 5, '580fa7e4b06e2.jpg', '2016-10-25 21:43:48', '2016-10-25'),
(479, 22, 'Александр Зайцев, Александр Кутиков, Валерий Ефремов, Андрей Макаревич', 0, 4, '580fa7e4b25e4.jpg', '2016-10-25 21:43:48', '2016-10-25'),
(484, 22, 'Валерий Ефремов, Александр Кутиков, Андрей Макаревич, Александр Зайцев', 0, 6, '580fa8454c714.jpg', '2016-10-25 21:45:25', '2016-10-25'),
(485, 22, 'Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 8, '580fa8454e705.jpg', '2016-10-25 21:45:25', '2016-10-25'),
(486, 22, 'Александр Зайцев, Андрей Макаревич, Валерий Ефремов, Александр Кутиков', 0, 7, '580fa845506b2.jpg', '2016-10-25 21:45:25', '2016-10-25'),
(488, 22, 'Александр Зайцев, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 9, '580fa878bf66f.jpg', '2016-10-25 21:46:16', '2016-10-25'),
(489, 22, 'Александр Кутиков, Андрей Макаревич', 0, 10, '580fa878c1a3c.jpg', '2016-10-25 21:46:16', '2016-10-25'),
(490, 22, NULL, 0, 11, '580fa8b2ce48a.jpg', '2016-10-25 21:47:14', '2016-10-25'),
(491, 22, 'Александр Зайцев, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 13, '580fa8b2d0810.jpg', '2016-10-25 21:47:14', '2016-10-25'),
(492, 22, 'Андрей Макаревич, Александр Кутиков, Александр Зайцев, Валерий Ефремов', 1, 12, '580fa8b2d2b4f.jpg', '2016-10-25 21:47:14', '2016-10-25'),
(493, 22, 'Александр Кутиков', 0, 14, '580fa8b2d4eca.jpg', '2016-10-25 21:47:14', '2016-10-25'),
(494, 22, 'Андрей Макаревич, ?, Александр Кутиков', 0, 15, '580fa8fa0cc9b.jpg', '2016-10-25 21:48:26', '2016-10-25'),
(495, 22, 'Андрей Макаревич, Александр Кутиков', 0, 19, '580fa8fa0f350.jpg', '2016-10-25 21:48:26', '2016-10-25'),
(496, 22, '?, Александр Зайцев, Валерий Ефремов, Андрей Макаревич, Александр Кутиков', 0, 16, '580fa8fa1194a.jpg', '2016-10-25 21:48:26', '2016-10-25'),
(497, 22, NULL, 0, 17, '580fa8fa13f4f.jpg', '2016-10-25 21:48:26', '2016-10-25'),
(498, 22, 'Валерий Ефремов, Александр Кутиков, Андрей Макаревич, Александр Зайцев, Клара Фатова', 0, 18, '580fa8fa16595.jpg', '2016-10-25 21:48:26', '2016-10-25'),
(499, 22, 'Андрей Макаревич, Александр Кутиков, ?', 0, 20, '5810c4a5ad7ec.jpg', '2016-10-26 17:58:45', '2016-10-26'),
(500, 22, '?, Андрей Макаревич, Сергей Рыженко, Александр Кутиков, ?', 0, 19, '5810c4a5b24f7.jpg', '2016-10-26 17:58:45', '2016-10-26'),
(501, 22, 'Андрей Макаревич, Сергей Рыженко, Александр Кутиков, Валерий Ефремов,  Александр Зайцев, ?', 0, 18, '5810c4a5b4a88.jpg', '2016-10-26 17:58:45', '2016-10-26'),
(505, 23, 'Александр Кутиков', 0, 3, '5810d312a0581.jpg', '2016-10-26 19:00:18', '2016-10-26'),
(506, 23, 'Александр (Фагот) Бутузов, Александр Кутиков', 0, 1, '5810d312a20ef.jpg', '2016-10-26 19:00:18', '2016-10-26'),
(507, 23, 'Андрей Макаревич', 0, 5, '5810d33e67ff0.jpg', '2016-10-26 19:01:02', '2016-10-26'),
(508, 23, 'Андрей Макаревич', 0, 6, '5810d33e6a045.jpg', '2016-10-26 19:01:02', '2016-10-26'),
(509, 23, 'Андрей Макаревич', 1, 7, '5810d33e6c06d.jpg', '2016-10-26 19:01:02', '2016-10-26'),
(510, 23, 'Андрей Макаревич', 0, 9, '5810d33e6ebf1.jpg', '2016-10-26 19:01:02', '2016-10-26'),
(511, 23, 'Андрей Макаревич', 0, 8, '5810d33e71759.jpg', '2016-10-26 19:01:02', '2016-10-26'),
(515, 23, 'Андрей Макаревич', 0, 12, '5810d373020f5.jpg', '2016-10-26 19:01:55', '2016-10-26'),
(516, 23, 'Андрей Макаревич', 0, 11, '5810d37304121.jpg', '2016-10-26 19:01:55', '2016-10-26'),
(517, 23, 'Андрей Макаревич', 0, 13, '5810d3aa61585.jpg', '2016-10-26 19:02:50', '2016-10-26'),
(518, 23, 'Андрей Макаревич', 0, 15, '5810d3aa6396b.jpg', '2016-10-26 19:02:50', '2016-10-26'),
(519, 23, 'Андрей Макаревич, Александр Кутиков', 0, 16, '5810d3aa65f80.jpg', '2016-10-26 19:02:50', '2016-10-26'),
(520, 23, 'Андрей Макаревич, Александр Кутиков', 0, 14, '5810d3aa6856e.jpg', '2016-10-26 19:02:50', '2016-10-26'),
(521, 23, 'Андрей Макаревич, Валерий Ефремов, Александр Кутиков', 0, 10, '5810d3aa6aaf5.jpg', '2016-10-26 19:02:50', '2016-10-26'),
(522, 23, 'Андрей Макаревич, Валерий Ефремов', 0, 17, '5810d3db36fa9.jpg', '2016-10-26 19:03:39', '2016-10-26'),
(523, 23, 'Александр Кутиков', 0, 18, '5810d3db397cf.jpg', '2016-10-26 19:03:39', '2016-10-26'),
(524, 23, 'Александр Кутиков, Пётр Подгородецкий', 0, 19, '5810d3db3c20a.jpg', '2016-10-26 19:03:39', '2016-10-26'),
(525, 23, 'Андрей Макаревич, Валерий Ефремов', 0, 21, '5810d54585479.jpg', '2016-10-26 19:09:41', '2016-10-26'),
(526, 23, 'Андрей Макаревич, Валерий Ефремов', 0, 18, '5810d54587c43.jpg', '2016-10-26 19:09:41', '2016-10-26'),
(527, 23, 'Александр Кутиков', 0, 22, '5810d5458a37b.jpg', '2016-10-26 19:09:41', '2016-10-26'),
(528, 23, 'Пётр Подгородецкий', 0, 20, '5810d5458cc80.jpg', '2016-10-26 19:09:41', '2016-10-26'),
(529, 23, 'Валерий Ефремов', 0, 16, '5810d5458f6c1.jpg', '2016-10-26 19:09:41', '2016-10-26'),
(530, 23, 'Пётр Подгородецкий', 0, 23, '5810d5727aecd.jpg', '2016-10-26 19:10:26', '2016-10-26'),
(531, 23, 'Пётр Подгородецкий', 0, 24, '5810d5727dc0a.jpg', '2016-10-26 19:10:26', '2016-10-26'),
(532, 23, 'Александр Кутиков', 0, 25, '5810d5728065f.jpg', '2016-10-26 19:10:26', '2016-10-26'),
(533, 23, 'Андрей Макаревич', 0, 23, '5810d57282f76.jpg', '2016-10-26 19:10:26', '2016-10-26'),
(534, 23, 'Александр Кутиков', 0, 24, '5810d572859a9.jpg', '2016-10-26 19:10:26', '2016-10-26'),
(535, 23, 'Андрей Макаревич', 0, 24, '5810d57288343.jpg', '2016-10-26 19:10:26', '2016-10-26'),
(536, 24, 'Александр Зайцев, Валерий Ефремов, Александр Кутиков, Андрей Макаревич', 0, 1, '5810dbbe8ead5.jpg', '2016-10-26 19:37:18', '2016-10-26'),
(537, 24, 'Александр Зайцев, Валерий Ефремов, Александр Кутиков, Андрей Макаревич', 0, 2, '5810dbe5bda09.jpg', '2016-10-26 19:37:57', '2016-10-26'),
(538, 24, 'Александр Зайцев, Валерий Ефремов, Александр Кутиков, Андрей Макаревич', 0, 3, '5810dbe5c585a.jpg', '2016-10-26 19:37:57', '2016-10-26'),
(539, 24, 'Валерий Ефремов, Максим Капитановский, Александр Кутиков, Александр Зайцев', 0, 4, '5810dbe5c74c9.jpg', '2016-10-26 19:37:57', '2016-10-26'),
(540, 24, 'Максим Капитановский, Андрей Макаревич, Валерий Ефремов, Александр Кутиков, Александр Зайцев', 1, 5, '5810dbe5c9154.jpg', '2016-10-26 19:37:57', '2016-10-26'),
(541, 24, 'Александр Кутиков, Андрей Макаревич, Максим Капитановский, Валерий Ефремов, Александр Зайцев', 0, 7, '5810dbe5cad61.jpg', '2016-10-26 19:37:57', '2016-10-26'),
(542, 24, 'Александр Зайцев, Валерий Ефремов, Александр Кутиков, Андрей Макаревич', 0, 6, '5810dbe5cc939.jpg', '2016-10-26 19:37:57', '2016-10-26'),
(546, 24, 'Андрей Макаревич, Александр Кутиков, Максим Капитановский (впереди), Александр Зайцев, Валерий Ефремов (сзади)', 0, 8, '5810dc07e9eff.jpg', '2016-10-26 19:38:31', '2016-10-26'),
(547, 24, 'Александр Зайцев, Валерий Ефремов, Александр Кутиков, Андрей Макаревич', 0, 7, '5810dc07eba42.jpg', '2016-10-26 19:38:31', '2016-10-26'),
(550, 25, 'Андрей Макаревич, Михаил Боярский', 0, 1, '5810e001c91a7.jpg', '2016-10-26 19:55:29', '2016-10-26'),
(551, 25, 'Андрей Макаревич, Александр Кутиков', 0, 2, '5810e0200d8f6.jpg', '2016-10-26 19:56:00', '2016-10-26'),
(552, 25, 'Андрей Макаревич', 0, 3, '5810e0200f00f.jpg', '2016-10-26 19:56:00', '2016-10-26'),
(553, 25, 'Александр Кутиков', 0, 4, '5810e0201076b.jpg', '2016-10-26 19:56:00', '2016-10-26'),
(554, 25, 'Александр Кутиков', 0, 5, '5810e02011eb0.jpg', '2016-10-26 19:56:00', '2016-10-26'),
(555, 25, 'Валерий Ефремов', 0, 6, '5810e02013a88.jpg', '2016-10-26 19:56:00', '2016-10-26'),
(556, 25, 'Андрей Макаревич, Александр Кутиков', 0, 8, '5810e02015394.jpg', '2016-10-26 19:56:00', '2016-10-26'),
(557, 25, 'Андрей Макаревич, Александр Кутиков', 0, 7, '5810e0201703d.jpg', '2016-10-26 19:56:00', '2016-10-26'),
(558, 25, 'Александр Кутиков, София Ротару, Андрей Макаревич', 0, 9, '5810e04170d8a.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(559, 25, 'Александр Кутиков, Михаил Боярский, Андрей Макаревич', 0, 10, '5810e04172aaa.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(560, 25, 'Андрей Макаревич, Александр Кутиков', 0, 11, '5810e04174704.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(561, 25, 'Александр Кутиков', 0, 12, '5810e0417655d.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(562, 25, 'Андрей Макаревич, Михаил Боярский', 0, 13, '5810e0417856e.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(563, 25, 'Андрей Макаревич, Валерий Ефремов, Александр Кутиков, Пётр Подгородецкий', 1, 14, '5810e0417a7ec.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(564, 25, 'Пётр Подгородецкий', 0, 15, '5810e0417c4be.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(565, 25, 'Андрей Макаревич', 0, 16, '5810e0417dfd2.jpg', '2016-10-26 19:56:33', '2016-10-26'),
(567, 26, NULL, 1, 1, '58110403e55b7.jpg', '2016-10-26 22:29:07', '2016-10-26'),
(568, 26, NULL, 0, 3, '58110568aafd3.jpg', '2016-10-26 22:35:04', '2016-10-26'),
(569, 26, NULL, 0, 2, '58110568acf6c.jpg', '2016-10-26 22:35:04', '2016-10-26'),
(570, 26, NULL, 0, 4, '581105d2ae1b2.jpg', '2016-10-26 22:36:50', '2016-10-26'),
(571, 26, NULL, 0, 3, '581105d2b004e.jpg', '2016-10-26 22:36:50', '2016-10-26'),
(572, 26, NULL, 0, 5, '5811061eec95e.jpg', '2016-10-26 22:38:06', '2016-10-26'),
(573, 27, 'Евгений Маргулис, Валерий Ефремов, Андрей Макаревич, Андрей Державин, Александр Кутиков', 0, 1, '581106eb44b2b.jpg', '2016-10-26 22:41:31', '2016-10-26'),
(574, 27, 'Андрей Державин, Евгений Маргулис, Валерий Ефремов (верхний ряд) Андрей Макаревич, Александр Кутиков (нижний ряд)', 1, 2, '5811073733638.jpg', '2016-10-26 22:42:47', '2016-10-26'),
(575, 27, 'Евгений Маргулис, Валерий Ефремов, Андрей Макаревич, Андрей Державин, Александр Кутиков', 0, 4, '5811073735665.jpg', '2016-10-26 22:42:47', '2016-10-26'),
(576, 27, 'Евгений Маргулис, Валерий Ефремов, Андрей Макаревич, Андрей Державин, Александр Кутиков', 0, 3, '58110737375aa.jpg', '2016-10-26 22:42:47', '2016-10-26'),
(577, 27, 'Александр Кутиков', 0, 5, '5811078700742.jpg', '2016-10-26 22:44:06', '2016-10-26'),
(578, 27, 'Александр Кутиков', 0, 7, '581107870268d.jpg', '2016-10-26 22:44:07', '2016-10-26'),
(579, 27, 'Андрей Макаревич', 0, 6, '5811078704554.jpg', '2016-10-26 22:44:07', '2016-10-26'),
(580, 27, 'Андрей Державин', 0, 8, '5811082b1c6cf.jpg', '2016-10-26 22:46:51', '2016-10-26'),
(581, 27, 'Андрей Державин', 0, 9, '5811082b1e90e.jpg', '2016-10-26 22:46:51', '2016-10-26'),
(582, 27, 'Александр Кутиков', 0, 10, '5811082b206d1.jpg', '2016-10-26 22:46:51', '2016-10-26'),
(583, 27, 'Александр Кутиков, Андрей Державин, Евгений Маргулис, Андрей Макаревич, Валерий Ефремов', 0, 11, '58110a1c2787a.jpg', '2016-10-26 22:55:08', '2016-10-26');
INSERT INTO `photos` (`id`, `photo_album_id`, `title`, `isCover`, `position`, `photoName`, `updatedAt`, `dateTaken`) VALUES
(584, 27, 'Андрей Макаревич, Евгений Маргулис, Александр Кутиков', 0, 12, '58110a1c29a83.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(586, 27, 'Александр Кутиков, Андрей Державин, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 14, '58110a1c2d75f.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(587, 27, 'Александр Кутиков, Андрей Державин, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 15, '58110a1c2f62d.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(588, 27, 'Александр Кутиков, Андрей Державин, Евгений Маргулис, Андрей Макаревич, Валерий Ефремов', 0, 16, '58110a1c315e8.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(589, 27, 'Евгений Маргулис, Валерий Ефремов, Андрей Макаревич, Андрей Державин, Александр Кутиков', 0, 17, '58110a1c33533.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(590, 27, 'Евгений Маргулис, Валерий Ефремов, Андрей Макаревич, Андрей Державин, Александр Кутиков', 0, 18, '58110a1c35518.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(591, 27, 'Александр Кутиков, Андрей Державин, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 19, '58110a1c3741c.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(592, 27, 'Валерий Ефремов, Андрей Макаревич, Андрей Державин', 0, 20, '58110a1c39310.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(593, 27, 'Андрей Макаревич', 0, 18, '58110a1c3b6b8.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(594, 27, 'Андрей Макаревич', 0, 19, '58110a1c3d65e.jpg', '2016-10-26 22:55:08', '2016-10-26'),
(595, 28, NULL, 0, 1, '58110a59c7337.jpg', '2016-10-26 22:56:09', '2016-10-26'),
(596, 28, NULL, 0, 2, '58110a981b1bc.jpg', '2016-10-26 22:57:12', '2016-10-26'),
(597, 28, NULL, 0, 3, '58110a981d135.jpg', '2016-10-26 22:57:12', '2016-10-26'),
(598, 28, NULL, 0, 4, '58110a981efc4.jpg', '2016-10-26 22:57:12', '2016-10-26'),
(599, 28, NULL, 0, 6, '58110a9820dbb.jpg', '2016-10-26 22:57:12', '2016-10-26'),
(600, 28, NULL, 0, 5, '58110a9822c0c.jpg', '2016-10-26 22:57:12', '2016-10-26'),
(601, 28, NULL, 0, 7, '58110b24a3bf9.jpg', '2016-10-26 22:59:32', '2016-10-26'),
(602, 28, NULL, 0, 8, '58110b24a5ac0.jpg', '2016-10-26 22:59:32', '2016-10-26'),
(603, 28, NULL, 0, 9, '58110b24a77d7.jpg', '2016-10-26 22:59:32', '2016-10-26'),
(604, 28, NULL, 0, 10, '58110b24a95d9.jpg', '2016-10-26 22:59:32', '2016-10-26'),
(605, 28, NULL, 0, 12, '58110b24ab2e0.jpg', '2016-10-26 22:59:32', '2016-10-26'),
(606, 28, NULL, 0, 11, '58110b24acfa4.jpg', '2016-10-26 22:59:32', '2016-10-26'),
(607, 28, NULL, 0, 13, '58110b7fdc86e.JPG', '2016-10-26 23:01:03', '2016-10-26'),
(608, 28, NULL, 0, 14, '58110b7fdeda0.JPG', '2016-10-26 23:01:03', '2016-10-26'),
(609, 28, NULL, 0, 15, '58110b7fe12bb.JPG', '2016-10-26 23:01:03', '2016-10-26'),
(610, 28, NULL, 0, 16, '58110b7fe37ed.jpg', '2016-10-26 23:01:03', '2016-10-26'),
(611, 28, NULL, 0, 18, '58110b7fe5d0c.jpg', '2016-10-26 23:01:03', '2016-10-26'),
(612, 28, NULL, 0, 17, '58110b7fe820a.jpg', '2016-10-26 23:01:03', '2016-10-26'),
(613, 28, NULL, 0, 19, '58110bdfefed5.jpg', '2016-10-26 23:02:39', '2016-10-26'),
(614, 28, NULL, 0, 20, '58110bdff2892.JPG', '2016-10-26 23:02:39', '2016-10-26'),
(615, 28, NULL, 0, 21, '58110be000fa0.JPG', '2016-10-26 23:02:40', '2016-10-26'),
(616, 28, NULL, 0, 22, '58110be003923.JPG', '2016-10-26 23:02:40', '2016-10-26'),
(617, 28, NULL, 0, 24, '58110be006261.JPG', '2016-10-26 23:02:40', '2016-10-26'),
(618, 28, NULL, 0, 23, '58110be008bba.JPG', '2016-10-26 23:02:40', '2016-10-26'),
(619, 28, NULL, 1, 25, '58110c5c957d3.JPG', '2016-10-26 23:04:44', '2016-10-26'),
(620, 28, NULL, 0, 26, '58110c5c9871f.JPG', '2016-10-26 23:04:44', '2016-10-26'),
(621, 28, NULL, 0, 27, '58110c5c9b6a0.JPG', '2016-10-26 23:04:44', '2016-10-26'),
(622, 28, NULL, 0, 28, '58110c5c9e583.JPG', '2016-10-26 23:04:44', '2016-10-26'),
(623, 28, NULL, 0, 30, '58110c5ca153e.JPG', '2016-10-26 23:04:44', '2016-10-26'),
(624, 28, NULL, 0, 29, '58110c5ca4581.JPG', '2016-10-26 23:04:44', '2016-10-26'),
(625, 28, NULL, 0, 31, '58110cd443301.JPG', '2016-10-26 23:06:44', '2016-10-26'),
(626, 28, NULL, 0, 32, '58110cd44628a.JPG', '2016-10-26 23:06:44', '2016-10-26'),
(627, 28, NULL, 0, 33, '58110cd44918a.JPG', '2016-10-26 23:06:44', '2016-10-26'),
(628, 28, NULL, 0, 34, '58110cd44c063.JPG', '2016-10-26 23:06:44', '2016-10-26'),
(629, 28, NULL, 0, 35, '58110cd44ef3d.JPG', '2016-10-26 23:06:44', '2016-10-26'),
(630, 28, NULL, 0, 37, '58110cd451e20.JPG', '2016-10-26 23:06:44', '2016-10-26'),
(631, 28, NULL, 0, 36, '58110cd454d32.JPG', '2016-10-26 23:06:44', '2016-10-26'),
(632, 28, NULL, 0, 38, '58110d48220a1.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(633, 28, NULL, 0, 39, '58110d48256a6.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(634, 28, NULL, 0, 40, '58110d4828bfe.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(635, 28, NULL, 0, 41, '58110d482c13b.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(636, 28, NULL, 0, 42, '58110d482f73e.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(637, 28, NULL, 0, 43, '58110d4832c7f.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(638, 28, NULL, 0, 44, '58110d48361c2.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(639, 28, NULL, 0, 45, '58110d483973f.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(640, 28, NULL, 0, 46, '58110d483cc80.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(641, 28, NULL, 0, 48, '58110d4840238.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(642, 28, NULL, 0, 47, '58110d4843757.JPG', '2016-10-26 23:08:40', '2016-10-26'),
(643, 28, NULL, 0, 49, '58110e98d0fcd.JPG', '2016-10-26 23:14:16', '2016-10-26'),
(644, 28, NULL, 0, 50, '58110e98d4be7.JPG', '2016-10-26 23:14:16', '2016-10-26'),
(645, 28, NULL, 0, 51, '58110e98d8720.JPG', '2016-10-26 23:14:16', '2016-10-26'),
(646, 28, NULL, 0, 52, '58110e98dc224.JPG', '2016-10-26 23:14:16', '2016-10-26'),
(647, 28, NULL, 0, 54, '58110e98dfd53.JPG', '2016-10-26 23:14:16', '2016-10-26'),
(648, 28, NULL, 0, 53, '58110e98e38b6.JPG', '2016-10-26 23:14:16', '2016-10-26'),
(649, 28, NULL, 0, 55, '58110f3ec05e8.JPG', '2016-10-26 23:17:02', '2016-10-26'),
(650, 28, NULL, 0, 56, '58110f3ec537c.JPG', '2016-10-26 23:17:02', '2016-10-26'),
(651, 28, NULL, 0, 57, '58110f3ecb30f.JPG', '2016-10-26 23:17:02', '2016-10-26'),
(652, 28, NULL, 0, 58, '58110f3ed1218.JPG', '2016-10-26 23:17:02', '2016-10-26'),
(653, 28, NULL, 0, 60, '58110f3ed66f6.JPG', '2016-10-26 23:17:02', '2016-10-26'),
(654, 28, NULL, 0, 59, '58110f3edab5b.JPG', '2016-10-26 23:17:02', '2016-10-26'),
(655, 28, NULL, 0, 61, '58110fdb21b4a.JPG', '2016-10-26 23:19:39', '2016-10-26'),
(656, 28, NULL, 0, 62, '58110fdb25f6e.JPG', '2016-10-26 23:19:39', '2016-10-26'),
(657, 28, NULL, 0, 63, '58110fdb2a25f.JPG', '2016-10-26 23:19:39', '2016-10-26'),
(658, 28, NULL, 0, 64, '58110fdb2e5a9.JPG', '2016-10-26 23:19:39', '2016-10-26'),
(659, 28, NULL, 0, 66, '58110fdb328b5.JPG', '2016-10-26 23:19:39', '2016-10-26'),
(660, 28, NULL, 0, 65, '58110fdb36b9c.JPG', '2016-10-26 23:19:39', '2016-10-26'),
(661, 28, NULL, 0, 67, '581110d50b9fd.JPG', '2016-10-26 23:23:49', '2016-10-26'),
(662, 28, NULL, 0, 68, '581110d5101f4.JPG', '2016-10-26 23:23:49', '2016-10-26'),
(663, 28, NULL, 0, 69, '581110d51486c.JPG', '2016-10-26 23:23:49', '2016-10-26'),
(664, 28, NULL, 0, 70, '581110d518faf.JPG', '2016-10-26 23:23:49', '2016-10-26'),
(665, 28, NULL, 0, 72, '581110d51d5e7.JPG', '2016-10-26 23:23:49', '2016-10-26'),
(666, 28, NULL, 0, 71, '581110d521cbd.JPG', '2016-10-26 23:23:49', '2016-10-26'),
(667, 28, NULL, 0, 73, '581111a365363.JPG', '2016-10-26 23:27:15', '2016-10-26'),
(668, 28, NULL, 0, 74, '581111a369f2e.JPG', '2016-10-26 23:27:15', '2016-10-26'),
(669, 28, NULL, 0, 75, '581111a36e931.JPG', '2016-10-26 23:27:15', '2016-10-26'),
(670, 28, NULL, 0, 76, '581111a373388.JPG', '2016-10-26 23:27:15', '2016-10-26'),
(671, 28, NULL, 0, 78, '581111a377e08.JPG', '2016-10-26 23:27:15', '2016-10-26'),
(672, 28, NULL, 0, 77, '581111a37c90f.JPG', '2016-10-26 23:27:15', '2016-10-26'),
(673, 28, NULL, 0, 79, '58111217d5bc2.JPG', '2016-10-26 23:29:11', '2016-10-26'),
(674, 28, NULL, 0, 80, '58111217daa0b.JPG', '2016-10-26 23:29:11', '2016-10-26'),
(675, 28, NULL, 0, 81, '58111217df7f0.JPG', '2016-10-26 23:29:11', '2016-10-26'),
(676, 28, NULL, 0, 81, '58111217e45b7.JPG', '2016-10-26 23:29:11', '2016-10-26'),
(677, 28, NULL, 0, 82, '58111217e939e.JPG', '2016-10-26 23:29:11', '2016-10-26'),
(678, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 2, '581139524616c.jpg', '2016-10-27 02:16:34', '2016-10-27'),
(680, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 6, '58113c6f16a7b.jpg', '2016-10-27 02:29:51', '2016-10-27'),
(681, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 3, '58113c6f189c8.jpg', '2016-10-27 02:29:51', '2016-10-27'),
(682, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 1, '58113f94e4db6.jpg', '2016-10-27 02:43:16', '2016-10-27'),
(683, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 4, '58113f94e6dc9.jpg', '2016-10-27 02:43:16', '2016-10-27'),
(684, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 5, '58114094ac653.jpg', '2016-10-27 02:47:32', '2016-10-27'),
(685, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 1, 6, '58114094ae8cc.jpg', '2016-10-27 02:47:32', '2016-10-27'),
(686, 29, 'Андрей Державин, Александр Кутиков, Андрей Макаревич, Евгений Маргулис, Валерий Ефремов', 0, 7, '581141a945736.jpg', '2016-10-27 02:52:09', '2016-10-27'),
(687, 29, 'Андрей Державин, Евгений Маргулис, Александр Кутиков, Андрей Макаревич, Валерий Ефремов', 0, 7, '581141a9503f4.jpg', '2016-10-27 02:52:09', '2016-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `photos_translations`
--

CREATE TABLE IF NOT EXISTS `photos_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=620 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos_translations`
--

INSERT INTO `photos_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(14, 14, 'en', 'title', NULL),
(15, 15, 'en', 'title', NULL),
(16, 16, 'en', 'title', NULL),
(17, 17, 'en', 'title', NULL),
(18, 18, 'en', 'title', NULL),
(19, 19, 'en', 'title', NULL),
(20, 20, 'en', 'title', NULL),
(21, 21, 'en', 'title', NULL),
(22, 22, 'en', 'title', NULL),
(23, 23, 'en', 'title', NULL),
(24, 24, 'en', 'title', NULL),
(25, 25, 'en', 'title', NULL),
(26, 26, 'en', 'title', NULL),
(27, 27, 'en', 'title', NULL),
(28, 28, 'en', 'title', NULL),
(29, 29, 'en', 'title', NULL),
(30, 30, 'en', 'title', NULL),
(31, 31, 'en', 'title', NULL),
(32, 32, 'en', 'title', NULL),
(33, 33, 'en', 'title', NULL),
(34, 34, 'en', 'title', NULL),
(35, 35, 'en', 'title', NULL),
(36, 36, 'en', 'title', NULL),
(37, 37, 'en', 'title', NULL),
(38, 38, 'en', 'title', NULL),
(39, 39, 'en', 'title', NULL),
(41, 41, 'en', 'title', NULL),
(42, 42, 'en', 'title', NULL),
(43, 43, 'en', 'title', NULL),
(44, 44, 'en', 'title', NULL),
(45, 45, 'en', 'title', NULL),
(46, 46, 'en', 'title', NULL),
(47, 47, 'en', 'title', NULL),
(48, 48, 'en', 'title', NULL),
(49, 49, 'en', 'title', NULL),
(50, 50, 'en', 'title', NULL),
(51, 51, 'en', 'title', NULL),
(52, 52, 'en', 'title', NULL),
(53, 53, 'en', 'title', NULL),
(54, 54, 'en', 'title', NULL),
(55, 56, 'en', 'title', NULL),
(56, 57, 'en', 'title', NULL),
(57, 58, 'en', 'title', NULL),
(58, 59, 'en', 'title', NULL),
(59, 60, 'en', 'title', NULL),
(60, 61, 'en', 'title', NULL),
(61, 62, 'en', 'title', NULL),
(62, 63, 'en', 'title', NULL),
(63, 64, 'en', 'title', NULL),
(64, 65, 'en', 'title', NULL),
(65, 66, 'en', 'title', NULL),
(66, 67, 'en', 'title', NULL),
(67, 68, 'en', 'title', NULL),
(68, 69, 'en', 'title', NULL),
(69, 70, 'en', 'title', NULL),
(70, 71, 'en', 'title', NULL),
(71, 72, 'en', 'title', NULL),
(72, 73, 'en', 'title', NULL),
(73, 74, 'en', 'title', NULL),
(74, 75, 'en', 'title', NULL),
(75, 76, 'en', 'title', NULL),
(76, 77, 'en', 'title', NULL),
(77, 78, 'en', 'title', NULL),
(78, 79, 'en', 'title', NULL),
(79, 80, 'en', 'title', NULL),
(80, 81, 'en', 'title', NULL),
(81, 82, 'en', 'title', NULL),
(82, 83, 'en', 'title', NULL),
(83, 84, 'en', 'title', NULL),
(84, 85, 'en', 'title', NULL),
(85, 86, 'en', 'title', NULL),
(86, 87, 'en', 'title', NULL),
(87, 88, 'en', 'title', NULL),
(88, 89, 'en', 'title', NULL),
(125, 147, 'en', 'title', NULL),
(126, 144, 'en', 'title', NULL),
(127, 145, 'en', 'title', NULL),
(128, 146, 'en', 'title', NULL),
(129, 189, 'en', 'title', NULL),
(131, 191, 'en', 'title', NULL),
(132, 192, 'en', 'title', NULL),
(133, 193, 'en', 'title', NULL),
(134, 194, 'en', 'title', NULL),
(135, 195, 'en', 'title', NULL),
(136, 196, 'en', 'title', NULL),
(137, 197, 'en', 'title', NULL),
(138, 198, 'en', 'title', NULL),
(139, 199, 'en', 'title', NULL),
(140, 200, 'en', 'title', NULL),
(141, 201, 'en', 'title', NULL),
(142, 202, 'en', 'title', NULL),
(143, 203, 'en', 'title', NULL),
(144, 204, 'en', 'title', NULL),
(145, 205, 'en', 'title', NULL),
(146, 206, 'en', 'title', NULL),
(147, 207, 'en', 'title', NULL),
(148, 208, 'en', 'title', NULL),
(149, 209, 'en', 'title', NULL),
(150, 210, 'en', 'title', NULL),
(152, 212, 'en', 'title', NULL),
(153, 213, 'en', 'title', NULL),
(154, 214, 'en', 'title', NULL),
(155, 215, 'en', 'title', NULL),
(156, 216, 'en', 'title', NULL),
(157, 217, 'en', 'title', NULL),
(158, 218, 'en', 'title', NULL),
(159, 219, 'en', 'title', NULL),
(160, 220, 'en', 'title', NULL),
(161, 221, 'en', 'title', NULL),
(162, 222, 'en', 'title', NULL),
(163, 223, 'en', 'title', NULL),
(164, 224, 'en', 'title', NULL),
(165, 225, 'en', 'title', NULL),
(166, 226, 'en', 'title', NULL),
(167, 227, 'en', 'title', NULL),
(168, 228, 'en', 'title', NULL),
(169, 229, 'en', 'title', NULL),
(170, 230, 'en', 'title', NULL),
(171, 231, 'en', 'title', NULL),
(172, 232, 'en', 'title', NULL),
(173, 233, 'en', 'title', NULL),
(174, 234, 'en', 'title', NULL),
(175, 235, 'en', 'title', NULL),
(176, 236, 'en', 'title', NULL),
(177, 148, 'en', 'title', NULL),
(178, 149, 'en', 'title', NULL),
(179, 150, 'en', 'title', NULL),
(180, 151, 'en', 'title', NULL),
(181, 152, 'en', 'title', NULL),
(182, 153, 'en', 'title', NULL),
(183, 154, 'en', 'title', NULL),
(184, 155, 'en', 'title', NULL),
(185, 156, 'en', 'title', NULL),
(186, 157, 'en', 'title', NULL),
(187, 158, 'en', 'title', NULL),
(188, 159, 'en', 'title', NULL),
(189, 160, 'en', 'title', NULL),
(190, 161, 'en', 'title', NULL),
(191, 162, 'en', 'title', NULL),
(192, 163, 'en', 'title', NULL),
(193, 164, 'en', 'title', NULL),
(194, 165, 'en', 'title', NULL),
(195, 166, 'en', 'title', NULL),
(196, 167, 'en', 'title', NULL),
(197, 237, 'en', 'title', NULL),
(198, 238, 'en', 'title', NULL),
(199, 239, 'en', 'title', NULL),
(200, 240, 'en', 'title', NULL),
(201, 241, 'en', 'title', NULL),
(202, 242, 'en', 'title', NULL),
(203, 243, 'en', 'title', NULL),
(204, 244, 'en', 'title', NULL),
(205, 245, 'en', 'title', NULL),
(206, 246, 'en', 'title', NULL),
(207, 247, 'en', 'title', NULL),
(208, 248, 'en', 'title', NULL),
(209, 249, 'en', 'title', NULL),
(210, 250, 'en', 'title', NULL),
(211, 251, 'en', 'title', NULL),
(212, 252, 'en', 'title', NULL),
(213, 253, 'en', 'title', NULL),
(214, 254, 'en', 'title', NULL),
(215, 255, 'en', 'title', NULL),
(216, 256, 'en', 'title', NULL),
(217, 257, 'en', 'title', NULL),
(218, 258, 'en', 'title', NULL),
(219, 259, 'en', 'title', NULL),
(220, 260, 'en', 'title', NULL),
(221, 261, 'en', 'title', NULL),
(222, 262, 'en', 'title', NULL),
(223, 263, 'en', 'title', NULL),
(224, 264, 'en', 'title', NULL),
(225, 265, 'en', 'title', NULL),
(226, 266, 'en', 'title', NULL),
(227, 267, 'en', 'title', NULL),
(228, 268, 'en', 'title', NULL),
(229, 269, 'en', 'title', NULL),
(230, 270, 'en', 'title', NULL),
(231, 271, 'en', 'title', NULL),
(232, 272, 'en', 'title', NULL),
(233, 273, 'en', 'title', NULL),
(234, 274, 'en', 'title', NULL),
(235, 275, 'en', 'title', NULL),
(236, 276, 'en', 'title', NULL),
(237, 277, 'en', 'title', NULL),
(238, 278, 'en', 'title', NULL),
(239, 279, 'en', 'title', NULL),
(240, 280, 'en', 'title', NULL),
(241, 281, 'en', 'title', NULL),
(242, 282, 'en', 'title', NULL),
(243, 283, 'en', 'title', NULL),
(244, 284, 'en', 'title', NULL),
(245, 285, 'en', 'title', NULL),
(246, 286, 'en', 'title', NULL),
(247, 287, 'en', 'title', NULL),
(248, 288, 'en', 'title', NULL),
(249, 289, 'en', 'title', NULL),
(250, 290, 'en', 'title', NULL),
(251, 291, 'en', 'title', NULL),
(252, 292, 'en', 'title', NULL),
(253, 293, 'en', 'title', NULL),
(254, 294, 'en', 'title', NULL),
(255, 295, 'en', 'title', NULL),
(256, 296, 'en', 'title', NULL),
(257, 297, 'en', 'title', NULL),
(258, 298, 'en', 'title', NULL),
(259, 299, 'en', 'title', NULL),
(260, 300, 'en', 'title', NULL),
(261, 301, 'en', 'title', NULL),
(262, 302, 'en', 'title', NULL),
(263, 303, 'en', 'title', NULL),
(264, 304, 'en', 'title', NULL),
(265, 305, 'en', 'title', NULL),
(266, 306, 'en', 'title', NULL),
(267, 307, 'en', 'title', NULL),
(268, 308, 'en', 'title', NULL),
(269, 309, 'en', 'title', NULL),
(270, 310, 'en', 'title', NULL),
(271, 311, 'en', 'title', NULL),
(272, 312, 'en', 'title', NULL),
(273, 313, 'en', 'title', NULL),
(274, 314, 'en', 'title', NULL),
(275, 315, 'en', 'title', NULL),
(276, 316, 'en', 'title', NULL),
(277, 317, 'en', 'title', NULL),
(278, 318, 'en', 'title', NULL),
(279, 319, 'en', 'title', NULL),
(280, 320, 'en', 'title', NULL),
(281, 321, 'en', 'title', NULL),
(282, 322, 'en', 'title', NULL),
(283, 323, 'en', 'title', NULL),
(284, 324, 'en', 'title', NULL),
(285, 325, 'en', 'title', NULL),
(286, 326, 'en', 'title', NULL),
(287, 327, 'en', 'title', NULL),
(288, 328, 'en', 'title', NULL),
(289, 329, 'en', 'title', NULL),
(290, 330, 'en', 'title', NULL),
(291, 331, 'en', 'title', NULL),
(292, 332, 'en', 'title', NULL),
(293, 333, 'en', 'title', NULL),
(294, 334, 'en', 'title', NULL),
(295, 335, 'en', 'title', NULL),
(296, 336, 'en', 'title', NULL),
(297, 337, 'en', 'title', NULL),
(298, 338, 'en', 'title', NULL),
(299, 339, 'en', 'title', NULL),
(300, 340, 'en', 'title', NULL),
(301, 341, 'en', 'title', NULL),
(302, 342, 'en', 'title', NULL),
(303, 343, 'en', 'title', NULL),
(304, 344, 'en', 'title', NULL),
(305, 345, 'en', 'title', NULL),
(306, 346, 'en', 'title', NULL),
(307, 347, 'en', 'title', NULL),
(308, 348, 'en', 'title', NULL),
(309, 349, 'en', 'title', NULL),
(310, 350, 'en', 'title', NULL),
(311, 351, 'en', 'title', NULL),
(312, 352, 'en', 'title', NULL),
(313, 353, 'en', 'title', NULL),
(314, 354, 'en', 'title', NULL),
(315, 355, 'en', 'title', NULL),
(316, 356, 'en', 'title', NULL),
(317, 373, 'en', 'title', NULL),
(318, 380, 'en', 'title', NULL),
(319, 381, 'en', 'title', NULL),
(320, 382, 'en', 'title', NULL),
(321, 383, 'en', 'title', NULL),
(322, 384, 'en', 'title', NULL),
(324, 386, 'en', 'title', NULL),
(325, 387, 'en', 'title', NULL),
(326, 388, 'en', 'title', NULL),
(327, 389, 'en', 'title', NULL),
(328, 390, 'en', 'title', NULL),
(329, 391, 'en', 'title', NULL),
(331, 393, 'en', 'title', NULL),
(332, 394, 'en', 'title', NULL),
(334, 396, 'en', 'title', NULL),
(337, 399, 'en', 'title', NULL),
(338, 400, 'en', 'title', NULL),
(339, 374, 'en', 'title', NULL),
(340, 375, 'en', 'title', NULL),
(341, 376, 'en', 'title', NULL),
(342, 377, 'en', 'title', NULL),
(343, 378, 'en', 'title', NULL),
(344, 379, 'en', 'title', NULL),
(346, 402, 'en', 'title', NULL),
(347, 403, 'en', 'title', NULL),
(348, 404, 'en', 'title', NULL),
(349, 405, 'en', 'title', NULL),
(350, 406, 'en', 'title', NULL),
(351, 407, 'en', 'title', NULL),
(352, 408, 'en', 'title', NULL),
(354, 410, 'en', 'title', NULL),
(355, 411, 'en', 'title', NULL),
(356, 412, 'en', 'title', NULL),
(357, 357, 'en', 'title', NULL),
(358, 358, 'en', 'title', NULL),
(359, 359, 'en', 'title', NULL),
(360, 360, 'en', 'title', NULL),
(361, 361, 'en', 'title', NULL),
(362, 362, 'en', 'title', NULL),
(363, 363, 'en', 'title', NULL),
(364, 364, 'en', 'title', NULL),
(365, 365, 'en', 'title', NULL),
(366, 366, 'en', 'title', NULL),
(367, 367, 'en', 'title', NULL),
(368, 368, 'en', 'title', NULL),
(369, 369, 'en', 'title', NULL),
(370, 370, 'en', 'title', NULL),
(371, 371, 'en', 'title', NULL),
(372, 372, 'en', 'title', NULL),
(373, 413, 'en', 'title', NULL),
(379, 421, 'en', 'title', NULL),
(380, 422, 'en', 'title', NULL),
(381, 423, 'en', 'title', NULL),
(382, 424, 'en', 'title', NULL),
(383, 425, 'en', 'title', NULL),
(384, 426, 'en', 'title', NULL),
(385, 427, 'en', 'title', NULL),
(386, 428, 'en', 'title', NULL),
(387, 429, 'en', 'title', NULL),
(388, 430, 'en', 'title', NULL),
(389, 431, 'en', 'title', NULL),
(390, 432, 'en', 'title', NULL),
(391, 433, 'en', 'title', NULL),
(392, 434, 'en', 'title', NULL),
(393, 435, 'en', 'title', NULL),
(394, 436, 'en', 'title', NULL),
(395, 437, 'en', 'title', NULL),
(396, 438, 'en', 'title', NULL),
(397, 439, 'en', 'title', NULL),
(398, 440, 'en', 'title', NULL),
(400, 442, 'en', 'title', NULL),
(401, 443, 'en', 'title', NULL),
(402, 444, 'en', 'title', NULL),
(403, 445, 'en', 'title', NULL),
(404, 446, 'en', 'title', NULL),
(405, 447, 'en', 'title', NULL),
(406, 448, 'en', 'title', NULL),
(407, 449, 'en', 'title', NULL),
(408, 450, 'en', 'title', NULL),
(409, 451, 'en', 'title', NULL),
(410, 452, 'en', 'title', NULL),
(411, 453, 'en', 'title', NULL),
(412, 454, 'en', 'title', NULL),
(413, 455, 'en', 'title', NULL),
(414, 456, 'en', 'title', NULL),
(415, 457, 'en', 'title', NULL),
(416, 458, 'en', 'title', NULL),
(417, 460, 'en', 'title', NULL),
(418, 461, 'en', 'title', NULL),
(419, 475, 'en', 'title', NULL),
(420, 476, 'en', 'title', NULL),
(421, 477, 'en', 'title', NULL),
(422, 478, 'en', 'title', NULL),
(423, 479, 'en', 'title', NULL),
(424, 484, 'en', 'title', NULL),
(425, 485, 'en', 'title', NULL),
(426, 486, 'en', 'title', NULL),
(427, 488, 'en', 'title', NULL),
(428, 489, 'en', 'title', NULL),
(429, 490, 'en', 'title', NULL),
(430, 491, 'en', 'title', NULL),
(431, 492, 'en', 'title', NULL),
(432, 493, 'en', 'title', NULL),
(433, 494, 'en', 'title', NULL),
(434, 495, 'en', 'title', NULL),
(435, 496, 'en', 'title', NULL),
(436, 497, 'en', 'title', NULL),
(437, 498, 'en', 'title', NULL),
(438, 499, 'en', 'title', NULL),
(439, 500, 'en', 'title', NULL),
(440, 501, 'en', 'title', NULL),
(444, 505, 'en', 'title', NULL),
(445, 506, 'en', 'title', NULL),
(446, 507, 'en', 'title', NULL),
(447, 508, 'en', 'title', NULL),
(448, 509, 'en', 'title', NULL),
(449, 510, 'en', 'title', NULL),
(450, 511, 'en', 'title', NULL),
(454, 515, 'en', 'title', NULL),
(455, 516, 'en', 'title', NULL),
(456, 517, 'en', 'title', NULL),
(457, 518, 'en', 'title', NULL),
(458, 519, 'en', 'title', NULL),
(459, 520, 'en', 'title', NULL),
(460, 521, 'en', 'title', NULL),
(461, 522, 'en', 'title', NULL),
(462, 523, 'en', 'title', NULL),
(463, 524, 'en', 'title', NULL),
(464, 525, 'en', 'title', NULL),
(465, 526, 'en', 'title', NULL),
(466, 527, 'en', 'title', NULL),
(467, 528, 'en', 'title', NULL),
(468, 529, 'en', 'title', NULL),
(469, 530, 'en', 'title', NULL),
(470, 531, 'en', 'title', NULL),
(471, 532, 'en', 'title', NULL),
(472, 533, 'en', 'title', NULL),
(473, 534, 'en', 'title', NULL),
(474, 535, 'en', 'title', NULL),
(475, 536, 'en', 'title', NULL),
(476, 537, 'en', 'title', NULL),
(477, 538, 'en', 'title', NULL),
(478, 539, 'en', 'title', NULL),
(479, 540, 'en', 'title', NULL),
(480, 541, 'en', 'title', NULL),
(481, 542, 'en', 'title', NULL),
(482, 546, 'en', 'title', NULL),
(483, 547, 'en', 'title', NULL),
(484, 550, 'en', 'title', NULL),
(485, 551, 'en', 'title', NULL),
(486, 552, 'en', 'title', NULL),
(487, 553, 'en', 'title', NULL),
(488, 554, 'en', 'title', NULL),
(489, 555, 'en', 'title', NULL),
(490, 556, 'en', 'title', NULL),
(491, 557, 'en', 'title', NULL),
(492, 558, 'en', 'title', NULL),
(493, 559, 'en', 'title', NULL),
(494, 560, 'en', 'title', NULL),
(495, 561, 'en', 'title', NULL),
(496, 562, 'en', 'title', NULL),
(497, 563, 'en', 'title', NULL),
(498, 564, 'en', 'title', NULL),
(499, 565, 'en', 'title', NULL),
(500, 567, 'en', 'title', NULL),
(501, 568, 'en', 'title', NULL),
(502, 569, 'en', 'title', NULL),
(503, 570, 'en', 'title', NULL),
(504, 571, 'en', 'title', NULL),
(505, 573, 'en', 'title', NULL),
(506, 574, 'en', 'title', NULL),
(507, 575, 'en', 'title', NULL),
(508, 576, 'en', 'title', NULL),
(509, 577, 'en', 'title', NULL),
(510, 578, 'en', 'title', NULL),
(511, 579, 'en', 'title', NULL),
(512, 580, 'en', 'title', NULL),
(513, 581, 'en', 'title', NULL),
(514, 582, 'en', 'title', NULL),
(515, 583, 'en', 'title', NULL),
(516, 584, 'en', 'title', NULL),
(518, 586, 'en', 'title', NULL),
(519, 587, 'en', 'title', NULL),
(520, 588, 'en', 'title', NULL),
(521, 589, 'en', 'title', NULL),
(522, 590, 'en', 'title', NULL),
(523, 591, 'en', 'title', NULL),
(524, 592, 'en', 'title', NULL),
(525, 593, 'en', 'title', NULL),
(526, 594, 'en', 'title', NULL),
(527, 595, 'en', 'title', NULL),
(528, 596, 'en', 'title', NULL),
(529, 597, 'en', 'title', NULL),
(530, 598, 'en', 'title', NULL),
(531, 599, 'en', 'title', NULL),
(532, 600, 'en', 'title', NULL),
(533, 601, 'en', 'title', NULL),
(534, 602, 'en', 'title', NULL),
(535, 603, 'en', 'title', NULL),
(536, 604, 'en', 'title', NULL),
(537, 605, 'en', 'title', NULL),
(538, 606, 'en', 'title', NULL),
(539, 607, 'en', 'title', NULL),
(540, 608, 'en', 'title', NULL),
(541, 609, 'en', 'title', NULL),
(542, 610, 'en', 'title', NULL),
(543, 611, 'en', 'title', NULL),
(544, 612, 'en', 'title', NULL),
(545, 613, 'en', 'title', NULL),
(546, 614, 'en', 'title', NULL),
(547, 615, 'en', 'title', NULL),
(548, 616, 'en', 'title', NULL),
(549, 617, 'en', 'title', NULL),
(550, 618, 'en', 'title', NULL),
(551, 619, 'en', 'title', NULL),
(552, 620, 'en', 'title', NULL),
(553, 621, 'en', 'title', NULL),
(554, 622, 'en', 'title', NULL),
(555, 623, 'en', 'title', NULL),
(556, 624, 'en', 'title', NULL),
(557, 625, 'en', 'title', NULL),
(558, 626, 'en', 'title', NULL),
(559, 627, 'en', 'title', NULL),
(560, 628, 'en', 'title', NULL),
(561, 629, 'en', 'title', NULL),
(562, 630, 'en', 'title', NULL),
(563, 631, 'en', 'title', NULL),
(564, 632, 'en', 'title', NULL),
(565, 633, 'en', 'title', NULL),
(566, 634, 'en', 'title', NULL),
(567, 635, 'en', 'title', NULL),
(568, 636, 'en', 'title', NULL),
(569, 637, 'en', 'title', NULL),
(570, 638, 'en', 'title', NULL),
(571, 639, 'en', 'title', NULL),
(572, 640, 'en', 'title', NULL),
(573, 641, 'en', 'title', NULL),
(574, 642, 'en', 'title', NULL),
(575, 643, 'en', 'title', NULL),
(576, 644, 'en', 'title', NULL),
(577, 645, 'en', 'title', NULL),
(578, 646, 'en', 'title', NULL),
(579, 647, 'en', 'title', NULL),
(580, 648, 'en', 'title', NULL),
(581, 649, 'en', 'title', NULL),
(582, 650, 'en', 'title', NULL),
(583, 651, 'en', 'title', NULL),
(584, 652, 'en', 'title', NULL),
(585, 653, 'en', 'title', NULL),
(586, 654, 'en', 'title', NULL),
(587, 655, 'en', 'title', NULL),
(588, 656, 'en', 'title', NULL),
(589, 657, 'en', 'title', NULL),
(590, 658, 'en', 'title', NULL),
(591, 659, 'en', 'title', NULL),
(592, 660, 'en', 'title', NULL),
(593, 661, 'en', 'title', NULL),
(594, 662, 'en', 'title', NULL),
(595, 663, 'en', 'title', NULL),
(596, 664, 'en', 'title', NULL),
(597, 665, 'en', 'title', NULL),
(598, 666, 'en', 'title', NULL),
(599, 667, 'en', 'title', NULL),
(600, 668, 'en', 'title', NULL),
(601, 669, 'en', 'title', NULL),
(602, 670, 'en', 'title', NULL),
(603, 671, 'en', 'title', NULL),
(604, 672, 'en', 'title', NULL),
(605, 673, 'en', 'title', NULL),
(606, 674, 'en', 'title', NULL),
(607, 675, 'en', 'title', NULL),
(608, 676, 'en', 'title', NULL),
(609, 677, 'en', 'title', NULL),
(610, 474, 'en', 'title', NULL),
(611, 678, 'en', 'title', NULL),
(612, 680, 'en', 'title', NULL),
(613, 681, 'en', 'title', NULL),
(614, 682, 'en', 'title', NULL),
(615, 683, 'en', 'title', NULL),
(616, 684, 'en', 'title', NULL),
(617, 685, 'en', 'title', NULL),
(618, 686, 'en', 'title', NULL),
(619, 687, 'en', 'title', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photo_albums`
--

CREATE TABLE IF NOT EXISTS `photo_albums` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `dateTaken` date NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_albums`
--

INSERT INTO `photo_albums` (`id`, `title`, `description`, `isActive`, `dateTaken`, `slug`) VALUES
(6, '"Авторадио" дарит "Машину"', '23 сентября 2007 года, Санкт-Петербург, Дворцовая площадь, концерт. Фото Светланы Гудёж', 1, '2007-09-23', 'avtoradio_darit_mashinu'),
(7, 'Atlas Weekend', 'Наше выступление на Atlas Weekend в Украине. Девиз фестиваля "Никаких ограничений - только хорошая музыка!" полностью оправдал себя: больше, чем 300 000 посетителей, это было безумно драйвово! Благодарим за фото Виталия Леонова', 1, '2016-07-09', 'atlas_weekend'),
(9, 'Челябинск'' 80', 'Фотоальбом из архива Саши Зайцева. Благодарим за предоставленные материалы Леонида Архангельского', 1, '1980-12-31', 'chieliabinsk_80'),
(11, 'Backstage'' 80', 'Фотоальбом из архива Саши Зайцева. Благодарим за предоставленные материалы Леонида Архангельского', 1, '1980-09-29', 'backstage_80'),
(12, 'Концерт 22.09.2016', 'Фото от Маргариты Шол. Большое спасибо за прекрасные снимки!', 1, '2016-09-22', 'kontsiert_22_09_2016'),
(13, '"Машина времени" и "Воскресение"', 'Фотоотчет Crocus City Hall', 1, '2016-02-20', 'mashina_vriemieni_i_voskriesieniie'),
(14, 'Разные люди', 'Благотворительный фестиваль "Разные люди", который собрал около 5000 человек.  Выступали «Разные Люди», «DDT», «Чиж & Co», «Братья Карамазовы»,«СерьГа» и Александр Ф. Скляр в дуэте с Сергеем Летовым, ведущие Михаил Ефремов и Дмитрий Харатьян, актеры Влад Маленко и Никита Высоцкий.\r\nЗа замечательные фото "Машины времени" благодарим Илью Егорова, Михаила Маркова, Евгению Окнину, Ольгу Малкову и Евгения Чеснокова', 1, '2016-05-25', 'raznyie_liudi'),
(15, '30 лет Nautilus Pompilius', '''''30 лет под водой''''. Юбилейный концерт в ''''Крокус Сити Холл''''', 1, '2013-10-10', '30_liet_nautilus_pompilius'),
(16, 'Ташкент'' 82', 'Фотоальбом из архива Саши Зайцева. Благодарим за предоставленные материалы Леонида Архангельского', 1, '1982-10-04', 'tashkient_82'),
(17, '1982-1983 гг.', 'Фотоальбом из архива Саши Зайцева. Благодарим за предоставленные материалы Леонида Архангельского', 1, '1983-10-07', '1982_1983_ghgh'),
(18, 'Старый альбом.', '1980-е годы. Из фотоархива Александра Зайцева.', 1, '1984-10-09', 'staryi_al_bom'),
(19, 'Концерт в "Зелёном Театре",  город Подольск, 1984 год', 'Фотографии из коллекции фан-клуба Машины Времени и лично Бебенина Сергея (город Подольск). Благодарим за предоставленные материалы Леонида Архангельского', 1, '1984-10-25', 'kontsiert_v_zielionom_tieatrie_ghorod_podol_sk_1984_ghod'),
(20, 'Концерты в Куйбышеве', 'Несколько фотографий из фан-клуба Машины времени в Куйбышеве, 1983 год (Дворец Спорта, ЦСК ВВС) - в первом отделении выступал Оркестр А.Кролла. Благодарим за предоставленные материалы Леонида Архангельского', 1, '1983-10-25', 'kontsierty_v_kuibyshievie'),
(21, 'Б-2, Москва, 2014 год', 'Концерты Машины времени в клубе "Б-2" (Москва), 2014 год (Из архива фан-клуба Машины времени и лично Бебенина Сергея, город Подольск). Благодарим за предоставленные материалы Леонида Архангельского', 1, '2014-10-25', 'b_2_moskva_2014_ghod'),
(22, 'Ленинград, июнь 1985 года', 'Съёмки клипа к песне "Знаю только я"  в программе "Кружатся диски"  (режиссер Клара Фатов), автор фото - Максим Тарасыгин.', 1, '1985-06-25', 'lieninghrad_iiun_1985_ghoda'),
(23, 'Портреты (и не только) периода 1979-80 годов.', 'Съемки телепередачи.', 1, '1980-07-26', 'portriety_i_nie_tol_ko_pierioda_1979_80_ghodov'),
(24, 'Баку. Август 1985.', 'Фотосессия, теле-интервью на "Каспии" и прогулка по городу.', 1, '1985-08-24', 'baku_avghust_1985'),
(25, '1981 г. Cо съемок художественного фильма "Душа"', 'Павильонные съемки на "Мосфильме" 13 мая - середина июня 1981 года', 1, '1981-05-16', '1981_gh_co_siemok_khudozhiestviennogho_fil_ma_dusha'),
(26, 'Фотоработы Андрея Макаревича', 'Фрагменты путешествий', 1, '2015-08-26', 'fotoraboty_andrieia_makarievicha'),
(27, 'Фотосессия к 35-летию группы', '2004 год. Фото - Максим Полубояринов.', 1, '2004-04-15', 'fotosiessiia_k_35_lietiiu_ghruppy'),
(28, 'Abbey Road.', '2006 год. 9-12 октября. Запись альбома "Time Machine"', 1, '2006-10-12', 'abbey_road'),
(29, 'Фотосессия', '22 ноября 1913 год. Фото - Максим Полубояринов.', 1, '2013-11-22', 'fotosiessiia');

-- --------------------------------------------------------

--
-- Table structure for table `photo_albums_translations`
--

CREATE TABLE IF NOT EXISTS `photo_albums_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_albums_translations`
--

INSERT INTO `photo_albums_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(11, 6, 'en', 'title', NULL),
(12, 6, 'en', 'description', NULL),
(13, 7, 'en', 'title', NULL),
(14, 7, 'en', 'description', NULL),
(17, 9, 'en', 'title', NULL),
(18, 9, 'en', 'description', NULL),
(21, 11, 'en', 'title', NULL),
(22, 11, 'en', 'description', NULL),
(23, 12, 'en', 'title', NULL),
(24, 12, 'en', 'description', NULL),
(25, 13, 'en', 'title', NULL),
(26, 13, 'en', 'description', NULL),
(27, 14, 'en', 'title', NULL),
(28, 14, 'en', 'description', NULL),
(29, 15, 'en', 'title', NULL),
(30, 15, 'en', 'description', NULL),
(31, 16, 'en', 'title', NULL),
(32, 16, 'en', 'description', NULL),
(33, 17, 'en', 'title', NULL),
(34, 17, 'en', 'description', NULL),
(35, 18, 'en', 'title', NULL),
(36, 18, 'en', 'description', NULL),
(37, 19, 'en', 'title', NULL),
(38, 19, 'en', 'description', NULL),
(39, 20, 'en', 'title', NULL),
(40, 20, 'en', 'description', NULL),
(41, 21, 'en', 'title', NULL),
(42, 21, 'en', 'description', NULL),
(43, 22, 'en', 'title', NULL),
(44, 22, 'en', 'description', NULL),
(45, 23, 'en', 'title', NULL),
(46, 23, 'en', 'description', NULL),
(47, 24, 'en', 'title', NULL),
(48, 24, 'en', 'description', NULL),
(49, 25, 'en', 'title', NULL),
(50, 25, 'en', 'description', NULL),
(51, 26, 'en', 'title', NULL),
(52, 26, 'en', 'description', NULL),
(53, 27, 'en', 'title', NULL),
(54, 27, 'en', 'description', NULL),
(55, 28, 'en', 'title', NULL),
(56, 28, 'en', 'description', NULL),
(57, 29, 'en', 'title', NULL),
(58, 29, 'en', 'description', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photo_tag`
--

CREATE TABLE IF NOT EXISTS `photo_tag` (
  `photo_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_tag`
--

INSERT INTO `photo_tag` (`photo_id`, `tag_id`) VALUES
(56, 1),
(57, 2),
(58, 1),
(59, 1),
(60, 1),
(62, 2),
(63, 1),
(64, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(72, 1),
(72, 2),
(73, 1),
(77, 2),
(79, 1),
(82, 2),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(87, 2),
(88, 1),
(144, 3),
(145, 3),
(146, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(156, 3),
(157, 3),
(158, 3),
(159, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(195, 3),
(196, 3),
(197, 3),
(198, 3),
(199, 3),
(200, 3),
(201, 3),
(202, 3),
(203, 3),
(204, 3),
(205, 3),
(206, 3),
(207, 3),
(208, 3),
(209, 3),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(374, 3),
(375, 3),
(376, 3),
(377, 3),
(378, 3),
(379, 3),
(381, 3),
(382, 3),
(383, 3),
(384, 3),
(386, 3),
(387, 3),
(388, 3),
(389, 3),
(390, 3),
(391, 3),
(393, 3),
(394, 3),
(396, 3),
(399, 3),
(400, 3),
(402, 3),
(403, 3),
(404, 3),
(405, 3),
(406, 3),
(407, 3),
(408, 3),
(410, 3),
(411, 3),
(412, 3),
(413, 2),
(422, 2),
(423, 2),
(424, 2),
(425, 2),
(426, 2),
(427, 2),
(428, 2),
(429, 2),
(430, 2),
(431, 2),
(432, 2),
(433, 2),
(434, 2),
(435, 2),
(436, 2),
(437, 2),
(438, 2),
(439, 2),
(440, 2),
(442, 2),
(443, 2),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(457, 1),
(458, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(567, 4),
(568, 4),
(569, 4),
(570, 4),
(571, 4),
(572, 4),
(573, 2),
(574, 2),
(575, 2),
(576, 2),
(577, 2),
(578, 2),
(579, 2),
(580, 2),
(581, 2),
(582, 2),
(583, 2),
(584, 2),
(586, 2),
(587, 2),
(588, 2),
(589, 2),
(590, 2),
(591, 2),
(592, 2),
(593, 2),
(594, 2),
(595, 3),
(596, 3),
(597, 3),
(598, 3),
(599, 3),
(600, 3),
(601, 3),
(602, 3),
(603, 3),
(604, 3),
(605, 3),
(606, 3),
(607, 3),
(608, 3),
(609, 3),
(610, 3),
(611, 3),
(612, 3),
(613, 3),
(614, 3),
(615, 3),
(616, 3),
(617, 3),
(618, 3),
(619, 3),
(620, 3),
(621, 3),
(622, 3),
(623, 3),
(624, 3),
(625, 3),
(626, 3),
(627, 3),
(628, 3),
(629, 3),
(630, 3),
(631, 3),
(632, 3),
(633, 3),
(634, 3),
(635, 3),
(636, 3),
(637, 3),
(638, 3),
(639, 3),
(640, 3),
(641, 3),
(642, 3),
(643, 3),
(644, 3),
(645, 3),
(646, 3),
(647, 3),
(648, 3),
(649, 3),
(650, 3),
(651, 3),
(652, 3),
(653, 3),
(654, 3),
(655, 3),
(656, 3),
(657, 3),
(658, 3),
(659, 3),
(660, 3),
(661, 3),
(662, 3),
(663, 3),
(664, 3),
(665, 3),
(666, 3),
(667, 3),
(668, 3),
(669, 3),
(670, 3),
(671, 3),
(672, 3),
(673, 3),
(674, 3),
(675, 3),
(676, 3),
(677, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires`
--

CREATE TABLE IF NOT EXISTS `questionnaires` (
  `id` bigint(20) NOT NULL,
  `musician_id` bigint(20) DEFAULT NULL,
  `question` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires_translations`
--

CREATE TABLE IF NOT EXISTS `questionnaires_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `lyrics` longtext COLLATE utf8_unicode_ci,
  `durationMinutes` int(11) DEFAULT NULL,
  `durationSeconds` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(1, 1, 'Миром правит любовь', '[C]Мир [C7]состоит [Am]из [G]очень [F]простых вещей                                            \r\nМиру свойственна жизнь [Dm] [Dm7] [G] миром правит любовь \r\n[C]Мир [C7]состоит [Am]из [G]очень [F#dim7]простых вещей \r\n[F]Я повторяю [Fm]вновь [Ab]мы [G]повторяем вновь и вновь что \r\n[C]Мир состоит [C7]из очень простых [Am]вещей \r\n               \r\n[F]Золото падает вниз [Em]оно тяжелей чем жесть и картон \r\n[Dm]Золото падает вниз [G]оно неподвластно капризам времён \r\n[Am]Пена всплывает [Am7] [F]вверх пена не [G]тонет и сразу видна \r\n[Am]Пена всплывает вверх но [F]состоит в [G]основном из говна \r\n\r\nМир состоит из очень простых вещей \r\nМиру свойственна жизнь миром правит любовь \r\nМир состоит из очень простых вещей \r\nЯ повторяю вновь мы повторяем вновь и вновь что \r\nМир состоит из очень простых вещей \r\n\r\nГраблями меряем пройденный путь в цирке от клоунов не продохнуть\r\nВоры у воров украли страну проснётся ли кто-нибудь \r\nУвидев стену давим на газ время уже не отпустит нас \r\nНо снова весна и всё будто в первый раз \r\n\r\nМир состоит из очень простых вещей \r\nМиру свойственна жизнь миром правит любовь \r\nМир состоит из очень простых вещей \r\nЯ повторяю вновь мы повторяем вновь и вновь что \r\nМир состоит из очень простых вещей \r\n\r\nМир состоит из очень простых вещей \r\nМиру свойственна жизнь миром правит любовь \r\nМир состоит из очень простых вещей \r\nЯ повторяю вновь мы повторяем вновь и вновь что \r\nМир состоит из очень простых вещей', 4, 6, 1),
(2, 2, 'Крысы', '[ C#7 F#m]Крысы [G#7]придумали мир для крыс\r\nИ [Bm]для них он [F#m]совсем неплох\r\nЖиви себе по крысиным законам\r\nИ будешь жить как бог\r\n[A]Крысы не [G#7]любят других миров,\r\n[Bm]Хотя их [C#]манит высь\r\n[F#m]Поскольку в [G#7]своей норе они боги,\r\n[Bm]В других [C#]мирах их [F#m]держат за крыс\r\n\r\n\r\n[A]Богу [B/A]Богово, волку логово\r\n[F]Кораблю — [E]волна [A]под винтом\r\n[F#m]Кто там звонит в колокол\r\n[B7]По ком звонит колокол\r\n[D7]Не [C#]спеши. Ты всё узнаешь потом.\r\n\r\n[ F#m ]\r\nПервосвященник и главный судья\r\nВзяли меня в оборот\r\nОдин кричал «ты не любишь страну»\r\nВторой «ты не любишь народ»\r\nКогда оба умолкли я попросил\r\nЕщё что-нибудь на «бис»\r\n\r\nЯ очень люблю и народ и страну\r\nНо я не могу терпеть крыс\r\n\r\n\r\nЯ раньше думал, я гость в этом мире,\r\nИ каков он — не мне решать.\r\nНо мне меньше и меньше нравится воздух,\r\nКоторым мне предлагают дышать.\r\nИ как тут быть при таком раскладе,\r\nКогда в любой разговор\r\nВсе чаще и чаще вплетается запах\r\nДерьма из крысиных нор.', 3, 14, 1),
(3, 3, 'Последние Дни', '[G]Последние[F#7] дни\r\n[Hm]Мы с тобою[F] вдвоем\r\n[Em]Не знает [F#m]никто -\r\nЧья в этом [Hm7]вина[Hm9]        \r\n\r\nПоследние дни \r\nВсе прошло, мы уйдем, \r\nЯ буду один, \r\nТы будешь одна.', 2, 6, 2),
(4, 3, 'This Happened to Me', '[Em]This happened to me\r\nYou said [A]me goodbye\r\nYou did let[Em] me see\r\nThen you[H] let me bye\r\nSo, you [G]let me bye\r\n[A]I know this [D]can be\r\n[C]You know - I [Hm]don''t lie\r\n[H7]This happened[Em] to me\r\n\r\nRemember - we knew \r\nI can''t fit my mind \r\nI''m feeling so blue \r\nWhy you telling "bye" \r\nSo, you let me bye \r\nI know this can be \r\nYou know - I don''t lie \r\nThis happened to me\r\n\r\nThis happened to me \r\nYou said me goodbye \r\nYou did let me see\r\nThen you let me bye \r\nSo, you let me bye \r\nI know this can be \r\nYou know - I don''t lie \r\nThis happened to me', 2, 5, 1),
(5, 4, 'Избавление', '[D#]           [D#+7]\r\nЯ видел, как в комнату,\r\n     [Cm]        [B]\r\nНе знавшую тревог,\r\n    [G#]\r\nВорвался ветер,\r\nОн поднял пыль,\r\n   [Gm]      [Cm]         [G#]\r\nГодами дремавшую в углах,\r\n     [Fm7]        [B7]         [D#]\r\nИ в танце закружил по коридору.\r\n\r\n[D#]          [G#]\r\nСорвал он с окон шторы,\r\n    [G7]                       [Cm]\r\nИ в окна хлынул сумасшедший день,\r\n   [B]      [G#]                  [D#]\r\nИ дом застыл, сияньем дня смущенный,\r\n     [G#]            [G#m7]            [Cm] [B] [G#] [D#+7]\r\nВ надежде робкой снова скрыться в тень.\r\n\r\n   [D#]           [D#+7]\r\nЯ видел, как в комнату,\r\n     [Cm]        [B]\r\nНе знавшую тревог,\r\n    [G#] \r\nВорвался ветер,\r\n                 [Gm]         [Cm] \r\nОн поднял со стола листы бумаги,\r\n     [G#]         [B]               [D#]\r\nВ полете превратив их в белых птиц,\r\n\r\n  [D#]                    [G#]\r\nИ это было словно избавленье.\r\n   [G7]                     [Cm]\r\nЯ понял, что мой труд смешон\r\n   [B]        [G#]             [D#]\r\nИ мал, как миг. Я бросил все\r\n    [Fm]    [B7]    [Cm]  [B] [G#] [D#+7]\r\nИ стал самим собой.', 3, 4, 1),
(6, 5, 'Будет День', '[G]          [D]\r\nБудет день горести,\r\n [C]            [Hm] \r\nМожет быть вскорости -\r\n [C]              [Hm]               [Am] [D]\r\nДай мне Бог дождаться встречи с ним!\r\n \r\nВ этот день горести\r\nЯ воздам почести\r\nВсем врагам-противникам своим.\r\n \r\nПусть они, злобные,\r\nСтанут вдруг добрые,\r\nПусть забудут про свою беду,\r\n\r\n    [Em]           [Hm] \r\n   Пусть забудут обо всем\r\n   [Em]        [Hm] \r\n   И идут своим путем,\r\n     [C]             [D]             [G] [G7] \r\n   А я без них уж как-нибудь дойду,\r\n     [C]             [D]             [G] [D] [G]\r\n   А я без них уж как-нибудь дойду. \r\n\r\nБудет день радости, \r\nДай мне Бог до старости \r\nКак-нибудь дождаться встречи с ним!\r\n\r\nЧтоб, забыв о гордости, \r\nЯ простил подлости \r\nВсем друзьям-товарищам своим.\r\n \r\nПусть они, нервные, \r\nБудут мне верные, \r\nПусть один нам будет дальний путь.\r\n \r\n   Дай пройти нам этот путь \r\n   И дойти когда-нибудь, \r\n   И не дай друг друга обмануть,\r\n   И не дай друг друга обмануть. \r\n \r\nКончен день вечером, \r\nМне терять нечего, \r\nСяду я и отдохну от дел,\r\n\r\n[G]        [D]\r\nИ скажу каждому:\r\n[C]           [Hm] \r\nБыл день однажды мой,\r\n  [C]           [D]          [G]  [G7] \r\nИ я достиг того, чего хотел,\r\n  [C]           [D]          [G]  [G7]\r\nИ я достиг того, чего хотел,\r\n  [C]           [D]          [Em]  [C] [D] [G]\r\nИ я достиг того, чего хотел.', 3, 29, 1),
(7, 4, 'День Рождения', '[G]\r\nСегодня тёплый день,\r\n[C]                  [G]                 [G7]\r\nИ в этот день я хочу поздравить Вас:\r\n[C]                      [G]\r\nУ Вас сегодня день рожденья -\r\n[D]             [G] \r\nТак в добрый час! \r\n\r\n    [G]\r\nИ стол накрыт давно,\r\n[C]                 [G] \r\nСегодня к Вам придут друзья,\r\n    [C]             [G] \r\nПридут друзья друзей,\r\n   [C]            [G] \r\nКоторым всё равно -\r\n            [D]              [G] \r\nК Вам можно или к Вам нельзя.\r\n\r\n[D]                       [G]\r\nИ будет много выпито вина\r\n     [G7]            [C] \r\nЗа праздничным столом, \r\nИ мальчик у окна напьется пьян:\r\n           [G]         [C]          [G]\r\nВ том не его вина, и он не хулиган,\r\n             [D]         [G]   [C]\r\nОн просто с Вами незнаком. \r\n\r\n    [G]\r\nИ кто-то вдруг решит,\r\n[C]                     [G] \r\nЧто девочка напротив так мила\r\n         [D]    [H7]    [Em] \r\nИ он давно хотел такой.\r\n           [C]          [G] \r\nИ, чтоб беседу поддержать,\r\n         [C]          [G] \r\nОна не станет возражать,\r\n         [C] \r\nНо скоро ей домой бежать,\r\n  [D]               [G] [G7] [C] \r\nИ он махнет рукой. \r\n\r\n   [G]\r\nИ будет много слов\r\n[C]               [G] \r\nО дисках и джинсах,\r\n       [C]          [G]  [H7] [Em]\r\nИ о погоде в небесах,\r\n        [A]      [D]             [G]\r\nА на часах уж за полночь давно. \r\n       [C]          [G]\r\nИ опустел Ваш дом,\r\n        [Em] [A]                  [Em]\r\nИ за окном уже мерещится рассвет.\r\n[D]         [G] \r\nДрузей уж нет -\r\n     [C]          [G] \r\nДрузья ушли давно,\r\n         [C]          [G] \r\nЛишь одиночество одно\r\n        [D]          [C] \r\nЗабыто Вами на столе,\r\n           [D]         [G] \r\nКак будто пачка сигарет. \r\n\r\n           [C]\r\nСпешу поздравить Вас,\r\n           [G] \r\nСпешу поздравить Вас -\r\n          [C]                          [G] [C]\r\nСегодня стали Вы на целый год старей...', 4, 3, 2),
(8, 4, 'Посвящение Хорошему Знакомому', '[Am]            [C]\r\nПусть люди тебя называют ослом,\r\n    [H]     [B]       [Am]\r\nНо как тебе повезло:\r\n                            [C]\r\nТы веришь всерьёз, что в почёте добро,\r\n     [H]         [B]       [Am]\r\nИ в то, что наказано зло.\r\n\r\n      [Dm]              [G]\r\n   Тебя обмануть не трудно ничуть,\r\n      [Dm]              [G]\r\n   Ты это снесёшь с улыбкой -\r\n       [Dm]                 [G]\r\n   Ты веришь, что некому нас обмануть,\r\n        [F]                [E7]\r\n   И в то, что обман - ошибка.\r\n\r\nИ сильному стоит тебя поманить -\r\nИ ты побежишь к господину,\r\nА в лошадь тебя захотят превратить -\r\nПослушно подставишь спину.\r\n\r\nИ пусть тебе люди плюют в глаза,\r\nА ты сильней всех на свете.\r\nТебя никогда не убьёт гроза\r\nИ не сломает ветер.\r\n\r\n   Таких стороной обходит волна,\r\n   И ты всегда незамечен,\r\n   И если на каждого ляжет вина,\r\n   Тебя обвинить будет не в чем.\r\n\r\nА если накажут - ты это снесешь\r\nИ вновь обретешь свободу.\r\nСквозь долгие годы себя пронесешь\r\nИ сохранишь породу.', 3, 6, 3),
(9, 4, 'Ты или Я', '[Hm]         [D]       [Ddim]      [F#7]\r\nВсе очень просто. Сказки - обман.\r\n[Hm]          [D]      [Ddim]       [F#7]\r\nСолнечный остров скрылся в туман.\r\n[Em7]       [D]      [Em7]       [D]\r\nЗамков воздушных не носит земля.\r\n[Em]      [Gm]      [Hm]   [F#]\r\nКто-то ошибся - ты или я\r\n\r\nВсе очень просто - нет гор золотых. \r\nПадают звезды в руки других. \r\nНет райской птицы среди воронья.\r\n                        [Hm] [F#] [G]\r\nКто-то ошибся - ты или я \r\n\r\n[Cm]\r\nЛишь только весною тают снега.\r\nИ даже у моря есть берега.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.\r\n\r\nВсе очень просто -\r\nВ сказке обман.\r\nСолнечный остров\r\nСкрылся в туман.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.', 4, 55, 4),
(10, 1, 'Крысы', '[ C#7 F#m]Крысы [G#7]придумали мир для крыс\r\nИ [Bm]для них он [F#m]совсем неплох\r\nЖиви себе по крысиным законам\r\nИ будешь жить как бог\r\n[A]Крысы не [G#7]любят других миров,\r\n[Bm]Хотя их [C#]манит высь\r\n[F#m]Поскольку в [G#7]своей норе они боги,\r\n[Bm]В других [C#]мирах их [F#m]держат за крыс\r\n\r\n\r\n[A]Богу [B/A]Богово, волку логово\r\n[F]Кораблю — [E]волна [A]под винтом\r\n[F#m]Кто там звонит в колокол\r\n[B7]По ком звонит колокол\r\n[D7]Не [C#]спеши. Ты всё узнаешь потом.\r\n\r\n[ F#m ]\r\nПервосвященник и главный судья\r\nВзяли меня в оборот\r\nОдин кричал «ты не любишь страну»\r\nВторой «ты не любишь народ»\r\nКогда оба умолкли я попросил\r\nЕщё что-нибудь на «бис»\r\n\r\nЯ очень люблю и народ и страну\r\nНо я не могу терпеть крыс\r\n\r\n\r\nЯ раньше думал, я гость в этом мире,\r\nИ каков он — не мне решать.\r\nНо мне меньше и меньше нравится воздух,\r\nКоторым мне предлагают дышать.\r\nИ как тут быть при таком раскладе,\r\nКогда в любой разговор\r\nВсе чаще и чаще вплетается запах\r\nДерьма из крысиных нор.', 3, 16, 2),
(11, 1, 'Чужие среди чужих', '[Em Em+7]Ночь - прочь,                \r\n[Em7]И вновь рассвет,             \r\n[Em6]Спасенья нет,                                        \r\n[Am6]А он не гасит свет,          \r\nКак будто лишь под лампой  \r\n[C#dim(V)]Он найдет ответ [Cdim(IV)]    \r\nСекрет [Em]его изгнанья.         \r\n                             \r\nШум дня,                     \r\nКраски дня,                  \r\nДругого дня,                 \r\nА здесь еще вчера,           \r\nИ снова ночь без сна         \r\nПод лампой до утра,          \r\nИ больше отставанье.\r\n                                    \r\n[F#]Есть здесь кто-нибудь?    \r\n[F]Мы чужие [Em]среди чужих.                \r\n[G] [F#7] [F] [Em]М-м-м-м-м                 \r\n                             \r\nДень влет,                   \r\nИ больше гнет                \r\nНеспетых слов, \r\nНесказанных речей,           \r\nИ даже дом - не дом,         \r\nИ дом почти ничей -          \r\nСквозь крышу видно небо.     \r\n                             \r\nЧас бьет,                    \r\nИ все известно \r\nНаперед, \r\nИ скоро он уйдет, \r\nА там, где день, \r\nНикто о нем и не вздохнет,\r\nКак будто он и не был.\r\n\r\nЕсть здесь кто-нибудь? \r\nМы чужие среди чужих...', 2, 35, 3),
(12, 1, 'Мама', '[Dmadd9]Мама, город по крышам\r\n[Dmadd9/B]Засыпало снегом.\r\n[Dmadd9/A#]Мама, что-то случилось\r\n[Dmadd9]С землёю и небом.\r\nМне приснилось, что мы\r\nПотеряли друг друга\r\n\r\nМама, слышишь, как плачет\r\nНад городом вьюга?\r\n\r\n[Cm]Мне приснилось, [Adim7]что люди - уже и не люди.\r\nЯ [A#m]боюсь, что усну,\r\nА [Edim]рассвета не будет.\r\nИ [Dm]метель [Dm/C]понесёт меня\r\n[Dmadd9/B]Выше и выше.\r\nИ [ Dmadd9/A#]никто не поможет, [A7]никто не услышит.\r\n\r\n[F]Успокойся, малыш\r\n[Gm]И не плачь, что ты, что ты.\r\n[A#m]Просто ангел [F]не может найти свои ноты.\r\n[Dm]Он терял их и[Dm/C] раньше,\r\n[Dmadd9/B]Такое случалось.\r\nНо [Dmadd9/A#]пока, слава богу,\r\n[C]Удачно кончалось.\r\n\r\nОн найдёт их, дружок,\r\nВ этом нету сомненья\r\nИ над небом опять\r\nЗазвенит его пенье.\r\nВот тогда слово в строку, дружок,\r\nВот тогда ногу в стремя.\r\nАх, какое наступит прекрасное время!', 4, 36, 4),
(13, 1, 'Завтра был снег', '[C]Завтра [C+5]был снег, [Am/c]ранний, [C+5]нежданный.\r\n[C]Не угадать [C+5]сказочный [Am/c C7]миг. \r\n[Dm7]Мир за [Em]мгновение стал светел и чист.\r\n[Dm]Словно [G]нетронутый лист.\r\n\r\nСловно он знал, всё что случится. \r\nСловно пришел нас выручать. \r\nВсё, что стряслось не оставило след. \r\nСловно утратило цвет.\r\n\r\nТолько [Am]белый, [D]белый.\r\n[F]Дай нам с начала [C F D# F C]начать. \r\n\r\n[F]Выше, [E7]выше,\r\n[Am]Пусть как [C7]страницы [F]раскроются белые крыши.\r\n[E7]Как начало[Am C7] всего.\r\n\r\n[F]Цели [E7]намечены, перья наточены,\r\n[Am]Пушки [C7]заряжены, роли разучены.\r\n[F]Тише, [G]не касайтесь [C F D# F C]его.', 4, 10, 5),
(14, 1, 'Оставайся собой', '[D]Как тебя [C]любили, [G]возносили и поили вином\r\n[D]Как тебя [C]гнобили, [G]били, били поливали говном.\r\n\r\n[C]Это бой, [G]значит будет отбой.\r\nНе [D]сгибайся, [C]не сдавайся,\r\nНе [B]меняйся, [G]оставайся собой.\r\n\r\nРыбам в море лучше, но на блюде их закончатся дни.\r\nСвиньи шли на студень, только люди оставались людьми.\r\n\r\nЭто бой, значит будет отбой.\r\nНе сгибайся, не сдавайся,\r\nНе меняйся, оставайся собой.\r\n\r\nВремя нажимает, поджимает невидимой рукой.\r\nТы взлетаешь, ты ныряешь, ты не знаешь, кто ты такой.\r\n\r\nЭто бой, значит скоро отбой.\r\nНе сгибайся, не сдавайся,\r\nНе меняйся, оставайся собой.', 3, 21, 6),
(15, 1, 'Там, где светел день', '[C]Когда [Bmaj7]сойдет [C]последний [Bmaj7]снег\r\n[C]Когда вокруг [Bmaj7]все будто[Am] в первый раз\r\n[F]Вернётся[C F] вмиг [C]движенье рек \r\nКто [Asus4]вспомнит [E7]нас?\r\n\r\nТам, [B]где будет [Am]ночь без гроз \r\nА за ней[B] рассвет [Am]без слёз\r\nТам, где [C]светел[Bmaj7] день[C Bmaj7]\r\n\r\nКогда последний самолет \r\nПробьет кордоны туч в урочный час \r\nИ боль пройдет, и всё пройдёт \r\nКто вспомнит нас. \r\n\r\nТам, где будет ночь без гроз \r\nА за ней рассвет без слёз \r\nТам, где светел день', 3, 6, 7),
(16, 1, 'Сорок лет тому назад', '[D]Сорок лет[D/c] тому назад [G]кричали мне: «Держись!»\r\n[D]Вновь кричат. Наверно,[G] им видней.\r\n[Em]Сто потерь [D]и сто [Em]наград, моя[D] смешная жизнь.\r\n[Em]Вот была[D] и стоит [Em]ли о [A7]ней.\r\n\r\nСорок лет сквозь пену дней, я вижу вновь и вновь.\r\nКак бы ни мотал меня мой путь,\r\nВпереди и чуть быстрей, летит моя любовь,\r\nСтоит только руку протянуть.\r\n\r\nА я [D]бежал за ней,[D/c] я загнал коней.\r\nЯ и[G] день, и ночь,[A7] думал только о ней.\r\n[D]Непонятно [D/c]как ускорял я шаг.\r\nТолько[G] ни [A7]на шаг, не [D]приблизился[D/c] к [G]ней.\r\n\r\nЯ покинул ваш недобрый, ваш похмельный бал.\r\nВсе идет по кругу в сотый раз.\r\nВ миг, когда раздастся крик, нас кто-то обманул.\r\nЖаль, я не увижу ваших глаз.\r\n\r\nА я [D]бежал за[D/c] ней, я загнал коней.\r\nЯ и[G] день, и ночь, [A7]думал только о ней.\r\n[D]Непонятно [D/c]как ускорял я шаг.\r\n[G]Только ни [A7]на шаг, не [Hm G]приблизился[D] к [Hm]ней.[G A7]\r\n\r\nА я бегу за ней, я гоню коней.\r\nЯ и день, и ночь, думал только о ней.\r\nНепонятно как ускорял я шаг.\r\nТолько ни на шаг, я не приблизился к ней.\r\nЯ не приблизился к ней...', 3, 35, 8),
(17, 1, 'Вот край', '[G]Вот [C7]край, [G]давай заглянем[Hm7-5] за [E7]этот край!\r\nЯ не [Am]зову с собой [Cm]всех, я слабо верю в успех,\r\nЯ [G]просто помню,[C7] когда[Am] неба[D7] хватало на всех\r\n[G]Пойдём [C7]со мной,[G] до края, по[Hm7-5] короткой[E7] прямой...\r\n[Am]Никто не сможет[Cm] запретить нам хотеть:\r\n[G]Упасть так[C7] упасть,[Am] взлететь[D7] так [G]взлететь...\r\n\r\n[Am]Я был богат,[D] но планка упала,\r\n[Am]Как только я[D] начал копить\r\n[Am]Я перестал [D]выпивать с кем попало\r\n[Am]И сразу пропало[D] желание пить\r\n\r\n[Hm]Я долго воду[E] носил решетом,\r\n[Am]Пока пожар [Cm]не утих\r\nНо[G] если [G+7]не ставишь[Em] себя ни[Em7] во что,\r\n[C]Чего же ждать[D] от других?\r\n\r\nВот край, давай заглянем за этот край!\r\nЯ не зову с собой всех, я просто верю в успех,\r\nЯ помню время, когда неба хватало на всех\r\nПойдём со мной, до края, по короткой прямой...\r\nНикто не сможет запретить нам хотеть:\r\nУпасть так упасть, взлететь так взлететь\r\n\r\nЕсли мыши заведуют сыром,\r\nЗабудьте, как пахнет сыр\r\nКогда вояки командуют миром,\r\nВойной закончится мир\r\n\r\nНо мы не верим в зоркость собственных глаз,\r\nИ верим в призрачность снов\r\nЯ спел, что хотел, уже тысячу раз,\r\nМне больше не нужно слов!\r\n\r\nВот край, давай заглянем за этот край!\r\nЯ не зову с собой всех, я просто верю в успех,\r\nЯ помню время, когда неба хватало на всех\r\nПойдём со мной, до края, по короткой прямой...\r\nНикто не сможет запретить нам хотеть:\r\nУпасть так упасть, взлететь так взлететь', 3, 47, 9),
(18, 1, 'Однажды', '[G]Я зову тебя,[Em7]\r\n[Am]А ты не[D] слышишь[G] - вот[Em7] беда;\r\n[Am]Ведёт [D]дорога в [Cm]никуда,\r\n[Am]И пусть всё[D] ближе...\r\n\r\nДруг, любезный мой\r\nТы прав, уже не надо следовать за мной.\r\nБог даст - и ты услышишь голос за стеной,\r\nХоть он всё тише...\r\n\r\n[G]Однажды, когда этот [Am]мир обессилит от жажды,\r\nИ[Cm] каждый поймёт [G]наконец, в чём он был виноват.\r\n\r\nСлучится друг другу в глаза посмотреть и проститься,\r\nКак птицы, что больше сюда уже не прилетят.\r\n\r\nНо, что-то заставит звучат еле слышную ноту,\r\nИ кто-то откроет ворота на солнечный свет.\r\n\r\nМы вместе идём - распеваем хорошие песни\r\nПо Пресне. И в мире нет смерти, и времени нет.\r\n\r\n[Am G Em]Нет [D]смерти, и[G] времени[Em] нет...[Am D G]', 4, 17, 10),
(19, 2, 'Мама', '[Dmadd9]Мама, город по крышам\r\n[Dmadd9/B]Засыпало снегом.\r\n[Dmadd9/A#]Мама, что-то случилось\r\n[Dmadd9]С землёю и небом.\r\nМне приснилось, что мы\r\nПотеряли друг друга\r\n\r\nМама, слышишь, как плачет\r\nНад городом вьюга?\r\n\r\n[Cm]Мне приснилось, [Adim7]что люди - уже и не люди.\r\nЯ [A#m]боюсь, что усну,\r\nА [Edim]рассвета не будет.\r\nИ [Dm]метель [Dm/C]понесёт меня\r\n[Dmadd9/B]Выше и выше.\r\nИ [ Dmadd9/A#]никто не поможет, [A7]никто не услышит.\r\n\r\n[F]Успокойся, малыш\r\n[Gm]И не плачь, что ты, что ты.\r\n[A#m]Просто ангел [F]не может найти свои ноты.\r\n[Dm]Он терял их и[Dm/C] раньше,\r\n[Dmadd9/B]Такое случалось.\r\nНо [Dmadd9/A#]пока, слава богу,\r\n[C]Удачно кончалось.\r\n\r\nОн найдёт их, дружок,\r\nВ этом нету сомненья\r\nИ над небом опять\r\nЗазвенит его пенье.\r\nВот тогда слово в строку, дружок,\r\nВот тогда ногу в стремя.\r\nАх, какое наступит прекрасное время!', 4, 35, 2),
(20, 2, 'Край', '[G]Вот [C7]край, [G]давай заглянем[Hm7-5] за [E7]этот край!\r\nЯ не [Am]зову с собой [Cm]всех, я слабо верю в успех,\r\nЯ [G]просто помню,[C7] когда[Am] неба[D7] хватало на всех\r\n[G]Пойдём [C7]со мной,[G] до края, по[Hm7-5] короткой[E7] прямой...\r\n[Am]Никто не сможет[Cm] запретить нам хотеть:\r\n[G]Упасть так[C7] упасть,[Am] взлететь[D7] так [G]взлететь...\r\n\r\n[Am]Я был богат,[D] но планка упала,\r\n[Am]Как только я[D] начал копить\r\n[Am]Я перестал [D]выпивать с кем попало\r\n[Am]И сразу пропало[D] желание пить\r\n\r\n[Hm]Я долго воду[E] носил решетом,\r\n[Am]Пока пожар [Cm]не утих\r\nНо[G] если [G+7]не ставишь[Em] себя ни[Em7] во что,\r\n[C]Чего же ждать[D] от других?\r\n\r\nВот край, давай заглянем за этот край!\r\nЯ не зову с собой всех, я просто верю в успех,\r\nЯ помню время, когда неба хватало на всех\r\nПойдём со мной, до края, по короткой прямой...\r\nНикто не сможет запретить нам хотеть:\r\nУпасть так упасть, взлететь так взлететь\r\n\r\nЕсли мыши заведуют сыром,\r\nЗабудьте, как пахнет сыр\r\nКогда вояки командуют миром,\r\nВойной закончится мир\r\n\r\nНо мы не верим в зоркость собственных глаз,\r\nИ верим в призрачность снов\r\nЯ спел, что хотел, уже тысячу раз,\r\nМне больше не нужно слов!\r\n\r\nВот край, давай заглянем за этот край!\r\nЯ не зову с собой всех, я просто верю в успех,\r\nЯ помню время, когда неба хватало на всех\r\nПойдём со мной, до края, по короткой прямой...\r\nНикто не сможет запретить нам хотеть:\r\nУпасть так упасть, взлететь так взлететь', 3, 46, 3),
(21, 3, 'Помогите', '[A]Помогите,[F#m] помогите\r\n[A]Беда случилась[F#m] со всеми\r\n[A]Посмотрите,[F#m] посмотрите\r\nС [C#m]цепей с[E]орвалось[A] время \r\n\r\n[A]Вчера я с ним[F#m] играл\r\nИ [E]думал, [E7]что оно ручное,\r\n[F#m]И никто не знал,\r\nЧто[H7] случится[E7] вдруг такое \r\n\r\nПомогите, помогите \r\nБеда случилась со всеми \r\nПосмотрите, посмотрите \r\nС цепей сорвалось время \r\n\r\nЗнакомый врач сказал: \r\nЧто, может быть, оно взбесилось \r\nДень три дня стоял \r\nИ жизнь почти остановилась, \r\n\r\nПомогите, помогите \r\nБеда случилась со всеми \r\nПосмотрите, посмотрите \r\nС цепей сорвалось время \r\n\r\nИ если бы ему \r\nВернуться вдруг не захотелось \r\nНе ясно никому \r\nЧто людям всем пришлось бы делать \r\n\r\nПомогите, помогите \r\nБеда случилась со всеми \r\nПосмотрите, посмотрите \r\nС цепей сорвалось время.', 2, 20, 3),
(22, 3, 'Я Сегодня Один', '[E6]Я сегодня [F#m]один\r\nЦелый мир[G#m] у меня друзей\r\n[A]Город шумный[C#m] затих\r\nИ [G]опустел[H]\r\n\r\nМимо спящих машин \r\nМимо смолкнувших площадей \r\nТихо-тихо пройдет \r\nЗавтрашний день \r\n\r\nТы сейчас высоко паришь \r\nДо тебя мне миллионы дней \r\nА лишь только вчера \r\nМы были вдвоем \r\n\r\nЦелый город ночной \r\nРасплескал океан огней \r\nИ не гаснет окно \r\nВ доме твоем \r\n\r\nТы сейчас не со мной \r\nДо тебя мне миллионы дней \r\nА лишь только вчера \r\nМы были вдвоем \r\n\r\nДремлет город ночной \r\nРасплескав океан огней \r\nИ не гаснет окно \r\nВ доме твоем.', 4, 29, 4),
(23, 3, 'Замок в Небе', '[E]                      [C#m]       [F#m] [H]\r\nЯ мог бы взять тебя в дальние страны,\r\n          [G#]        [A]           [E] \r\nНа целый мир посмотреть только раз.\r\n                    [C#m]    [F#m] [H] \r\nЯ мог с тобой переплыть океаны,\r\n          [G#]     [A]         [E] \r\nУйти в моря человеческих глаз.\r\n         [C#m] \r\nЕсли ты хочешь. \r\n\r\n             [E]              [C#m]\r\n   Но ты не видишь замка в небе,\r\n               [E]        [C#m]\r\n   Не слышишь голоса реки.\r\n            [A]          [F#m]       [C#m] [H]\r\n   Я не смогу тебе все это объяснить.\r\n\r\nЯ для тебя рисовал бы рассветы,\r\nПалитрой солнца картины небес. \r\nИ дал услышать симфонию ветра, \r\nКогда поет для меня дальний лес. \r\nЕсли ты хочешь. \r\n\r\n   Но ты не видишь замка в небе, \r\n   Не слышишь голоса реки. \r\n   Я не смогу тебе все это объяснить.', 3, 12, 5),
(24, 3, 'Песня про Миллионера', '[D]           [F#]       [Hm]  [G] [A]\r\nЯ слышал, что миллионеры\r\n[D]            [F#]          [Hm] [H7] \r\nДля всех на Западе в пример,\r\n[Em]        [F#]              [Hm]   [H7]\r\nЯ б тоже был для всех примером,\r\n[Em]         [F#]        [Hm] [G] [A]\r\nКогда б я был миллионер.\r\n\r\nСорил деньгами б я своими,\r\nИмел заводы и поля,\r\nМоё во всех газетах имя\r\nИ фотография моя.\r\n\r\n    [D]              [Em]\r\n   Пять машин позолоченных\r\n           [G] [A]       [D] \r\n   Ждут меня у крыльца,\r\n                  [Em] \r\n   Я сажусь с озабоченным\r\n        [G]  [A]     [D] \r\n   Выражением лица. \r\n\r\n       [Em]     [G]   [D]\r\n      Жизнь, как сон;\r\n       [Em]     [G]   [D] \r\n      Жизнь, как сон. \r\n\r\nРаботы лучше не найду я,\r\nГорит любовь в мильонах глаз.\r\nКуплю я ванну золотую\r\nИ изумрудный унитаз.\r\n\r\nЯ слышал, что миллионеры \r\nДля всех на Западе в пример,\r\nЯ б тоже был для всех примером,\r\nКогда б я был миллионер.', 3, 44, 6),
(25, 3, 'Продавец Счастья', '[H]                       [F#]\r\nВчера я шёл домой в начале ночи,\r\n    [G#m]                   [H] \r\nКогда Москва затихла наконец,\r\n                              [F#] \r\nИ видел, как проходит через площадь\r\n    [G#m]                     [H] \r\nНа редкость необычный продавец.\r\n\r\nОн был одет в пурпурные одежды, \r\nНад ним в тумане пели соловьи.\r\nОн продавал на лучшее надежды,\r\nИ счастье, и безоблачные дни.\r\n\r\n  [C]                     [G]\r\nИ я хотел купить себе удачи,\r\n  [Am]                       [C] \r\nИ я полез за мелочью в карман,\r\n                              [G]\r\nНо он угрюмо буркнул: «Нету сдачи»,\r\n   [Am]                       [C]\r\nИ не спеша ушёл в ночной туман.\r\n\r\n   [C#]                          [G#]\r\nСегодня я всю ночь провёл в дозоре\r\n   [Bm]                       [C#]\r\nИ до утра бродил по тем местам.\r\n                           [G#]\r\nИ с кем угодно я готов поспорить,\r\n      [Bm]                          [C#]\r\nЧто продавца не встретить больше там.', 2, 49, 7),
(26, 3, 'Летучий Голландец', '[D7sus4]      [D6-3]\r\nКаждый день, отправляясь в плаванье\r\n[D7sus4]              [D6-3]\r\nПо морям сквозь ветра и бури,\r\n      [C]     [Am]    [D6sus4]\r\nЯ мечтаю о тихой гавани,\r\n[D7sus4]          [D6-3]\r\nГде б мои корабли уснули.\r\n[D7sus4]      [D6-3]\r\nИ о пристани в синих сумерках,\r\n[D7sus4]         [D6-3]\r\nГде огни угольками рдеют,\r\n        [C]              [D6sus4]\r\nГде не верят тому, что умер я,\r\n[D7sus4]          [D6-3]\r\nГде все время ждут меня\r\n     [D7sus4]\r\nИ надеются.\r\n\r\n[C]        [G]\r\nКак давно ты была оставлена\r\n[Am]          [G]\r\nМоя тихая старая гавань.\r\n         [C]       [Am]      [G]\r\nИ с тех пор моя жизнь оправлена\r\n[Am]            [G] \r\nВ пересуды и грязный саван.\r\n[C]           [G] \r\nПлыли прочь, онемев от ужаса,\r\n[D]                [Am] \r\nЛишь завидя мой парус белый,\r\n[C]     [G] \r\nНикому не хватило мужества,\r\n[D]            [Am] \r\nПодойти и узнать в чем дело. \r\n\r\n[C]       [G]\r\nА потом, где б они ни плавали,\r\n[D]                      [Am] \r\nМстя за страх, что тогда испытали,\r\n[C]       [G] \r\nОбъявили посланцем дьявола,\r\n[D]               [D6-3] \r\nКораблём мертвецов назвали. \r\n\r\n[D7sus4]    [D6-3]\r\nДай им бог оправдаться дочиста,\r\n[D7sus4]    [D6-3] \r\nОставаться в мирке-постели,\r\n[D7sus4]     [D6-3] \r\nИм не знать каково одиночество\r\n[D7sus4]             [D6-3] \r\nПод огнями святого Эльма. \r\n\r\n[G] [G/f] [Em] [D]\r\n\r\n[D7sus4]      [D6-3]\r\nКаждый день, отправляясь в плаванье,\r\n[D7sus4]  [D6-3] \r\nВ океаны московских улиц,\r\n      [C]     [Am]    [D6sus4]\r\nЯ мечтаю о тихой гавани,\r\n[D7sus4]          [D6-3] \r\nГде б мои корабли уснули.\r\n[D7sus4]    [D6-3] \r\nИ о домике в синих сумерках,\r\n[D7sus4]         [D6sus4] \r\nГде окно от закатов рдеет,\r\n        [C]       [Am]     [D6sus4] \r\nГде не верят тому, что умер я,\r\n[D7sus4]          [D6-3] \r\nГде все время ждут и надеются.\r\n\r\n[G] [G/f] [Em]', 6, 53, 8),
(27, 3, 'В Круге Чистой Воды', '[Hm7] [Cm#7] [A7] [D7] [C#7]\r\n[F#m] [E] [D] [C#] [F#m]\r\n\r\n[Hm7]    [E]\r\nЯ раскрасил свой дом\r\n[A7]                    [D7]\r\nВ самый праздничный цвет,\r\n[C#7]         [F#m] [E]  [D]\r\nНаписал на небе своем\r\n[C#]               [F#m] [C#7] \r\nБесконечный рассвет.\r\n\r\nМне на весь этот мир \r\nБыло красок не жаль,\r\nЯ любил и сказки творил,\r\nИ забыл про печаль.\r\n\r\nНо случилась беда\r\nВ ярком мире моем,\r\nИ все краски, что выдумал я,\r\nБыли смыты дождем.\r\n\r\nМир недолго страдал\r\nПосле этой беды,\r\nИ лишь только ветер небо качал\r\nВ круге чистой воды.\r\n\r\n[H] [E] [H] [E] [H] [E]\r\n[Hm] \r\n[Gdim(V)] [Gdim(VIII)] [Gdim(XI)]\r\n\r\nМир недолго страдал\r\nПосле этой беды,\r\nИ лишь только ветер небо качал\r\nВ круге чистой воды.', 4, 56, 9),
(28, 3, 'Черно-Белый Цвет', '[Am]        [D]         [E]      [Am] \r\nКто знал? Кто тебя таким создал?\r\n        [C]                           [E]\r\nКто позволил быть тебе счастливей всех?\r\n  [Am]      [D]         [E]      [Am] \r\nКто смог на тебя надеть венок,\r\n        [C]             [H]    [B]   [Am]\r\nСамый средний в этом мире человек?\r\n\r\nСтар мир, ты его затер до дыр, \r\nИ веселых красок в мире больше нет.\r\nТы сам, сам закрыл свои глаза\r\nИ весь мир раскрасил в чёрно-белый цвет.\r\n\r\n   [D]\r\n   Кто ты? Скажи сам себе\r\n      [Am] \r\n   Хотя бы в этот раз.\r\n   [D] \r\n   Кто ты? Куда ты идёшь,\r\n      [Am] \r\n   Не открывая глаз?\r\n   [D] \r\n   И кто позволил тебе\r\n   [H] \r\n   Раскрасить мир людей\r\n      [E]                 [Am] \r\n   В чёрно-белый цвет? В чёрно-белый цвет? В чёрно-белый цвет?\r\n\r\nСтар мир, ты его затер до дыр, \r\nИ веселых красок в мире больше нет.\r\nТы сам, сам закрыл свои глаза\r\nИ весь мир раскрасил в чёрно-белый цвет.\r\n\r\n   Кто ты? Скажи сам себе \r\n   Хотя бы в этот раз. \r\n   Кто ты? Куда ты идёшь, \r\n   Не открывая глаз? \r\n   И кто позволил тебе \r\n   Раскрасить мир людей \r\n   В чёрно-белый цвет?', 3, 15, 10),
(29, 3, 'Я Смотрю в Окно', '[Dm]\r\nЯ смотрю в окно -\r\n[Am]\r\nЗанятья лучше нет,\r\n[Dm] \r\nЯ смотрю в окно\r\n[Am] \r\nИ вижу целый свет:\r\n[Dm]\r\nПроходят люди мимо,\r\n[Am] \r\nКак будто нет меня -\r\n[B]   [C#] [B]   [C#] [B] [C#] [F]\r\nИм совсем не нужен я.\r\n      [G] [B] [C#] [B] [C#] [B] [C#] [Dm]\r\nА-а-а...\r\n\r\nИ за мигом миг \r\nЯ вижу сотни лиц: \r\nРожденных и родных, \r\nУбитых и убийц, \r\nИ все они спешат \r\nПрожить ненужный час, \r\nПока их факел не погас,\r\nПока он не погас.\r\n\r\nЗдесь ведут войну\r\nЗа лучшие места,\r\nЗдесь идут ко дну,\r\nВзмывают в небеса -\r\nПусть ты сегодня бог,\r\nА завтра ты никто...\r\nЯ смотрю на вас в окно. \r\nА-а-а...', 6, 51, 11),
(30, 4, 'Девятый Вал', '[F#m]\r\nБыл день, белый день,\r\n [G#]               [H] [D] \r\nНеба голубой цвет.\r\n      [F#m] \r\nИ никто не знал: \r\nВ этот день шла война\r\n[G#]                   [H] [D] \r\nНа целый белый свет,\r\n       [F#m] \r\nКак девятый вал. \r\n\r\n    [E]             [F#m]\r\n   Да-да-да-да... У-у-у...\r\n\r\nБыл бой, и снова бой, \r\nГород превращен в прах, \r\nИ повержен враг. \r\nМиллион бойцов, юных молодцов, \r\nДружно вознеслись в рай \r\nС песней на устах. \r\n\r\n   Да-да-да-да... У-у-у...\r\n\r\nБыл день, и мир настал, \r\nВойне пришел конец, \r\nИ никто не знал: \r\nВ сотый раз шла война \r\nНа целый белый свет, \r\nКак девятый вал.\r\n\r\n   Да-да-да-да... У-у-у...', 4, 46, 5),
(31, 4, 'Полный Штиль', '[Em]         [D]         [C] [Em]\r\nПолный штиль, как тряпки паруса,\r\n     [C]       [Hm]          [Em] \r\nИ вода, как мёртвая, не дышит,\r\n     [C]              [G] \r\nЯ молю, чтоб каплю ветра\r\n        [Hm7]      [Am7]\r\nМне послали Небеса -\r\n       [C]     [Hm7]          [D]     [F#dim]\r\nВ Небесах меня никто не слышит. \r\n\r\nМой корабль - творенье тонких рук. \r\nМой маршрут - сплошная неудача. \r\nНо лишь только дунет ветер - \r\nВсе изменится вокруг, \r\nИ глупец, кто думает иначе. \r\n\r\nНа любой вопрос готов ответ,\r\nЖизнь всегда была послушна силе. \r\nНо никто не верит в то, \r\nЧто на свете ветра нет, \r\nДаже если ветер запретили.\r\n\r\nПолный штиль, как тряпки паруса.\r\nМир устал, уснул в ленивой дури. \r\nЯ молю, чтоб каплю ветра \r\nМне послали небеса, \r\nПусть сильнее грянет буря!', 3, 40, 6),
(32, 4, 'Марионетки', '[G] \r\nЛица стёрты, краски тусклы,\r\n[Em] \r\nТо ли люди, то ли куклы,\r\n[C] \r\nВзгляд похож на взгляд,\r\n          [G] \r\nА день на день.\r\n\r\n[C]         [D] \r\nЯ устал и, отдыхая,\r\n[G]              [E7] \r\nВ балаган вас приглашаю\r\n[Am]              [D]         [G] \r\nГде куклы так похожи на людей\r\n\r\nАрлекины и пираты,\r\nЦиркачи и акробаты,\r\nИ злодей, чей вид внушает страх,\r\nВолк и заяц, тигры в клетке -\r\nВсе они марионетки\r\nВ ловких и натруженных руках.\r\n\r\nКукол дергают за нитки, \r\nНа лице у них улыбки, \r\nИ играет клоун на трубе, \r\nИ в процессе представленья \r\nСоздается впечатленье, \r\nЧто куклы пляшут сами по себе. \r\n\r\nАх, до чего порой обидно, \r\nЧто хозяина не видно - \r\nВверх и в темноту уходит нить. \r\nА куклы так ему послушны, \r\nИ мы верим простодушно \r\nВ то, что куклы могут говорить. \r\n\r\nНо вот хозяин гасит свечи -\r\nКончен бал, и кончен вечер,\r\nЗасияет месяц в облаках.\r\nКукол снимут с нитки длинной,\r\nИ, засыпав нафталином,\r\nВ виде тряпок сложат в сундуках.', 4, 11, 7),
(33, 4, 'Маски', '[E]\r\nИ в радости праздной,\r\n     [C] \r\nИ в горькой беде\r\n       [C#m] \r\nПусть каждый из вас\r\n       [E7] \r\nБудет верен себе.\r\n  [A7] \r\nНосите маски;\r\n[E7] \r\nНосите маски:\r\n      [F#7]\r\nЛишь только под маской\r\n     [H7]                [E] \r\nТы сможешь остаться собой. \r\n\r\n   [A7]               [D7] \r\n   По воле случайной или воле своей\r\n   [A7]\r\n   Ходят невежды в масках умных людей.\r\n     [D7]\r\n   И я полагаю, что каждый из вас\r\n   [F#7]                  [H7]\r\n   Должен маску такую иметь про запас. \r\n\r\nИ в радости праздной, \r\nИ в горькой беде \r\nПусть каждый из вас \r\nБудет верен себе. \r\nНосите маски; \r\nНосите маски: \r\nЛишь только под маской \r\nТы сможешь остаться собой. \r\n\r\n   И если у друга случилась беда, \r\n   Маску участья не поздно надеть никогда. \r\n   Под маской, как в сказке, ты невидим, \r\n   И сколько угодно ты можешь смеяться над другом своим.', 4, 27, 8),
(34, 4, 'Флаг над Замком', '[D D/c#]        [D/c]          [D/h] [B]\r\nКак легко решить, что ты слаб,\r\n[A7]             [D]\r\nЧтобы мир изменить,\r\n[D/c#]    [D/c]    [D/h]          [B]\r\nОпустить над крепостью флаг\r\n[A7]           [Hm]  [F#m]\r\nИ ворота открыть.\r\n\r\n   [G]         [C]     [G]            [C*]\r\n   Пусть толпа войдет в город твой,\r\n   [A7]               [Dm] [B]\r\n   Пусть цветы оборвет.\r\n         [C] \r\n   И тебя в суматохе людской\r\n   [A7]               [D] \r\n   Там никто не найдет. \r\n\r\n       [D/c#]                 [D/c]       [D/h] [B]\r\n      Как легко знать, что ты в стороне,\r\n      [A7]              [D]\r\n      Что решаешь не ты.\r\n       [D/c#]       [D/c]              [D/h] [B]\r\n      Пусть другие побеждают в войне\r\n      [A7]            [D] [D7]\r\n      И сжигают мосты.\r\n\r\n         [G]             [Em]\r\n         Полпути позади и немного осталось, \r\n         [Hm]                     [H7]\r\n         И себя обмануть будет легче всего. \r\n         [Em]    [Em/d]       [Gdim]\r\n         От ненужных побед остается усталость,\r\n         [A7]                                 [Dm7] [G] [Dm] [G7]\r\n         Если завтрашний день не сулит ничего. \r\n\r\nИ как трудно стерпеть и сберечь все цветы,\r\nИ сквозь холод и мрак \r\nПоднимать на мачте мечты\r\nСвой единственный флаг.', 3, 17, 9),
(35, 4, 'Гимн Забору', '[Am]\r\nДушой и сердцем я горю -\r\n   [F] \r\nЗабору славу я пою,\r\n   [C] \r\nКоторый стойкостью своей\r\n   [D] \r\nЯвляет нам пример,\r\n   [F]           [G] \r\nКоторый крепок и силен,\r\n   [C]     [H]       [B]      [A]\r\nКоторый верен, словно слон,\r\n   [Dm]            [E]      [Am] \r\nНадежен, словно милиционер. \r\n\r\nСнимите шляпу с головы: \r\nПеред забором все равны, \r\nА если дверь найдете в нем - \r\nЗаприте на запор! \r\nИ днем, и ночью - в час любой, \r\nХраня священный ваш покой, \r\nСтоит Его Величество Забор. \r\n\r\nЗабор спасет от разных бед, \r\nОн - на любой вопрос ответ, \r\nОн вечно делит все на две \r\nРазличных стороны. \r\nИ если мы протянем в ряд \r\nЗаборы, что вокруг стоят, \r\nОни легко достанут до Луны. \r\n\r\nЗабор всегда непобедим, \r\nСердца трепещут перед ним, \r\nОн - наша слава и позор \r\nВекам наперекор. \r\nИ если хочешь на земле \r\nОставить память о себе, \r\nТогда построй еще один забор.', 2, 35, 10),
(36, 4, 'Самая Тихая Песня', '[G]\r\nЕсть на свете вещь,\r\n   [C] \r\nКоторую никак\r\n             [G]    [C] [G]\r\nЯ не могу понять:\r\n [C]              [G]\r\nЧем у человека меньше слов,\r\n      [C]                 [G]\r\nТем громче будет он кричать.\r\n [H7]          [Em] \r\nБудет он кричать. \r\n\r\n[C]\r\nЕсли человеку\r\n [G] \r\nБудет, что сказать,\r\n[C]               [G] \r\nОн лучше промолчит.\r\n[C] \r\nИ лишь только тот,\r\n      [G]         [Em]\r\nКому нечего сказать,\r\n  [C]             [G] \r\nГромче всех кричит,\r\n     [H7]            [Em]  [C] [D] [G] \r\nОн громче всех кричит.\r\n \r\n  [C]           [G]\r\nСтал бы ярче солнца круг\r\n[C]            [G] \r\nИ улыбнулся мир,\r\n[C] \r\nЕсли б друг у друга\r\n [G]             [Em] \r\nМы спросили вдруг:\r\n    [C]             [G] \r\n«Зачем мы так кричим?\r\n      [H7]            [Em] \r\nНу зачем мы так кричим?»\r\n\r\n   [C]             [G]\r\nВ песнях никогда я не поучал,\r\n    [C]           [G] \r\nЯ просто очень рад,\r\n    [C] \r\nЧто я сыграл Вам песню,\r\n     [G]           [Em] \r\nВ которой не кричал,\r\n   [Am]   [D7]   [G] \r\nА тихо-тихо пел.', 1, 19, 11),
(37, 5, '20 Лет', '[Gm]                     [Cm]\r\nОбещаньям я не верил и не буду верить впредь,\r\n    [F]           [D]               [Gm D]\r\nОбещаньям верить смысла больше нет.\r\n        [Gm]                         [Cm]\r\nНо, сказать по правде, я хотел бы только посмотреть,\r\n       [F]                           [D#]\r\nПосмотреть, что будет с нашим миром через 20 лет,\r\n        [Cm]          [F]          [B]  [D]\r\nЧто же будет с миром через 20 лет.\r\n\r\nМожет быть все люди будут жить в одной большой стране,\r\nНад которой будет вечный солнца свет.\r\nЧерез 20 лет уже никто не вспомнит о войне,\r\nЕсли только с нами что-то будет через 20 лет.\r\nЕсли что-то будет через 20 лет.\r\n\r\nДвадцать лет - немалый срок, и ты за 20 лет поймешь,\r\nЧто такое тьма и что такое свет.\r\nЧерез 20 лет забудут люди, что такое ложь,\r\nЕсли только с ними что-то будет через 20 лет.\r\nЕсли что-то будет через 20 лет.\r\n\r\n     [Gm]                       [Cm]\r\nЯ отдал бы все на свете и просил бы об одном -\r\n       [F]                       [D#]\r\nЧтобы только с нами что-то было через 20 лет.\r\n        [Cm]       [F]          [B]\r\nЧтобы что-то было через 20 лет.', 4, 13, 2),
(38, 5, 'Бег по Кругу', '[C#m]\r\nСекунды пульсом бьют в висок, \r\nИ пот со лба бежит, \r\nИ пыль из-под усталых ног, \r\nКак пыль из-под копыт.\r\n[F#7]\r\nИ все сошли давно, \r\nОстался только я - \r\nЯ должен обогнать себя,\r\n      [G#7]                       [C#m7] \r\nВедь каждый ставит только на меня. \r\n\r\n   [C#m7]\r\n   Бег по кругу,\r\n   [F#7] \r\n   По кругу без конца.\r\n   [C#m7]\r\n   Бег по кругу,\r\n      [F#7] \r\n   И нечем пот стереть с лица.\r\n   [C#m7]\r\n   Бег по кругу\r\n   [F#7] \r\n   И летом и зимой...\r\n       [G#7] \r\n   Скажи мне, ради Бога, друг, \r\n   Что стало с тобой? \r\n\r\nЯ день назад беды не знал \r\nИ бегал, где хотел, \r\nИ сам дороги выбирал, \r\nИ в беге преуспел. \r\nИ вот теперь я заперт в круг, \r\nДрузей своих любя: \r\nПопробуй, подведи-ка, друг, \r\nТого, кто все поставил не тебя! \r\n\r\n   Бег по кругу, \r\n   По кругу без конца. \r\n   Бег по кругу, \r\n   И нечем пот стереть с лица. \r\n   Бег по кругу \r\n   И летом и зимой... \r\n   Скажи мне, ради Бога, друг, \r\n   Что стало с тобой? \r\n\r\nЯ вижу слева дивный лес, \r\nА там, за лесом - луг... \r\nНо нету для меня чудес, \r\nА есть проклятый круг. \r\nИ я со зла бегу быстрей, \r\nБегу, себя кляня, \r\nБегу, как будто что-то должен тем, \r\nКто все поставил на меня. \r\n\r\n   Бег по кругу, \r\n   По кругу без конца. \r\n   Бег по кругу, \r\n   И нечем пот стереть с лица. \r\n   Бег по кругу \r\n   И летом и зимой... \r\n   Скажи мне, ради Бога, друг, \r\n   Что стало с тобой?', 3, 36, 3),
(39, 5, 'В Никитском Ботаническом Саду', '[F]                      [E7]\r\nВ Никитском Ботаническом саду\r\n        [Am]        [D7]\r\nГуляет ветер голубой,\r\n          [Gm]      [C7]\r\nШумит волнами прибой,\r\n         [F]       [D7]\r\nИ над твоей головой,\r\n   [Gm]       [C7]         [F]        [D7]\r\nУкрасили небесный простор пики гор,\r\n   [Gm]                      [C#] [C]\r\nВедут с волнами свой разговор.\r\n\r\n        [F]                   [E7]\r\n   И в лабиринте древних аллей\r\n      [Am]        [D7]          [Gm]      [C7]\r\n   Ленивыми стадами бродят толпы людей,\r\n            [F]       [D7]\r\n   А так же жен и детей,\r\n         [Gm]        [C7]        [F]          [D7]\r\n   По-хозяйски озирают бесконечный простор,\r\n      [Gm]        [C7]       [F]\r\n   И повышают свой кругозор.\r\n\r\n          [A7]\r\n      Вопросов не счесть,\r\n      Где здесь можно посидеть и поесть,\r\n                         [Gm]           [C7]\r\n      И отчего самшит дороже во сто крат,\r\n                  [F]       [D7]\r\n      Чем тот же рододендрон?\r\n          [Gm]                 [C#]  [C]\r\n      И где торгуют южным вином?\r\n\r\nВесь день течет людская река,\r\nИ руки уперев в бока,\r\nВзирают на деревья снизу вверх свысока,\r\nКак будто каждый листик на деревьях вокруг -\r\nТворенье их заслуженных рук.\r\n\r\n   И лишь когда погаснет закат,\r\n   Закроют сад, народ уйдет,\r\n   Назад к своим серьёзным делам по домам,\r\n   И не услышит никто, какая здесь тишина,\r\n   Когда стоит над садом луна.\r\n\r\n      Промчатся года,\r\n      И все кто были здесь уйдут навсегда,\r\n      И лишь деревья будут вечно, бесконечно\r\n      Год от года стоять...\r\n      Они умеют людям прощать.', 2, 21, 4),
(40, 5, 'Кафе "Лира"', '[Em7]           [A]         [Em7]      [A] \r\nУ дверей в заведенье народа скопленье, \r\n    [Em7]     [A]\r\nТоптанье и пар.\r\n[Em7]            [A]         [Em7]     [A]\r\nНо народа скопленье не имеет значенья -\r\n       [Em7]      [A]\r\nЗа дверями швейцар.\r\n\r\n[Em7]            [A]       [Em7]         [A]\r\nНеприступен и важен стоит он на страже \r\n    [Em7]      [A]\r\nБоевым кораблем.\r\n[Em7]            [A]        [Em7]      [A]\r\nНичего он не знает и меня пропускает \r\n          [C]       [D]         [Em] \r\nЛишь в погоне за длинным рублем, \r\n      [D]      [Em7]       [D]          [A] \r\nИ в его поведеньи говорит снисхожденье. \r\n\r\nА я сегодня один - я человек-невидимка, \r\nЯ сажусь в уголок. \r\nИ сижу, словно в ложе, и очень похоже, \r\nЧто сейчас будет третий звонок. \r\nИ мое отчужденье назовем наблюденьем. \r\n\r\nВот у стойки ребята их лица помяты, \r\nВ глазах глубина. \r\nБез сомненья ребятки испытали в достатке \r\nВеселящее действо вина. \r\nИ их поведенье назовем опьяненьем. \r\n\r\nВот за столиком дама - на даме панама, \r\nПод ней томный взгляд. \r\nНо панама упряма и клюет на панаму \r\nУже двадцать восьмой кондидат, \r\nИ ее состоянье назовем ожиданьем. \r\n\r\nВот товарищ с востока танцует жестоко, \r\nЕму пара нужна. \r\nТолько пары не видно, а танцору обидно, \r\nИ уводит его старшина. \r\nВ милицейском движеньи сквозит раздраженье. \r\n\r\n  [G]      [C]          [G] \r\nА я все верю, что где-то \r\n      [H]        [Em] \r\nБожей искрою света \r\n    [D]        [C] \r\nЗаймётся костер. \r\n [G]      [C]       [G] \r\nТолько нет интереса \r\n      [H]       [Em] \r\nИ бездарную пьесу \r\n       [C]      [D]         [Em] \r\nПродолжает тянуть режиссер. \r\n         [D]        [Em] \r\nТолько крашеный свет, \r\n[D]               [Em] \r\nТолько дым сигарет, \r\n      [D]        [Em] \r\nУ дверей в туалет, \r\n[D]     [Em] \r\nМеня нет. \r\n[D]            [Em] \r\nЯ за тысячу лет. \r\n[D]             [Em] \r\nЯ давно дал обет \r\n      [D]       [Em] \r\nНикогда не являться \r\n     [D]      [A] \r\nВ такой ситуации.', 3, 44, 5),
(41, 5, 'Право', '[C]\r\nКаждый, право, имеет право\r\n    [G7]               [F7] \r\nНа то, что слева, и то, что справа,\r\n    [C] \r\nНа черное поле, на белое поле,\r\n    [G7]          [F7] \r\nНа вольную волю и на неволю. \r\n\r\n   [Dm]              [G]\r\n   В этом мире случайностей нет,\r\n   [Dm]               [G] \r\n   Каждый шаг оставляет след,\r\n   [Dm]           [F7]                 [G7] \r\n   И чуда нет, и крайне редки совпаденья.\r\n        [F7]                 [G7] \r\n   И не изменится времени ход.\r\n         [F7]                 [G7] \r\n   Но часто паденьем становится взлет,\r\n         [F7]                 [G7]  \r\n   И видел я, как становится взлетом паденье. \r\n\r\n      [C]\r\n      Ты шел, забыв усталость и боль,\r\n         [Am]             [G] \r\n      Забыв и это, и то.\r\n      [C] \r\n      Ты видел вдали волшебный огонь,\r\n         [Am]                  [G] \r\n      Который не видел никто,\r\n      [F7]                 [G7] \r\n      И часто тебе смеялись вслед,\r\n      [F7]                 [G7] \r\n      Кричали, что пропадешь.\r\n      [F7]                 [G7] \r\n      Но что тебе досужий совет,\r\n      [F7]                 [G7] \r\n      Ты просто верил и шел на свет,\r\n      И я знаю, что ты дойдешь. \r\n\r\nВедь каждый, право, имеет право \r\nНа то, что слева, и то, что справа, \r\nНа черное поле, на белое поле, \r\nНа вольную волю и на неволю. \r\n\r\n   В этом мире случайностей нет, \r\n   Каждый шаг оставляет след, \r\n   И чуда нет, и крайне редки совпаденья. \r\n   И не изменится времени ход, \r\n   Но часто паденьем становится взлет, \r\n   И видел я, как становится взлетом паденье. \r\n\r\n      А ты дороги не выбирал \r\n      И был всегда не у дел. \r\n      И вот нашел не то, что искал, \r\n      А искал не то, что хотел. \r\n      И ты пытался меня обмануть, \r\n      Мол, во всем виновата судьба, \r\n      А я сказал тебе: "В добрый путь, \r\n      Ты сам согласился на этот путь, \r\n      Себя превратив в раба..." \r\n\r\nВедь каждый, право, имеет право \r\nНа то, что слева, и то, что справа, \r\nНа черное поле, на белое поле, \r\nНа вольную волю и на неволю.', 3, 5, 6),
(42, 5, 'Марионетки', '[G] \r\nЛица стёрты, краски тусклы,\r\n[Em] \r\nТо ли люди, то ли куклы,\r\n[C] \r\nВзгляд похож на взгляд,\r\n          [G] \r\nА день на день.\r\n\r\n[C]         [D] \r\nЯ устал и, отдыхая,\r\n[G]              [E7] \r\nВ балаган вас приглашаю\r\n[Am]              [D]         [G] \r\nГде куклы так похожи на людей\r\n\r\nАрлекины и пираты,\r\nЦиркачи и акробаты,\r\nИ злодей, чей вид внушает страх,\r\nВолк и заяц, тигры в клетке -\r\nВсе они марионетки\r\nВ ловких и натруженных руках.\r\n\r\nКукол дергают за нитки, \r\nНа лице у них улыбки, \r\nИ играет клоун на трубе, \r\nИ в процессе представленья \r\nСоздается впечатленье, \r\nЧто куклы пляшут сами по себе. \r\n\r\nАх, до чего порой обидно, \r\nЧто хозяина не видно - \r\nВверх и в темноту уходит нить. \r\nА куклы так ему послушны, \r\nИ мы верим простодушно \r\nВ то, что куклы могут говорить. \r\n\r\nНо вот хозяин гасит свечи -\r\nКончен бал, и кончен вечер,\r\nЗасияет месяц в облаках.\r\nКукол снимут с нитки длинной,\r\nИ, засыпав нафталином,\r\nВ виде тряпок сложат в сундуках.', 4, 0, 7),
(43, 5, 'Ах, Что за Луна', '[E]\r\nАх, что за Луна!\r\n[G#7]                [C#7]\r\nЛунным светом эта дивная ночь полна.\r\n  [F#7]\r\nПлещет волна,\r\n[H7]            [E]        [H7]\r\nИ тишина мне навевает нежные мечтанья.\r\n   [E]\r\nИ чудится мне,\r\n[G#7]                [C#7]\r\nСловно я лечу как будто в волшебном сне\r\n  [F#7]\r\nПрямо к Луне,\r\n[H7]                 [E]\r\nК небесной юной Луне.\r\n\r\nА рядом со мной\r\nСидит красотка красоты, буквально, неземной.\r\nТолько она\r\nСобой увлечена, не видя всех моих страданий.\r\nИ мне без конца\r\nЗаслоняют половину ее лица,\r\nИ жаль, что она\r\nСюда пришла не одна.\r\n\r\n  [C#]\r\nСтоит ли влюбиться, чтоб забыться,\r\n                 [F#7]\r\nОчутиться при Луне в волшебном сне?\r\n      [D#]\r\nНо! Стоит ли влюбляться, чтобы разочароваться,\r\n                  [G#7]\r\nИ остаться при Луне?\r\n          [E]\r\nНо не просите меня.\r\n[G#7]               [C#7]\r\nЧтобы я искал любви, не дожидаясь дня,\r\n     [F#7]\r\nВедь эта Луна\r\n[H7]                [E]\r\nСегодня будто пьяна...', 2, 25, 8);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(44, 5, 'Новый Дом', '[Hm]\r\nСколько раз я думал о том, \r\nКакой ты будешь строить дом,\r\n      [Am]                  [Em]    [Hm] \r\nВедь дом всегда таков, каков ты есть: \r\nИх строят в силу ума и души, \r\nИ, в общем, все дома хороши.\r\n   [Am]              [Em]              [Hm]\r\nЯ сам понастроил столько, что не счесть: \r\n\r\nБыл дом у пруда, и дом под замком, \r\nИ старый дом из трех окон, \r\nИ дом, где вечное лето, и дом, где зима. \r\nИ каждый дом почти без труда \r\nДавался мне, но вот беда: \r\nВремя рушит старые дома. \r\n\r\n      [Em]                [Hm]\r\n   И каждый раз, когда рушится дом,\r\n    [Em]          [Hm] \r\n   Мы остаемся под дождем.\r\n      [Em]               [Hm]\r\n   Каким будет новый? Надо спешить,\r\n        [G]        [D]           [A] \r\n   Но кто нам поможет это решить?..\r\n     [G]        [D]           [A] \r\n   Кто нам поможет это решить,\r\n          [Hm] \r\n   Это решить?\r\n\r\nИ вот, наконец, я обрел покой: \r\nСвой новый дом я беру с собой -\r\nОн для всех городов и даже дальних стран, \r\nОн сам с собой и был сделан за миг, \r\nОн очень прост и совсем невелик \r\nИ легко влезает в мой чемодан. \r\n\r\n   Он там, где я, я все время в нем \r\n   Или он во мне - мой новый дом? \r\n   И его менять - не себя ли менять? \r\n   Но кто нам поможет это понять?.. \r\n   Кто нам поможет это понять, \r\n   Это понять?', 2, 33, 9),
(45, 5, 'Шахматы', '[G#m]               [H]\r\nНа хронометрах кнопки нажаты,\r\n      [D#m]\r\nНо секунды впустую летят:\r\n        [C#] \r\nКто-то мир поделил на квадраты,\r\n       [E]             [G#m] \r\nПодо мною такой квадрат,\r\n\r\nИ ясны мне границы квадрата,\r\nИ лишь одно непонятно тут:\r\nТо ли надо идти куда-то,\r\nТо ли ждать, когда тобой пойдут.\r\n\r\n        [C#m]\r\n   И одна у меня забота -\r\n         [G#m] \r\n   Разобраться хотя бы раз:\r\n        [E]\r\n   Это мы играем во что-то\r\n         [D#]             [D#7]\r\n   Или кто-то играет в нас?\r\n\r\n       [H]\r\n      Вот сто дорог.\r\n          [G#m]\r\n      Ты пешка или ты игрок?\r\n       [H]           [C#] \r\n      Наш или ваш ход?\r\n        [D#7]                 [G#m] \r\n      Кто нам объявит счет?\r\n\r\nНе имея конкретных примеров, \r\nС каждым днем все трудней и трудней:\r\nЯ умею в толпе отличать офицеров,\r\nДа, пожалуй, еще коней.\r\n\r\nА душа пребывает в тревоге - \r\nГде противник, и кто же он? \r\nМне в метро отдавили ноги,\r\nЭто был, вероятно, слон.\r\n\r\n      Вот сто дорог.\r\n      Ты пешка или ты игрок? \r\n      Наш или ваш ход? \r\n      Кто нам объявит счет?\r\n\r\n   И одна у меня забота - \r\n   Разобраться хотя бы раз: \r\n   Это мы играем во что-то\r\n   Или кто-то играет в нас?\r\n\r\n      Вот сто дорог.\r\n      Ты пешка или ты игрок? \r\n      Наш или ваш ход? \r\n      Кто нам объявит счет?', 2, 58, 10),
(46, 5, 'Он Был Первым из Первых (Певец-Одиночка)', '[H]\r\nОн был первым из первых,\r\nСамым мудрым и верным.\r\n                           [A]\r\nОн боролся, страдал, побеждал.\r\n     [H]\r\nНо бои отгремели,\r\nВсе вокруг поумнели,\r\n                           [A]\r\nТак случилось, что он не знал.\r\n\r\nШел в атаку как прежде,\r\nИ в борьбе, и в надежде\r\nПел, пугая мещанских жен.\r\nОн взывал имя тщетно,\r\nОн бежал из запретной,\r\nВ их глазах был немой укор.\r\n\r\n        [H]     [A]         [H]   [A]\r\n   Куда ты гонишь и что несешь?\r\n        [H]     [A]         [H]   [A]\r\n   О чем трезвонишь, кому поешь?\r\n        [H]     [A]         [H]   [A]\r\n   На что ты тратишь остатки сил?\r\n         [H]     [A]         [H]   [A]\r\n   Мой старый Мальчиш себя лишил.\r\n\r\nВсе в движеньи, так будет\r\nНеизменны лишь люди\r\nТолько кто их осудит и в чем?\r\nЛишь на фоне стоящих\r\nИ заметно спешащих\r\nСлава, женщины им нипочем.\r\n\r\nДа, он гнал себя рьяно\r\nВдаль уверенно, прямо\r\nИ вообще со священных мест.\r\nТам в лице одиночки\r\nКрасной книговой строчки\r\nИ отдал верующим крест\r\n\r\n   Куда ты гонишь и что несешь?\r\n   О чем трезвонишь, кому поешь?\r\n   На что ты тратишь остатки сил?\r\n   Мой старый Мальчиш себя лишил.', 2, 31, 11),
(47, 5, 'Три Окна', '[Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nЯ забыл о бурях и о громе,\r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nМне теперь дороже тишина, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nИ живу я в старом-старом доме,\r\n   [Hm]            [E7]        [A] \r\nИз него выходят три окна. \r\n\r\nПервое окно выходит в поле, \r\nВ поле наших самых лучших лет, \r\nВ этом поле не бывает боли, \r\nИ любой вопрос находит свой ответ. \r\n   [Hm]            [E7]    [C#m]\r\n   Там и днем и ночью солнце светит, \r\n   [Hm]            [E7]           [F#m] \r\n   Летом и зимой цветет земля, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A] \r\n   Не взрослея, там играют дети, \r\n   [Hm]            [E7]        [A] \r\n   И один из них - наверно я. \r\n\r\nА окно второе вышло к лесу, \r\nТемный лес поднялся до небес, \r\nИ от солнца лес создал завесу, \r\nОт вопросов скрыл ответы лес. \r\n\r\n   И жизнь идет там по лесным законам,\r\n   И я пугался каждого куста, \r\n   Проходя по тропкам незнакомым, \r\n   В час, когда спускалась темнота. \r\n\r\nТретье окно выходит к океану, \r\nРовным ветром дышит океан, \r\nА за ним диковинные страны, \r\nИ никто не видел этих стран. \r\n\r\n   Словно вечность, океан огромен, \r\n   И сильна спокойствием волна, \r\n   И когда мне тесно в старом доме - \r\n   Я сажусь у третьего окна. \r\n\r\nПревратится в воду рек - Снег, \r\nСтанет облаком седым - Дым, \r\nСтанет домом твой родной Дом, \r\nИз руин воздвигнут вам Храм. \r\n\r\nДолжен кончиться любой - Бой, \r\nПобедит, сомненья нет, - Свет, \r\nЯ возьму букет цветов - Слов, \r\nИ раздам моим друзьям - Вам.', 5, 50, 12),
(48, 6, 'Путь (Из К/Ф "Душа")', '[B]               [Cm]\r\nСкажи, мой друг, зачем мы так беспечны?\r\n[F7]           [Dm]\r\nВ потоке дней и в суматохе дел\r\n[Cm]                 [D#]\r\nНе помним мы, что век не будет вечным\r\n[F]                             [Gm] [F]\r\nИ всем путям положен свой предел.\r\n\r\nНе верю в чудеса, и это было б странным: \r\nВсю жизнь летать, всю жизнь летать, однажды воспарив.\r\nИ всё-таки всегда прощаемся нежданно,\r\nО самом главном не договорив.\r\n\r\n    [B]                [B7]\r\n   Мы не сбавляем шаг и не считаем дней,\r\n   [Gm]                     [D7]\r\n   И в бурях передряг становимся сильней.\r\n        [Gm]                            [C]\r\n   Но слышишь: бьют часы в тот самый миг, когда наверняка\r\n       [D#]                        [F]\r\n   Никто не ждёт последнего звонка...\r\n\r\nНо нет конца пути, и так светла дорога,\r\nГде день родится вновь и будут песни петь.\r\nИ тот, кто шёл за мной, пусть поспешит немного,\r\nУспев все то, чего мне не успеть.', 3, 21, 1),
(49, 6, 'За Тех, Кто в Море (Из К/Ф "Душа")', '[Am]                    [G]\r\nТы помнишь, как всё начиналось -\r\n  [Em]\r\nВсё было впервые и вновь...\r\n      [F]        [Fm]\r\nКак строили лодки, и лодки звались\r\n  [Em]\r\n"Вера", "Надежда", "Любовь"\r\n   [F]                    [G]\r\nКак дружно рубили канаты\r\n    [Em]                [Am]\r\nИ вдаль уходила земля,\r\n   [F]                    [Dsus]\r\nИ волны нам пели, и каждый пятый,\r\n     [Fm]                [G]\r\nКак правило, был у руля.\r\n\r\n    [C]\r\nЯ пью до дна\r\n               [Am]\r\nЗа тех, кто в море\r\n     [Dm]                 [G]\r\nЗа тех, кого любит волна,\r\n     [Dm]           [G]\r\nЗа тех, кому повезёт!\r\n         [C]\r\nИ если цель одна\r\n                    [Am]\r\nИ в радости, и в горе,\r\n      [F]\r\nТо тот, кто не струсил,\r\n    [Dsus]\r\nИ вёсел не бросил,\r\n      [F]      [Fm]     [C]\r\nТот землю свою найдёт.\r\n\r\nНапрасно нас бурей пугали,\r\nВам скажет любой моряк,\r\nЧто бури бояться вам стоит едва ли,\r\nВ сущности, буря - пустяк.\r\nВ буре лишь крепче руки,\r\nИ парус поможет идти.\r\nГораздо трудней не свихнуться со скуки\r\nИ выдержать полный штиль', 3, 45, 2),
(50, 6, 'Музыка под Снегом (Из К/Ф "Начни Сначала")', '[Hm]\r\nВ летнем парке зима,\r\n                   [H7] \r\nВ летнем парке концерт.\r\n[G]                 [F#m] \r\nВсе начнется вот-вот,\r\n                    [Em]\r\nЖаль, что зрителей нет,\r\n\r\n   [C]            [Hm]\r\n   И оркестр укрыт снегом -\r\n   [C]                [Hm] \r\n   Словно вата, глухим снегом,\r\n   [C]             [Hm]        [C7] \r\n   И соната слышна едва-едва... \r\n\r\nГолос скрипки звенит, \r\nКак стекло о стекло, \r\nИ трубу не отнять \r\nОт заснеженных губ...\r\n\r\n   А в каждой ноте поет лето, \r\n   И с собою зовет лето, \r\n   И соната слышна едва-едва... \r\n\r\n      [A]                  [D]\r\n      То взлетает, как стая\r\n                  [F#7]\r\n      Оттаявших птиц,\r\n      [A]               [D] \r\n      То ложится под ноги,\r\n                      [F#7] \r\n      Послушно, как снег,\r\n                [Em]\r\n      Ни для кого...\r\n\r\nИ восторг в их глазах\r\nНам вовек не понять, \r\nИм уже не помочь, \r\nИ приходится лгать.\r\n\r\n   И я опять прохожу мимо, \r\n   Прохожу, и гляжу мимо, \r\n   И соната слышна едва-едва...', 4, 28, 3),
(51, 6, 'Пока Горит Свеча (Из К/Ф "Начни Сначала")', '[Am]        [G]            [C]         [E7/B]\r\nБывают дни, когда опустишь руки, \r\n[Dm7]           [G7]              [C]     [Bm7] [Em7]\r\nИ нет ни слов, ни музыки, ни сил.\r\n[Am]          [G]                [C]      [E7/B] \r\nВ такие дни я был с собой в разлуке \r\n[Dm7]         [G7]            [C]\r\nИ никого помочь мне не просил.\r\n[Gm]           [A7]            [Dm]  [Dm/C]\r\nИ я хотел идти куда попало, \r\n[Bb]            [E7]                [Am] [Am/B] [Am/C]\r\nЗакрыть свой дом и не найти ключа.\r\n[A/C#] [Dm7]       [G7]         [C]     [A/C#] \r\n Но верил я: не все еще пропало, \r\n     [Dm7]   \r\nПока не меркнет свет,\r\n   [G7]        [C]   [A/C#]\r\nПока горит свеча.\r\n[Dm7]         [G7]          [C]      [A/C#] \r\nНо верил я: не все еще пропало,\r\n   [Dm7]\r\nПока не меркнет свет,\r\n [G7]            [C] [Em7] [Dm7]\r\nПока горит свеча.\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [G/F] [E7/B] [Am] [E7/B] [Am]\r\nИ спеть меня никто не мог заставить:\r\nМолчание - начало всех начал. \r\nНо если песней плечи мне расправить,\r\nКак трудно будет сделать так, чтоб я молчал!\r\nИ пусть сегодня дней осталось мало \r\nИ выпал снег, и кровь не горяча, \r\nЯ в сотый раз опять начну сначала, \r\nПока не меркнет свет,\r\nПока горит свеча!\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [E7] [Am] [A/C#] [Dm7] [G7] [C] [F] [B] [E7] [Am] [Am/G] [Fmaj7] [Asus2]', 4, 11, 4),
(52, 6, 'В Добрый Час (Из К/Ф "Начни Сначала")', '[G]                            [Am7]\r\nМеняется все в наш век перемен:\r\n      [D7] [Dsus] [D7]    [G]\r\nМеняется звук, меняется слог,\r\nИ спето про все, но выйди за дверь -\r\nКак много вокруг забытых дорог\r\n\r\n            [G]                    [Am7]\r\nВ добрый час, друзья, в добрый час!\r\n         [D7]     [Dsus]    [C]\r\nНаши дни не зря, эти дни!\r\n[C]  [D]   [G]                [Am7]\r\nЯ вас жду, я помню о вас,\r\n     [D7]        [G]\r\nЗнаю я, что мы не одни\r\n\r\nПусть, как никогда, натянута нить -\r\nНе стоит бежать, не стоит робеть.\r\nТак было всегда - легко говорить,\r\nТруднее сыграть, особенно спеть\r\n\r\nВ добрый час, друзья, в добрый час!\r\nНаши дни не зря, эти дни\r\nЯ вас жду, я помню о вас,\r\nЗнаю я что мы не одни\r\n\r\nЛет десять прошло и десять пройдет,\r\nПусть сбудется все, хотя бы на треть.\r\nНам в жизни везло, пусть вам повезет,\r\nА значит, не зря мы начали петь.\r\n\r\nВ добрый час, друзья, в добрый час! \r\nНаши дни не зря, эти дни. \r\nЯ вас жду, я помню о вас, \r\nЗнаю я что мы не одни', 3, 31, 5),
(53, 6, 'Хрустальный Город', '[F#m]       [G#m]           [E] \r\nЯ был вчера в огромном городе,\r\n[A7]                    [D] \r\nГде совершенно нет людей,\r\n[Hm]                     [C#7]\r\nИ в каждом доме вместо окон\r\n[D]        [D7]          [G]\r\nЯ видел только зеркала. \r\n\r\nИ я прошел по людным улицам: \r\nБыл город полон отражений, \r\nОни брели за мной, как тени, \r\nИ молча слушали меня. \r\n\r\n   [F#m]       [G#m]      [E] \r\n   Когда я просто улыбался,\r\n   [A]                     [D] \r\n   То улыбался мне весь город, \r\n   [Hm]                [C#7]\r\n   И если я кивал кому-то,\r\n   [D]                      [C#7]\r\n   То все кивали мне в ответ. \r\n\r\n      [F#m]                 [A]\r\n      И иногда казалось мне,\r\n                 [H]                    [D]\r\n      Что город жив и что вокруг миллион людей,\r\n      [F#m]                        [A]\r\n      И вновь, и вновь не мог поверить я,\r\n              [H]            [D]             [C#7] [D]\r\n      Что я один и что вокруг лишь зеркала...\r\n\r\nОни поссориться не могут: \r\nОни похожи друг на друга. \r\nИ скоро я покинул город, \r\nИ город сразу опустел...', 6, 6, 6),
(54, 6, 'Снег', '[A]    [A/g]           [F#7]\r\nСнег. Город почти ослеп.\r\n  [Hm]    [Hm/a]           [E7]\r\nСвет. Красок на свете нет,\r\n[C#7]                 [Dmaj7]\r\nЕсть только белый цвет.\r\n [Hm7]    [C#m7]\r\nГород твой,\r\n  [F#7]     [Dmaj7]\r\nСловно корабль,\r\n  [Hm]      [Hm/a]     [E]   [E+]\r\nЛьдами захвачен в плен.\r\n\r\nЯ знаю один секрет:\r\nСнег скоро сойдет на нет -\r\nУ снега короткий век.\r\nГород твой, \r\nСолнцем согрет,\r\nПоплывет по весенней воде.\r\n\r\n [A] [A/g]          [F#7]\r\nНо я не могу понять:\r\n  [Hm] [Hm/a]                 [E7]\r\nКто дарит нам столько тепла,\r\n  [C#7]           [Dmaj7]\r\nЧтобы растаял снег?\r\n  [Hm7]        [C#m7]\r\nСто долгих дней \r\n  [F#7]         [Dmaj7]\r\nСнег был сильней\r\n     [Hm]         [Hm/a]\r\nИ исчез без следа\r\n         [E]  [E+]        [F]  [G] [A] [F] [G] [A]\r\nЛишь за пять теплых дней...', 2, 58, 7),
(55, 6, 'Скворец', '[Dm]\r\nНикто не шутит с природой \r\n   [G]                       [C]  [Am]\r\nИ дело - дрянь и лету конец. \r\n                          [Dm]\r\nИ только, споря с погодой, \r\n [E]                          [Am]\r\nПоет какой-то глупый скворец \r\n\r\nДрузья давно отсвистели \r\nИ, улетая, звали с собой. \r\nА завтра грянут метели \r\nКому ты будешь нужен зимой? \r\n                                           [Dm]\r\n          А он, чудак, не мог понять куда улетать,\r\n            [G]                    [C]  [Am]\r\n          Зачем его куда-то зовут,\r\n               [Dm]\r\n          Если здесь его дом,\r\n               [Em]                   [Am]\r\n          Его песни, его родина тут?\r\n                 [Dm]                    [Am]\r\n          И кому весной его трель нужна,\r\n                [Dm]                     [Am]\r\n          Ежели весна и без того весна?\r\n                        [Dm]                   [Am]\r\n          И кто сказал, что песне зимой конец?\r\n                        [G]\r\n          Совсем не конец!\r\n                 [Dm]\r\n          Что за глупый скворец,\r\n                 [G]\r\n          Что за глупый скворец,\r\n                 [C]\r\n          Что за глупый скворец!\r\n\r\nА люди прятались в шубы\r\nИ поднимали воротники.\r\nКакой он, все-таки, глупый -\r\nКому теперь нужны смельчаки!\r\nУкрыты снегом аллеи,\r\nИ он не изменил ничего...\r\nБыть может, стало лишь чуть-чуть теплее\r\nОт одинокой песни его...', 3, 51, 8),
(56, 6, 'Рыбка в Банке', '[Am]\r\nРыбка в банке на моем окне, \r\nЭта рыбка в банке счастлива вполне. \r\n[C]                    [D]\r\nПозабыла море - свой родимый дом, \r\n[C]                      [D]\r\nИ не знает горя в банке за стеклом.\r\nКверху книзу -\r\nНедалекий путь,\r\nДаже телевизор\r\nВиден ей чуть-чуть,\r\nШторм ни разу не был -\r\nПолный штиль всегда,\r\nПрямо с неба\r\nПадает еда.\r\nМир как в рамке -\r\nТихо и тепло,\r\nОн круглый, словно банка,\r\nИ ясный как стекло.\r\nНо нежданно\r\nК ней пришла беда:\r\nКак-то в банке\r\nВысохла вода...', 2, 59, 9),
(57, 6, 'Старый Рок-Н-Ролл', '[A]                                        [E7]\r\nПятнадцать лет назад под это танцевал весь свет.\r\n                                           [A]\r\nТы только этим жил, ходил и даже спал с гитарой. \r\n                                    [E7]\r\nНо "новая волна" затмила имена тех лет,\r\n                                           [A] \r\nА может, старина, ты просто стал немного старым? \r\n\r\n   [A7]           [D7]                 [A]\r\n   Как жаль, поверь мне, что ты забыл\r\n           [E7]  [D7]               [A] \r\n   И это время, и то, каким ты был.\r\n   [A7]      [D7]             [A] \r\n   Года уплыли, и поезд ушел,\r\n            [E7]    [D7]                 [A]  [E7] \r\n   И все забыли старый добрый рок-н-ролл.\r\n\r\nЗапал уже не тот, никто как прежде не поёт...\r\nКуда не кинешь взгляд - и стар и млад танцует "диско". \r\n\r\n   Как жаль, поверь мне, что ты забыл\r\n   И это время, и то, каким ты был.\r\n   Года уплыли, и поезд ушел,\r\n   И все забыли старый добрый рок-н-ролл.', 3, 11, 10),
(58, 7, 'Реки и Мосты', '[D]                     [Hm7]\r\nВ который раз я вижу тот же сон:\r\n[F#m]        [G]                [D]\r\nНочной пейзаж с рекою вдалеке,\r\n[Em]                      [F#m]\r\nИ я иду, почти что невесом,\r\n[C#m7-5]          [Edim]         [D] [Hm7]\r\nДорогой, что ведет меня к реке.\r\n                                       \r\n   [D]          [B+]               [Hm7] [D7]\r\n   И ждут меня на дальнем берегу,\r\n   [G]              [H+]             [Em]\r\n   А над водой туман, как будто дым,\r\n   [G]                         [F#]\r\n   И я стою и крикнуть не могу,\r\n   [C#m7-5]          [Edim]           [D]\r\n   Мне для чего-то очень нужно к ним.\r\n\r\n           [Em] [A7]     [D]\r\n      Во сне выход прост:\r\n          [Em]     [A7]  [D]\r\n      Я вновь строю мост,\r\n         [Em]   [A7]      [Hm]\r\n      И мост мой из снов,\r\n          [Em]  [A7]     [Hm]\r\n      Из нот да из слов,\r\n         [G]   [A7]    [Hm]\r\n      По этому мосту\r\n         [F#7]      [Em]   [D]\r\n      Перехожу я реку ту.\r\n           [Em] [A7]       [D]\r\n      Простившись со сном,\r\n          [Em]      [A]\r\n      Прошу об одном:\r\n\r\n   Хватило б сил на тысячу мостов,\r\n   Чтоб каждый раз, к реке спускаясь кручи\r\n   Жить верой в правду некоторых слов,\r\n   А также в силу нескольких созвучий.', 5, 56, 1),
(59, 7, 'Флюгер', '[Am] \r\nНа крыше стоишь, \r\nКак над землей паришь. \r\n   [F]            [G] \r\nА выше только крыши \r\n         [Am] \r\nИ лишь флюгер выше крыш. \r\nОн сделан везде, \r\nК своей большой беде, \r\n      [F]         [G]            [Am] \r\nИз стрелки и вертушки на гвозде.\r\n\r\n             [D] \r\n   Он так хотел бы остаться твердым, \r\n           [Am] \r\n   Во избежанье дурной молвы, \r\n         [D]           [C]         [D] \r\n   Но вправо-влево крутится, увы. \r\n        [Am]\r\n   Ну где тут честь сберечь? \r\n   Об этом и речь.\r\n      [F]       [G]        [Am]\r\n   Такая неустойчивая вещь. \r\n\r\nВсю ночь до утра \r\nЛомали ветра, \r\nА днем с утра крутить в другую сторону пора. \r\nТо буря, то шквал - \r\nОн так уставал, \r\nЧто путать стороны света начинал. \r\n\r\n   А он все ждал, что настанет время,\r\n   Назначенный час пробьет, \r\n   И в мире станет все наоборот! \r\n   И вскроется суть.\r\n   Он сам когда-нибудь \r\n   Укажет ветру путь, которым дуть.\r\n\r\nНо время пришло, \r\nИ так замело, \r\nЧто флюгер раскачало и со шпиля сорвало. \r\nВ мечтах о добре \r\nПо зимней поре \r\nОн сгинул в январе в чужом дворе. \r\n\r\n   Но только верьте или не верьте,\r\n   А мне известно наверняка, \r\n   Что в городе с тех пор - ни ветерка!.. \r\n   Нехитрый секрет: \r\n   Ведь дуть смысла нет,\r\n   Когда никто не крутится в ответ.', 4, 8, 2),
(60, 7, 'Гололед', '[Am]                      [Em]\r\nДень напролет, год напролет\r\n   [Dm]                [Am]\r\nВ городе горе - гололёд.\r\n                               [Em]\r\nНоль за окном, ни вверх и не вниз;\r\n [Dm]                   [Am]\r\nМёртвая точка: компромисс.\r\n\r\nЖдут поезда, отложен полёт,\r\nМоре закрыто - гололёд,\r\nВетер унёс нетронутый лист,\r\nШаг на полшага, компромисс.\r\n\r\n   [F]\r\n   Тихо в мире,\r\n               [Am]\r\n   Дремлет земля...\r\n   [F]\r\n   Где же силы\r\n                  [Em]\r\n   Сдвинуть весь мир с нуля?', 3, 41, 3),
(61, 7, 'Она Идет по Жизни, Смеясь', '[Am]             [G]      [Am] [G] \r\nОна идет по жизни, смеясь. \r\n[F]           [C]     [F]             [C]\r\nОна легка, как ветер, нигде на свете \r\n[Gm]              [A7]\r\nОна лицом не ударит в грязь. \r\n[Dm]         [Dm7]     [E]                    [Am]\r\nИспытанный способ решать вопросы - как будто их нет: \r\n                              [Fmaj7] [Em] [F] [Em] [F] [C]\r\nВо всем видит солнечный свет! \r\n\r\n[Am] \r\nОна идет по жизни, смеясь.\r\nВстречаясь и прощаясь,\r\nНе огорчаясь,\r\nЧто прощанья легки, а встречи на раз,\r\nИ новые лица\r\nТоропятся слиться\r\nВ расплывчатый круг\r\nКак будто друзей и подруг.\r\n\r\nОна идет по жизни смеясь.\r\nВ гостях она - как дома,\r\nГде все знакомо,\r\nУдача с ней - жизнь удалась.\r\nИ, без исключенья,\r\nВсе с восхищеньем\r\nСмотрят ей в след и не замечают,\r\nКак плачет ночами\r\n[Am]        [G]       [F]       [C]\r\nТа, что идет по жизни смеясь...', 2, 22, 4),
(62, 7, 'Пока Не Спущен Курок', '[Hm]                     [Hm7]\r\nТемна стена закрытых глаз:\r\n[Hm]                          [Hm7]\r\nНе здесь, не с нами, не сейчас.\r\n[Em]            [B7]\r\nЕсть ещё миг, есть ещё срок,\r\n[Gm]        [F#m]     [Hm]\r\nПока не спущен курок.\r\n\r\nЗвучит отсчёт, застыл прицел.\r\nКто узнает потом, что ты не хотел?\r\nНеба клочок, солнца глоток -\r\nПока не спущен курок.\r\n\r\n   [Em]                          [Hm]\r\n   Где ты был вчера, о чём ты думал?\r\n   [Em]\r\n   Почему ты вдруг решил, что\r\n                     [F#7]\r\n   Это будет не с тобой?\r\n\r\nЕсть ещё слова, кроме слова «приказ»,\r\nЯ твержу себе в который раз:\r\nЕсть ещё миг, малый, но срок,\r\nПока не спущен курок.', 4, 5, 5),
(63, 7, 'Календарь', '[A]                                     [E7]\r\nСнег растаял, все как будто в первый раз:\r\n[A]                                 [E7]\r\nПтичья стая с криком в небо поднялась,\r\n[F#]                              [C#]\r\nТучи скрылись, а деревья там и тут\r\n[E]                             [F#]\r\nРаспустились и примерно так поют:\r\n\r\n«Мы пробились, победили холода,\r\nУтвердились, распустились навсегда.\r\nБудет праздник от зари и до зари,\r\nВ этот раз мы все сожжем календари!»\r\n\r\nСколько лета, сколько света, сколько тем!\r\nВсе согрето, все вокруг доступно всем.\r\nСто мелодий, сто надежд и сто дорог.\r\nНо проходит девяностодневный срок...\r\n\r\nПтиц не стало, тех, что правили весной,\r\nОбметало желтизной, как сединой,\r\nФлаги сбросил безнадежный листопад,\r\nВходит осень - и без боя город взят.\r\n\r\nВновь ненастье, все как прежде, все как встарь:\r\nБеспристрастен черно-белый календарь.\r\nРыбы, звери - все уснут, и я усну,\r\nВсе же веря в предстоящую весну.', 3, 52, 6),
(64, 7, 'Песня, Которой Нет', '[G]\r\nЧасто бывает: ночь наступает,\r\n [F#m]            [H7]\r\nТак далеко рассвет,\r\n  [Em7]         [A7]             [D]  [D7] \r\nСпетые песни спят по чужим домам,\r\n  [G]\r\nВновь в тишине я слышу голос\r\n [F#m]           [H7]\r\nПесни которой нет,\r\n[Em7]       [A7]             [D]  [D7]\r\nКакой ей быть - не знаю сам.\r\n\r\nИ мне в сотый раз не понять мелодии\r\nИ не расслышать слов.\r\nВот она стихла, вот навсегда ушла,\r\nНо нет, не уходит, снова бьётся\r\nБабочкой о стекло,\r\nВот бы понять, с какой стороны стекла!\r\n\r\n     [G]               [F#m]\r\n   Она уже вот-вот появится,\r\n      [Em7]             [A7]    [D]\r\n   И, может быть, к началу дня\r\n     [G]                  [F#m]\r\n   Она в новый путь отправится\r\n       [E]                     [A7]\r\n   И станет для всех, - но уже не моя.\r\n\r\nКак в океане, сквозь дождь и туманы\r\nВсе же виден далёкий свет -\r\nТот, что зовёт, и не верить ему нельзя.\r\nПока в тишине ночной слышен голос\r\nПесни, которой нет,\r\nЯ знаю: всё впереди, всё не зря.\r\n\r\n   Она уже вот-вот появится,\r\n   И, может быть, к началу дня\r\n   Она в новый путь отправится\r\n   И станет для всех, - но уже не моя.\r\n\r\nКак в океане, сквозь дождь и туманы\r\nВсе же виден далёкий свет -\r\nТот, что зовёт, и не верить ему нельзя.\r\nПока в тишине ночной слышен голос\r\nПесни, которой нет,\r\nЯ верю: всё впереди, всё не зря.', 3, 46, 7),
(65, 7, 'Ветер над Городом', '[C]                       [Am] \r\nБудет апрель, как избавление \r\n[Dm]           [G]                [Em] \r\nМартовский снег - больше не снег \r\n           [Am]            [D]     [F]     [C] \r\nВетер над городом протрубит отход зимы. \r\n\r\n  [C]                      [Am]\r\nБросишь дела, выйдешь на улицу\r\n[Dm]         [G]            [Em] \r\nВоздух промыт, как хрусталь\r\n           [Am]           [D]      [F]    [C] \r\nВетер над городом разорвал блокаду туч \r\n[E7]           [Ddim] \r\nИ умчал их прочь \r\n\r\n    [F]         [Em] \r\n   Ветер над городом \r\n   [Dm]             [Gm]\r\n   Всё случится вновь, \r\n   [Dm]          [G]\r\n   Всё ещё не поздно \r\n    [F]         [Em]     [C] \r\n   Ветер над городом...\r\n\r\nВетер унес отдельные здания \r\nЭти места скрыла трава \r\nЭто не просто так \r\nЭто знак оставить дом \r\nИ войти в весну\r\n\r\n   Ветер над городом \r\n   Всё случится вновь, \r\n   Всё ещё не поздно \r\n   Ветер над городом...', 3, 56, 8),
(66, 7, 'Разговор в Поезде', '[Dm] \r\nВагонные споры - последнее дело,\r\n [F] \r\nКогда больше нечего пить.\r\n     [Gm] \r\nНо поезд идет, бутыль опустела,\r\n    [Am]         [Dm] \r\nИ тянет поговорить. \r\n\r\nИ двое сошлись не на страх, а на совесть -\r\nКолеса прогнали сон.\r\nОдин говорил - наша жизнь - это поезд.\r\nДругой говорил - перрон.\r\n\r\n  [B]\r\nОдин утверждал - на пути нашем чисто, \r\n  [F]\r\nДругой возражал - не до жиру.\r\n [Gm] \r\nОдин говорил, мол, мы - машинисты,\r\n [C] \r\nДругой говорил - пассажиры. \r\n\r\nОдин говорил: нам свобода - награда, \r\nМы поезд куда надо ведем. \r\nВторой говорил: задаваться не надо, \r\nКак сядем в него, так и сойдем. \r\n\r\nА первый кричал: нам открыта дорога\r\nНа много, на много лет.\r\nВторой отвечал, что не так уж и много -\r\nВсе дело в цене на билет.\r\n\r\nА первый кричал: куда хотим, туда едем,\r\nИ можем, если надо, свернуть!\r\nВторой отвечал, что поезд проедет\r\nЛишь там, где проложен путь.\r\n\r\nИ оба сошли где-то под Таганрогом,\r\nСреди бескрайних полей,\r\nИ каждый пошел своей дорогой,\r\nА поезд пошел своей.', 2, 32, 9),
(67, 7, 'Время', '[Hm7]\r\nНам уготовано, мальчик мой,     \r\n [F#m]                            \r\nЛегкое это бремя -              \r\n  [Bm7]                           \r\nДвигаться вдоль по одной прямой,\r\n[Gm]                              \r\nИмя которой Время.              \r\n [F#-9]                           \r\nПамяти с ней не совладать -\r\n[F#7] \r\nЗначит, нам повезло,\r\n[Em] \r\nВремя учит нас забывать\r\n  [F#m]              [Hm7] [F#m] [Bm7] [Gm F#]\r\nВсе - и добро, и зло. \r\n\r\n       [Hm7]\r\n   Встречи, прощанья - какое там,\r\n    [F#m]\r\n   Даже не вспомнить лица,\r\n   [Bm7]\r\n   И только вещи, верные нам,\r\n    [Gm] \r\n   Помнят все до конца...\r\n   [F#-9]                [F#7]\r\n   Помнят все до конца...\r\n\r\n       [D]\r\n      Помнит лодка причал, а весло\r\n       [C] \r\n      Помнит воду реки,\r\n       [Em] \r\n      Помнит бумага перо, а перо\r\n       [A] \r\n      Помнит тепло руки.\r\n        [F#m] \r\n      Стены и двери помнят людей,\r\n       [D] \r\n      Каждого в свой срок.\r\n       [G] \r\n      Помнит дорога ушедших по ней,\r\n       [F#] \r\n      Помнит выстрел курок. \r\n\r\nТолько проносится день за днём -\r\nЗначит, не пробил час, \r\nВещи пока молчат о своём \r\nИ не тревожат нас. \r\nМогут проснуться они летним днём \r\nИли среди зимы, \r\nЧтобы напомнить нам обо всём, \r\nЧто забыли мы...', 4, 15, 10),
(68, 7, 'Ночь', '[Dm]                             [A7] [B]\r\nНочь - чёрная река длиной на века,\r\n            [A7]     [B]      [Dm]\r\nСмотри, как эта река широка:\r\n                            [A7] [B]\r\nЕсли берега принять за рассвет,\r\n          [A7]       [B]      [Gm]\r\nТо будто дальнего берега нет,\r\n        [Am]         [Gm]\r\nИ переправа непроста,\r\n           [F]           [B]\r\nИ нет ни брода, ни моста, \r\nЛишь только лодка в два весла... \r\n\r\nЯ утро берегу на том берегу,\r\nНо до него я доплыть не могу: \r\nЛодка в два весла меня бы спасла,\r\nВот только весла вода унесла,\r\nИ нас снесло к большой воде,\r\nИ нам не видно в темноте,\r\nЧто берега уже не те...', 4, 52, 11),
(69, 7, 'Весь Мир Сошел с Ума', '[A7]\r\nВзрослые люди построили город, \r\nПостроили город из белого камня, \r\nИз белого камня у медленной речки, \r\nУ медленной речки, на солнечном месте. \r\n            [C]      [A7]\r\nВесь мир сошёл с ума. \r\n\r\nВзрослые люди украсили город, \r\nУкрасили город детьми и цветами, \r\nДетьми и цветами, цветами и песней, \r\nИ верили свято, что это навечно. \r\nВесь мир сошел с ума. \r\n\r\n      [A]              [B]\r\n   Взрослые люди разрушили город,\r\n       [G]               [B]\r\n   Разрушили город из белого камня,\r\n      [A]                  [B] \r\n   И место, и речку сровняли с землею,\r\n      [G]               [B] \r\n   И землю покрыли железом и кровью. \r\n         [A]    [C]      [A]\r\n   Весь мир сошёл с ума. \r\n\r\nВзрослые люди построили город,\r\nПостроили город на выжженном месте,\r\nУкрасили город детьми и цветами,\r\nИ верили свято, что это навечно. \r\nВесь мир сошёл с ума.', 4, 49, 12),
(70, 7, 'Старые Друзья', '[Em] \r\nУвы, постоянство теперь не в цене, \r\n  [Am]         [Hm]    [Em]   [Em7] \r\nУвы, не в цене обещанья.\r\n     [Em]\r\nНас ветром разносит по этой земле -\r\n   [Am]     [Hm]     [C] \r\nКакие уж тут прощанья.\r\n   [Am]     [Hm]     [Em]\r\nКакие уж тут прощанья.\r\n\r\n          [Am]      [Am/g]     [D]\r\n   Не прощаясь, уходят из жизни сей, \r\n          [G]        [G/h]     [Em] \r\n   Не прощаясь, выходят в люди... \r\n             [G]                     [C] \r\n   Только в детстве мы встретили старых друзей \r\n   [Am]        [H7]       [C] \r\n   И новых старых не будет \r\n   [Am]        [H7]       [Em]   [Em7] \r\n   И новых старых не будет \r\n\r\nПусть нас оправдают хоть тысячу раз, \r\nА мы уж себя - непременно. \r\nНо старых друзей все меньше у нас \r\nИ новые им не замена. \r\nИ новые им не замена.\r\n\r\n   И как получилось, и кто виноват \r\n   Нечистая чья-то игра - \r\n   Прощались мы тысячу лет назад, \r\n   И верили, что до утра. \r\n\r\nПусть день пройдет без забот о былом \r\nИ вечером этого дня \r\nМы сядем все за одним столом \r\nУ одного огня.\r\nУ одного огня.\r\n\r\n   А наш огонь никогда не гас\r\n   И пусть невелик - ничего! \r\n   Не так уж много на свете нас, \r\n   Чтоб нам не хватило его.\r\n   Чтоб нам не хватило его.\r\n\r\n   Я с ними проблемы свои решу,\r\n   Те, что не решил без них, \r\n   А после прощения попрошу \r\n   У старых друзей своих\r\n   У старых друзей своих', 4, 58, 13),
(71, 7, 'Если Бы Мы Были Взрослей', '[D7]\r\n[G]\r\nЯ десять лет назад не обходил преград, \r\nБывал им только рад, \r\n             [D]\r\nДа было веселей. \r\n      [C]               [G]\r\nЯ бы мог повернуть назад, \r\n        [D7]                [G]\r\nЕсли б мы были чуть взрослей.\r\n [G]\r\nВот опять неверный ход - я очки терял, \r\nИ я не понимал, \r\n                [D]\r\nЧто можно проиграть. \r\n [C]                [G]\r\nНо одно меня спасло, \r\n          [D7]              [G]\r\nЧто в те годы я любил считать. \r\n [D]\r\nЕсли бы мы были,\r\n                      [G]\r\nЕсли бы мы были взрослей.\r\nЕсли бы мы были,\r\n[D]                     [Em]\r\nЕсли бы мы были взрослей,\r\n[C]             [G]\r\nБыли бы взрослей.\r\n [G]\r\nКак сделать новый шаг - может напрямик, \r\nА может быть в обход, \r\n                   [D]\r\nГде мягче, где теплей. \r\n        [C]                 [G]\r\nКаждый шаг я б прошел не так \r\n        [D7]                [G]\r\nЕсли б мы были чуть взрослей.\r\n [D]\r\nЕсли бы мы были,\r\n                      [G]\r\nЕсли бы мы были взрослей.\r\nЕсли бы мы были,\r\n [D]                    [Em]\r\nЕсли бы мы были взрослей,\r\n[C]             [G]\r\nБыли бы взрослей.\r\n\r\nСоло\r\n\r\n[D]\r\nЕсли бы мы были,\r\n                      [G]\r\nЕсли бы мы были взрослей.\r\nЕсли бы мы были,\r\n [D]                    [Em]\r\nЕсли бы мы были взрослей,\r\n[C]             [G]\r\nБыли бы взрослей...', 3, 46, 14),
(72, 7, 'Кошка, Которая Гуляет Сама по Себе', '[D]\r\nЕсли сто бегунов как один бегут,\r\n     [G]                   [D]\r\nЭто можно назвать так и сяк.\r\nУ лошадей это будет табун,\r\n   [E7]              [A]\r\nУ рыб это будет косяк.\r\n         [G]\r\nЛишь в стаде баран доверяет судьбе,\r\n     [D]                  [G]\r\nЗа что он и прозван скотом,\r\n             [Em]             [Hm]\r\nЛишь только кошка гуляет сама по себе,\r\n   [Em]                [D]\r\nИ лишь по весне с котом.\r\n\r\nДаже волки, далекие братья собак,\r\nВыбирают себе вожака.\r\nДа и стая собак не может никак\r\nБез него обойтись пока.\r\nУ львов и у тигров есть главный в семье,\r\nНа нём и охота и дом,\r\nЛишь только кошка гуляет сама по себе,\r\nИ лишь по весне с котом.\r\n\r\nПерелётные птицы осенней порой\r\nНе летают на юг по одной.\r\nИ олени, гуляя оленьей тропой,\r\nТоже ходят по ней толпой.\r\nДа и люди, что век коротают в борьбе,\r\nПонимают, что легче гуртом,\r\nЛишь только кошка гуляет сама по себе,\r\nИ лишь по весне с котом.', 2, 14, 15),
(73, 7, 'Увидеть Реку', '[D]\r\nУвидеть реку,\r\n             [G] \r\nПодойти к реке,\r\n[Em] \r\nК воде спуститься,\r\n              [D] \r\nНад водой нагнуться\r\n[G]            [E7]                  [A] \r\nИ зачерпнуть, и в город свой вернуться\r\n    [G]            [A]         [Hm] \r\nЧто от реки построен вдалеке,\r\n[G]                [B]         [D]\r\nЧто от реки построен вдалеке. \r\n\r\nИ встать с кувшином в тень \r\nУ старых стен, \r\nИ всех созвать -\r\nПускай подходит каждый, \r\nИ напоить всех тех, кто мучим жаждой, \r\nИ ничего не попросить взамен, \r\nИ ничего не попросить взамен. \r\n\r\n[E]\r\nКогда взойдёт\r\n              [A] \r\nВечерняя звезда,\r\n[F#m]\r\nОставить всё\r\n[H7]               [E]\r\nИ двинуться в дорогу: \r\n[A]\r\nДругие реки\r\n[F#7]           [H]\r\nГде-то катят воду,\r\n    [A]             [H7]      [C#m] \r\nИ где-то ждут другие города,\r\n[A]            [C]            [E] \r\nИ где-то ждут другие города. \r\n\r\nИ так пройти \r\nСемь тысяч городов, \r\nЧтоб, каждый раз \r\nК реке спускаясь с кручи, \r\nЖить верой \r\nВ правду некоторых слов, \r\nА так же \r\nВ силу нескольких созвучий, \r\nА также в волшебство созвучья слов...', 4, 16, 16),
(74, 8, 'Герои Вчерашних Дней', '[A]\r\nЧто за скопленье народа, словно выставка мод, -\r\n         [F#m]\r\nОдин другого и важней и главней,\r\n           [D]                 [F]        [E7]       [A]\r\nИ вьется длинная очередь, которой не видно конца?\r\nЗдесь по субботам производят бесплатную запись\r\n     [F#m]\r\nВ герои вчерашних дней,\r\n[D]                  [F]            [E7]        [A] \r\nСрывая звезды с погон, стирая краски с лица.\r\n\r\nЕще вчера Вы занимали отдельное купе,\r\nЧерез окно обозревали простор -\r\nКазалось, все вокруг на свете дышало вечной весной...\r\nА только вдруг на рассвете стук в дверь:\r\nЭто к Вам идет общественный контролер -\r\nКак Вы могли не заметить, что кончился Ваш проездной!\r\n\r\n[A+9]\r\n\r\n      [D]\r\n   Герои вчерашних дней,\r\n          [A]\r\n   Это герои вчерашних дней!\r\n            [D]\r\n   Давайте будем снисходительны\r\n       [F]       [E7]      [A]\r\n   К героям вчерашних дней.\r\n      [D]\r\n   Герои вчерашних дней,\r\n          [A]\r\n   Это герои вчерашних дней.\r\n           [D]\r\n   Я не хотел бы быть записанным\r\n        [F]      [E7]      [A]\r\n   В герои вчерашних дней!\r\n\r\nИ Вы один на перроне, тут вы, как на ладони,\r\nВы - мишень для пятаков и камней,\r\nКак дым ушла былая слава - ей это, право, все равно.\r\nА мимо пролетают красивые составы\r\nС героями сегодняшних дней,\r\nИм доставляет наслажденье вас наблюдать в окно.\r\n\r\n   Герои вчерашних дней,\r\n   Это герои вчерашних дней!\r\n   Давайте будем снисходительны\r\n   К героям вчерашних дней.\r\n   Герои вчерашних дней,\r\n   Это герои вчерашних дней.\r\n   Я не хотел бы быть записанным\r\n   В герои вчерашних дней!', 4, 0, 1),
(75, 8, 'Опустошение', '[E7]\r\nОдинаковый взгляд одинаковых глаз,\r\nОдинаковый набор одинаковых фраз,\r\nОдинаковый стук одинаковых ног,\r\nОдинаковый звук одинаковых нот -\r\nОпустошенье.\r\nОпустошенье.\r\n\r\nОдинаковый бег одинаковых дней,\r\nОдинаковый век: непохожего - бей! \r\nОдинаковый взмах одинаковых рук,\r\nОдинаковый враг, одинаковый друг -\r\nОпустошенье.\r\nОпустошенье.\r\n\r\n[G#]\r\n\r\nОдинаковый цикл одинаковых снов,\r\nОдинаковый смысл одинаковых слов,\r\nОдинаковый рок, одинаковый панк,\r\nОдинаковый сапог, одинаковый танк -\r\nОпустошенье. \r\nОпустошенье.', 3, 50, 2),
(76, 8, 'Опрокинутый Мир Летних Снов', '[F#m7]          [H7]\r\nНе тревожьте ее,\r\n         [F#m7]               [H7]\r\nОна не скажет ни "да", ни "нет",\r\n[F#m7]          [H7]         [F#m7] [H7]\r\nДля нее этот мир, как кино.\r\n[F#m7]              [H7]\r\nВсе, что есть у нее, -\r\n      [F#m7]             [H7]\r\nЭто двадцать неполных лет\r\n[F#m7]           [H7]          [F#m7] [H7]\r\nИ опрокинутый мир летних снов.\r\n\r\nДень отходит, как дым,\r\nЕй опять говорят слова...\r\nЕй уже не понять смысла слов.\r\nПереулком пустым\r\nОна уходит совсем одна\r\nВ опрокинутый мир летних снов.\r\n\r\n[F#m7] [H7]           [F#m7]\r\n    Она уже в плену\r\n               [H7]\r\n    У летних снов.\r\n[F#m7] [H7]           [F#m7]\r\n    Она уже в плену\r\n                [H7]\r\n    У маковых снов.\r\n\r\nСловно звуки без слов,\r\nСловно тени чужой игры,\r\nНедопрожитых дней суета.\r\nЭтот мир летних снов,\r\nКак на самом конце иглы,\r\nИ вокруг все черней пустота...\r\n\r\n   Она уже в плену\r\n   У летних снов.\r\n   Она уже в плену\r\n   У маковых снов.\r\n\r\nНе тревожьте ее,\r\nОна не скажет ни "да" ни "нет"...', 4, 5, 3),
(77, 8, 'Ветер Надежды', '[Em]            [H7]\r\nНас построили новым порядком чуть свет.\r\n      [Em]               [H7]\r\nМы похожи на стаю бескрылых птиц.\r\n       [Em]          [H7]\r\nБыл объявлен ветер, но ветра нет -\r\n        [Em]\r\nВетер трудно поднять\r\n [H7]                    [Em] [H7]\r\nШелестом газетных страниц.\r\n\r\n[Em]            [H7]\r\nШелестит до звона в ушах:\r\n       [Em]                   [H7]\r\nКак шагать еще быстрее и какими нам быть?\r\n         [Em]                 [H7]\r\nНо мы никак не решимся на главный шаг,\r\n    [Em]               [H7]\r\nЯ боюсь, что мы разучились ходить.\r\n\r\nИ пускай вопрос не похож на ответ,\r\nИ вроде бы нет шор на глазах,\r\nИ вроде бы дали зеленый свет,\r\nНо кто-то держит ногу на тормозах.\r\n\r\nИ мы травим анекдоты под морковный сок,\r\nЗадыхаясь соломой своих сигарет,\r\nИ все никак не можем поделить кусок,\r\nКоторого, в общем, давно уже нет.\r\n\r\n        [F#m]                   [C#7]\r\nИ мы смеемся сквозь слезы и плачем без слез,\r\n      [F#m]                   [C#7]\r\nИ следим за другими, не следя за собой.\r\n    [F#m]              [C#7]\r\nИз тысячи вопросов главный вопрос:\r\n[F#m]            [C#7]\r\nКто крайний? - Я за тобой!\r\n\r\nИ со многих ртов уже снят засов,\r\nТеперь многословию нет предела,\r\nСлишком много красивых и славных слов.\r\nНе пора ли наконец заняться делом?!\r\n\r\nИ пускай словами не разрушить стен,\r\nИ никто не верит в хозяйскую милость,\r\nНо мы смотрим на небо и ждем пемен.\r\nЭто значит, что-то уже изменилось.\r\n\r\n      [F#m]               [C#7]\r\nИ я слышу вопрос и не знаю ответа,\r\n       [F#m]               [C#7]\r\nНо когда наконец я закрываю глаза,\r\n     [F#m]            [C#7]\r\nЯ отчетливо вижу полоску света\r\n          [F#m]\r\nТам, где ветер надежды\r\n   [C#7]            [H] \r\nНаполнит мои паруса', 4, 2, 4),
(78, 8, 'Там, Где Будет Новый День', '[G]\r\nТам, где кончается ночь, \r\nОбрывается дождь,\r\n             [C] \r\nРазгорается новый день -\r\n [D]\r\nТам распустились цветы,\r\n                 [G] \r\nС высоты слышно пенье птиц.\r\n\r\nТам я остаться непрочь, \r\nНо зовет меня ночь,\r\nГонит прочь наступивший день -\r\nМой дом между ночью и днем,\r\nЯ в охране ночных границ. \r\n\r\n   [C] [D]                  [G]\r\n   М-м, там, где будет новый день,\r\n   [C] [D]                  [G]           [C] \r\n   М-м, там, где скоро будет новый день. \r\n\r\nЯ обхожу стороной \r\nГород сумрачный твой -\r\nВ нем уже не случится дня, \r\nЗря ты напрасно терял \r\nВ ожидании столько лет. \r\nВон вдалеке из-за туч \r\nВиден солнечный луч - \r\nЭто снова зовут меня: \r\nЛишь оставаясь в пути, \r\nЕсть надежда войти в рассвет. \r\n\r\n   М-м, там, где будет новый день, \r\n   М-м, там, где скоро будет новый день. \r\n\r\n   M-m, It''s gonna by another day,\r\n   M-m, It''s gonna by another sunny day.', 4, 13, 5),
(79, 8, 'Маленький Город', '[G]                [G+7]\r\nВ маленьком городе без перемен -\r\n       [Dm6]\r\nМного зим и лет\r\n  [C]               [G]\r\nВ окнах домов цветы,\r\n                 [G+7]\r\nНочью в пекарне топится печь\r\n     [Dm6]\r\nИ печется хлеб,\r\n  [Am]\r\nСкоро сведут мосты,\r\n  [G]                 [G+7]\r\nДворник метет мостовую метлой -\r\n[G7]        [E7]\r\nТакой одинокий звук,\r\n[Am]     [G+7]   [F]\r\nИ никого вокруг.\r\n [G]               [Em]\r\nБури и беды обошли стороной\r\n [B]         [A]     [G]\r\nМаленький город мой.\r\n\r\nВ маленьком городе над рекой\r\nТишина и покой,\r\nПлавно вода течет.\r\nЯ бы вернулся туда зимой,\r\nКак к себе домой, -\r\nПрямо под Новый год -\r\nСлушать, как падает снег за окном\r\nСном тех далеких дней,\r\nВидеть глаза друзей...\r\nЖаль, что уже никогда-никогда\r\nМне не попасть туда...', 3, 10, 6),
(80, 8, 'Брошенный в Небо', '[A]                        [G]\r\nГоды тренировок, талант азарт -\r\n[A]                        [G]\r\nЭто был вполне удачный старт.\r\n  [A]                           [G]\r\nПланка под тобой, время - замри,\r\n [A]                            [G]\r\nТы отлетел дальше всех от земли,\r\n[F]  [G]                [A]   [G] \r\nТы, ты брошенный в небо,\r\n[F]  [G]                [A]   [G]\r\nТы, ты брошенный в небо.\r\n\r\nЛучший результат, обеспеченный приз, \r\nИ ты уже забыл, где верх, а где низ: \r\nСердце на вершине, душа поет, \r\nНо этот твой прыжок - еще не полет -\r\nТы только брошенный в небо,\r\nТы только брошенный в небо.\r\n\r\nИ вот, ты замер: ты всего достиг, \r\nВысшая точка, короткий миг. \r\nНе забудь обернуться и на землю взглянуть \r\nПрежде, чем пуститься в обратный путь, - \r\nТы был брошенный в небо,\r\nТы, ты был брошенный в небо.\r\n\r\n[H]                             [A]\r\nИ вот, ты замер: ты всего достиг,\r\n [H]                      [A] \r\nВысшая точка, короткий миг.\r\n     [H]                               [A] \r\nНе забудь оглянуться и на землю взглянуть\r\n  [H]                               [A]\r\nПрежде, чем пуститься в обратный путь, -\r\n[G] [A]                  [H] \r\nТы лишь брошенный в небо...\r\n [G] [A]                    [H]\r\nТы, ты был брошенный в небо...\r\n [G] [A]                       [H]\r\nТы, ты только брошенный в небо...', 3, 44, 7),
(81, 8, 'Пьесы и Роли', '[Gm]     [Gm7] [Gm6]\r\nПьесы и роли,\r\n  [Gm]        [Gm7] [Gm6]\r\nСцены, гастроли -\r\n [Gm]         [Gm7]  [Gm6]   [Gm]   [Gm7] [Gm6]\r\nВот и весь быт, как он есть.\r\n   [Gm]          [Gm7] [Gm6]\r\nВ радости, в плаче -\r\n [Gm]    [Gm7] [Gm6]\r\nНаши удачи,\r\n [Gm]      [Gm7] [Gm6]  [Gm]  [Gm7] [Gm6]\r\nНаше бесчестье и честь\r\n\r\n    [G#]                 [D]       [D7]      [Gm] [Gm7] [Gm6]\r\n   Боль и усталость - вехи на нашем пути\r\n     [G#]                 [D]        [D7]       [Gm] [Gm7] [Gm6]\r\n   Все, что осталось - честно играть и идти\r\n\r\nПоиски, споры, \r\nПроиски, ссоры: \r\nСладок наш хлеб - чисто мед!\r\nРобости мерить \r\nЧушь, в самом деле, \r\nКто-то бесспорно дойдет.\r\n\r\n      Наши сомненья с нами, а значит не в счет.\r\n      А откровенья в ад, так что же еще?\r\n\r\nНу вот и в кратце \r\nВся информация. \r\nВ принципе, все, как у всех.\r\nТа же работа \r\nВ капельках пота, \r\nТак же играет, как все.\r\n\r\n   Вечер, дорога - большего нам не успеть.\r\n   Веры б немного, чтобы дойти и допеть.', 3, 4, 8),
(82, 8, 'Пони', '[Am] [Am/c] [F]     [E7]\r\nТабун поднял пыль,\r\n[Am] [Am/c]  [F]     [E7]\r\nКопыта мнут ковыль,\r\n[E7]           [F]    [E]    [Am]   [Am/c] [F] [E7]\r\nВозьмись догнать! - Едва ли.\r\n[Am] [Am/c] [F]    [E7]\r\nА  я    ем овес,\r\n[Am] [Am/c]  [F]      [E7]\r\nМоих не видно слез:\r\n[E7]     [F]  [E]     [Am]  [Am/c] [F] [E7]\r\nМеня опять не взяли.\r\n\r\nТабун держит строй,\r\nТам каждый конь - герой:\r\nКино, стрельба, погони...\r\nА вот мой удел -\r\nВсю жизнь быть не удел,\r\nВедь я не конь, а пони.\r\n\r\n         [F]\r\n   Мне снова снится\r\n                 [C] \r\n   Грозный шум атак,\r\n   [F]\r\n   Но ночь растает, \r\n   День настанет -\r\n   [E7] \r\n   И все опять не так.\r\n\r\nДрузья там, вдали,\r\nРешают судьбы Земли,\r\nСпасают жизнь друг другу.\r\nА я б тоже смог,\r\nНо вновь звенит звонок,\r\nИ я бегу по кругу.\r\n\r\n   Мне снова снится \r\n   Грозный шум атак,\r\n   Но ночь растает, \r\n   День настанет - \r\n   И все опять не так...', 3, 15, 9),
(83, 8, 'Песня Вожака Стаи', '[Am7]\r\nБыть первым из первых -\r\nИскусство на нервах:\r\nНе знать поражений в борьбе, \r\nГореть, не сгорая, \r\nВести свою стаю -\r\nТу стаю, что верит тебе.\r\nВождем никогда ты \r\nНе станешь по блату, \r\nТут шансы у всех равны:\r\nНа место его \r\nНе возьмешь никогда ты \r\nКого-нибудь со стороны.\r\n\r\n      [E7]\r\n   Вожак выбирает сам себя и сам себя утверждает,\r\n      [G7] \r\n   И те, кто слабей, с восхищеньем глядят ему вслед.\r\n       [E7] \r\n   Другого пути в этой жизни не будет и нет,\r\n       [G7] \r\n   И стая, в которой назначен вожак, проиграет... \r\n\r\nБоями отмеченный \r\nВек наш не вечен, \r\nТернист и нелегок путь: \r\nБез нашего брата \r\nНе стая, а стадо -\r\nНе знает, куда свернуть. \r\nЛишь раз проиграешь - \r\nИ ты погибаешь, \r\nТак было и будет так. \r\nТебя заменяет \r\nТвой верный товарищ - \r\nТвой тайный заклятый враг. \r\n\r\n   Вожак выбирает сам себя и сам себя утверждает, \r\n   И те, кто слабей, с восхищеньем глядят ему вслед. \r\n   Другого пути в этой жизни не будет и нет, \r\n   И стая, в которой назначен вожак, проиграет...', 3, 25, 10),
(84, 8, 'В Круге Света', '[C]                [Am6]\r\nМы не знаем, сколько мы дали кругов -\r\n     [Hm]             [Em]\r\nМы уже не помним пути:\r\n         [F]                                      [Em]\r\nСлишком долго и дружно мы взгляд устремляли вперед.\r\n        [C]              [Am6]\r\nМы построили столько стен от врагов,\r\n     [Hm]             [Em]\r\nЧто сами уже взаперти,\r\n     [F]                               [Em]\r\nИ надежно потерян ключ от главных ворот.\r\n\r\nС детства нас учили быть первыми в мире,\r\nНаучили стоять в стороне,\r\nПоднимать вверх руку, не прерывая сна.\r\nЕсли все вокруг говорят о мире,\r\nЗначит, дело идет к войне -\r\nСлишком часто новой зимой завершалась весна.\r\n\r\n       [F] [G]   [C]\r\n   В круге света\r\n   [C/h]   [Am]      [Am/g]   [F]\r\n   Были мы рождены в пути.\r\n         [G]   [C]\r\n   В круге света.\r\n        [G]                    [E7]\r\n   Почему мы не можем друг друга найти\r\n             [Am]   [C] [D]\r\n   В круге света?\r\n\r\n       [C]                     [Am6]\r\nВ тишине, как в бреду, мы забыли беду -\r\n       [G]                   [Em]\r\nМожет быть, в этом наша беда:\r\n        [D]               [G]               [D]\r\nДолго шли в никуда, уверяя, что видим свет.\r\n       [C]                 [Am6]\r\nМы построили слишком большой корабль,\r\n      [G]                   [Em]\r\nОн останется здесь навсегда:\r\n       [D]                [G]              [C]\r\nДо ближайшего моря сто верст и дороги нет.\r\n\r\nМы узнали такое количество правил,\r\nЧто не можем начать игры,\r\nУповая на завтра и не считая дней.\r\nЧто же мы никак не прочистим горло -\r\nНам уже развязали рты,\r\nТолько голос вчерашних песен сильней и верней...\r\n\r\n   В круге света\r\n   Были мы рождены в пути.\r\n   В круге света.\r\n   Почему мы не можем друг друга найти\r\n   В круге света?', 4, 58, 11),
(85, 9, 'Интерлюдия / Она Желает (Свалить из СССР)', '[E7]\r\nОна не любит дневной свет, \r\nПринципиально не читает газет. \r\nОна чужда любых сфер - \r\nОна мечтает свалить из СССР. \r\n\r\n       [H7]\r\n   Ей надо встретить принца из далекой страны -\r\n        [A7] \r\n   Он снится ей и ночью, и днем.\r\n      [H7] \r\n   И каждый день наполнен состояньем войны,\r\n      [A7]                                          [E7]\r\n   И вот уже пятнадцать долгих лет она мечтает о нем. \r\n\r\nОна выводит собак, \r\nОна идет, как на войну, в кабак, \r\nОна не курит и не пьет, \r\nОна раскидывает сети, замирает и ждет. \r\n\r\n   Ей надо встретить принца из далекой страны -\r\n   Он снится ей и ночью, и днем.\r\n   И каждый день наполнен состояньем войны,\r\n   И вот уже пятнадцать долгих лет она мечтает о нем. \r\n\r\nОна не любит читать книг, \r\nНо изучает иностранный язык. \r\nЕй тридцать пять, ну и что - \r\nОна не хочет понять, что этот поезд ушел. \r\n\r\n   Ей надо встретить принца из далекой страны -\r\n   Он снится ей и ночью, и днем.\r\n   И каждый день наполнен состояньем войны,\r\n   И вот уже пятнадцать долгих лет она мечтает о нем.', 4, 26, 1);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(86, 9, 'У Свободы Недетское Злое Лицо', '[Em7]\r\nПросто странно, что нас не свели на нет эти семьдесят лет - \r\nГолова в облаках, а ноги налиты свинцом. \r\n[A7]\r\nКто-то рано сыграл отбой, мы выходим на свет -\r\n      [Em7] \r\nУ свободы недетское злое лицо. \r\n\r\nПарни в кожаных куртках держат масть, и вы уже не нужны никому - \r\nЭти парни не любят ни честных, ни подлецов. \r\nЕсли в лоб тебе смотрит ствол - уже ни к чему кун-фу - \r\nУ свободы недетское злое лицо. \r\n\r\n         [Am]     [C7]  [F#m]         [C7]\r\n   На замене замена - не надо слез!\r\n       [Am]           [C7]  [F#m]     [C7]\r\n   На пиво, вместо пены - дихлофос!\r\n           [Em]       [D7]  [C#]         [D7] \r\n   Вместо доброго слова - собачий лай!\r\n           [Em]     [D7]   [C#7]          [D7]\r\n   Вместо добрых песен - "Ласковый май"!\r\n        [Am]     [C7]            [F#m]   [C7] \r\n   Если очень долго бить в стену лбом,\r\n        [Am]      [C7]        [F#m]     [C7] [Em7] \r\n   Со временем лоб превратится в лом. \r\n\r\nСто невидимых стен хуже каменных стен - мы опять у себя в плену. \r\nЯ дышу, и еще не считаю себя мертвецом. \r\nСлишком рано спасать себя, слишком поздно - страну. \r\nУ свободы недетское злое лицо. \r\n\r\n   На замене - замена: дело на слово, \r\n   Вместо памяти сердца - "Память" Сычева, \r\n   Вместо шила и мыла - редька с хреном, \r\n   Вместо старого пленума - новый пленум. \r\n   Если очень долго бить в стену лбом, \r\n   Со временем лоб превратится в лом.', 3, 38, 2),
(87, 9, 'Между Тем, Что Было и Тем, Что Будет', '[G]               [G+]\r\nМежду тем, что было и тем, что будет,\r\n  [Em]         [D#]\r\nВремени тетива.\r\n     [G]             [G+]\r\nОт "Было" к "Будет" шагают люди,\r\n  [Em]                [Hm]\r\nЯвившись на свет едва.\r\n    [Am]             [Am/f#]\r\nА время вновь над нами смеется -\r\n[H7]               [Em] [D] [Cm]\r\nШаги и дни сочтены\r\n [G]                [Edim] \r\nНа золотом циферблате Солнца\r\n     [C]           [Em] \r\nНад маятником Луны. \r\n\r\n       [D]              [D/c]\r\n   И дни кораблями уйдут от причала\r\n      [D/h]          [C] [G]\r\n   Навеки, но знаю я,\r\n         [D]               [D/c] \r\n   Как все, что было, начать сначала,\r\n       [D/h]            [C] \r\n   Вернув на круги своя. \r\n\r\nИ я стрелу Любви вынимаю, \r\nИ поднимаю лук. \r\nИ прямизну тетивы ломаю, \r\nИ лук сгибается в круг. \r\nВот ближе и ближе "Было" и "Будет", \r\nИ вроде моя взяла, \r\nНо пальцы сорвались, как в пропасть люди, \r\nИ в небо ушла стрела...', 4, 16, 3),
(88, 9, 'Битое Стекло', '[E7]\r\nНас манили светлые вершины,\r\n [A7]                     [E7]\r\nНо бесследно время утекло.\r\n[H7] \r\nИ в дороге дальней\r\n[C#m] \r\nОт мечты хрустальной\r\n [E7]           [H7]        [E7] \r\nНам осталось битое стекло. \r\n\r\nМы с врагами мысленно сражались, \r\nНо настал момент и понял я, \r\nЧто среди врагов \r\nНет у нас врагов, \r\nХудшие враги - твой друзья.\r\n\r\n          [A]                  [E7]\r\n   Новый день придет, ты пойди спроси его,\r\n             [H7]                             [E] \r\n   Сколько дней осталось светлый праздник ждать.\r\n   [A]               [E7]\r\n   Он уйдет и не скажет ничего,\r\n        [H7]                        [E] \r\n   Потому что завтра будет день опять. \r\n\r\nОсень наступила незаметно, \r\nИ на юг умчались стаи птиц. \r\nИ в процессе дней, \r\nВместо журавлей \r\nВсем раздали комнатных синиц. \r\n\r\n   Новый день придет, ты пойди спроси его, \r\n   Сколько дней осталось светлый праздник ждать. \r\n   Он уйдет и не скажет ничего, \r\n   Потому что завтра будет день опять.', 3, 4, 4),
(89, 9, 'Опустошение', '[E7]\r\nAn identical look of identical eyes. \r\nAn identical set of identical cries. \r\nAn identical shuffle of identical feet. \r\nAn identical sound of identical beat. \r\nMind devastation... \r\n\r\nAn identical row of identical days. \r\nAn identical age, an unlike is to blame. \r\nAn identical wave of identical hands. \r\nAn identical foe, an identical friend. \r\nMind devastation... \r\n\r\n[G#]\r\n\r\nAn identical circle of identical dreams. \r\nAn identical sense of identical prays. \r\nAn identical rock, an identical punk, \r\nAn identical boot, an identical tank. \r\nMind devastation...', 3, 51, 5),
(90, 9, 'Там, Где Будет Новый День', '[G]\r\nOh, I''m at the edge of the night,\r\nAt the end of the rain,\r\n                       [C]\r\nWhere the sun starts another day.\r\n[D]\r\nI''m watching new flowers grew,\r\n                      [G]\r\nBirds are singing so fare and bright.\r\n\r\nI''d rather stay in the light,\r\nDay that come seems so right,\r\nBut the night holds it back again.\r\nI''m in the mist of the dawn\r\nGot to get through another night.\r\n\r\n   [C]    [D]                   [G]\r\n   Hmm-hmm, It''s gonna be another day.\r\n   [C]    [D]                   [G]            [C]\r\n   Hmm-hmm, It''s gonna be another sunny day!\r\n\r\nI pass your cluments home by,\r\nThere''s no hope you can find\r\nIs sunshine it took still there?\r\nYou spent two years in vain\r\nWith no way of staying through the night.\r\n\r\n[Know there are people away\r\nAnd I''m going to stay\r\nWith no dog house and time to heal.]\r\nGot to be brought in along\r\nJust to get it to broad day light.\r\n\r\n   Hmm-hmm, It''s gonna be another day.\r\n   Hmm-hmm, It''s gonna be another sunny day!\r\n\r\n   Hmm-hmm, It''s gonna be another day.\r\n   Hmm, oh yeh! It''s gonna be another sunny day!\r\n\r\nOh, I''m at the edge of the night,\r\nAt the end of the rain,\r\nWhere the sun starts another day.\r\nI''m watching new flowers grew,\r\nBirds are singing so fare and bright.\r\n\r\nI''d rather stay in the light,\r\nDay that come seems so right,\r\nBut the night holds it back again.\r\nI''m  in the mist of the dawn\r\nGot to get through another night.\r\n\r\n   Hmm-hmm, It''s gonna be another day.\r\n   Hmm, oh yeh! It''s gonna be another sunny day!\r\n   Another sunny day!', 4, 22, 6),
(91, 9, 'Имитация', '[Em] \r\nОна сидела за столиком у окна, \r\nИ он, как бы случайно, смотрел туда. \r\nОна была ничего, она была одна, \r\nВ ее глазах как бы читалось "Да". \r\n       [Am] \r\nВремя суток позволяло сыграть игру, \r\nВремя года велело стрелять в упор. \r\n       [Em] \r\nИ он, как бы случайно, подсел к столу, \r\nИ, как бы небрежно, повел разговор. \r\n    [A]     [Em] \r\nИмитация. \r\n\r\nОн больше любит коньяк, она - сухое вино, \r\nПодали двести сухого и сто коньяку. \r\nОни оба любят группу "Кино" \r\nИ не любят "Яблоки на снегу". \r\nОн свободен до часу - немалый срок, \r\nИ она до двенадцати - хоть куда, \r\nОн предложил зайти к приятелю на огонек, \r\nОна, как бы подумав, сказала "Да". \r\nИмитация. \r\n\r\nЕго приятель на кухне как бы читал, \r\nПока они занимали его кровать. \r\nВсе случилось быстрее, чем он ожидал, \r\nИ несколько хуже, чем она могла ждать. \r\nЧерез двадцать минут они вышли вон, \r\nТри рубля на такси - небольшая беда, \r\nОна сказала: "Звони", он записал телефон \r\nПо которому не позвонит никогда. \r\nИмитация. \r\n\r\nИ он сбежал в метро, бросив ей "пока", \r\nОн был просто рад, что остался один, \r\nА за ним, догорая, тлела Москва \r\nГоловешками окон, углями витрин. \r\nВремя выключить свет, стиснуть зубы и спать, \r\nЧтоб хотя бы лет пять не очнутся от сна, \r\nЕе дома как бы ждала ее мать, \r\nЕго дома как бы ждала жена. \r\nИмитация.', 3, 41, 7),
(92, 9, 'Бурьян Породил Бурьян', '[D]\r\nНесогласные шли мишенями в тир,\r\n       [G]\r\nДля любого была готова стенка.\r\n      [D]\r\nНас учил изменять окружающий мир\r\n    [G]\r\nАкадемик - товарищ Трофим Лысенко.\r\n     [A]\r\nИ пахан, от обмана пьян\r\n    [G]\r\nОжидал чудес от земли и неба -\r\n       [D]\r\nНо бурьян породил бурьян,\r\n       [G]\r\nИз бурьяна не выросло белого хлеба,\r\n    [D]                 [G]\r\nБурьян породил бурьян.\r\n\r\nТе, кто били нас, как последних врагов,\r\nПоменяли сегодня кистень на бубен.\r\nНынче взгляд их не так суров -\r\nНынче можно, нынче голов не рубят.\r\nОнемевшими от оков\r\nЯ с трудом учусь шевелить руками -\r\nНо волки плодят волков,\r\nИз волченка не вырастет трепетной лани -\r\nБурьян породил бурьян.\r\n\r\nВновь отошла гроза,\r\nПросветлел пейзаж, затихли звуки, \r\nИ тотчас все те, кто всегда были "за",\r\nПо команде подняли руки.\r\nРазобраться пойди сумей,\r\nКто с тобой до конца, а кто лишь около -\r\nЧерви плодят червей,\r\nИз червя не вырастет гордого сокола -\r\nБурьян породил бурьян.\r\n\r\n       [D]                            [G]\r\n   Бурьян породил бурьян. Слава труду...\r\n    [D]                             [G]\r\n   Волки плодят волков. Слава труду...\r\n    [D]                             [G]\r\n   Черви плодят червей. Слава труду...\r\n       [D]                            [G]\r\n   Бурьян породил бурьян. Слава труду...', 4, 11, 8),
(93, 9, 'Ветер Все Сильней', '[Am]          [Am/g]\r\nКак же так, видишь, друг,\r\n[E7]               [Am]\r\nМы уже почти одни,\r\n                   [Am/g] \r\nТот же мир, только уже круг,\r\n[E7]             [Am] \r\nИ еще короче дни. \r\n\r\n   [C7]              [A7]\r\n   По земле и небу, по воде и хлебу\r\n   [Dm]        [Dm/c#] \r\n   С каждой ночью тише\r\n   [F]        [G7]        [C7] \r\n   Поступь четырех коней.\r\n   [E]      [E7] \r\n   Не танцуй на крыше -\r\n    [Am]     [Am/g]   [E7] \r\n   Ветер все сильней. \r\n\r\nКак же так, рвется нить,\r\nВетер не остановить. \r\nВрут про рай, значит скоро край \r\nНе спасти, не сохранить. \r\n\r\n   Поднимая в воздух и кресты и звезды, \r\n   Ветер движет нами, \r\n   Сколько нам осталось дней... \r\n   И в поклоны поздно - \r\n   Ветер все сильней. \r\n\r\n                     [Am] [Am/g] [Am/g#]\r\n      Ветер все сильней.\r\n       [Am/f]          [Am] [Am/g] [Am/g#]\r\n      Ветер все сильней.\r\n       [Am/f]          [Am] [Am/g] [Am/g#] \r\n      Ветер все сильней.\r\n       [Am/f]          [Am] \r\n      Ветер все сильней.', 4, 46, 9),
(94, 9, 'Я Хочу Знать', '[A7]\r\nЕсли ни царь, ни Бог\r\nВам уже не помог -\r\nЧтобы сохранить и порядок, и строй, -\r\nОчень нужен новый герой.\r\n[E7]\r\nОн народ спасти готов\r\nОт масонов и жидов,\r\nУ него есть ум, совесть и честь\r\n                     [A7]\r\nИ колода пламенных слов.\r\n\r\nОн, услышав слово «рок»,\r\nНажимает на курок.\r\nКто на рожон лез с толком или без -\r\nВсе валить поедут лес.\r\nУ него - друзья в ЦеКа,\r\nСловно лом, тверда рука,\r\nИздалека он учует врага\r\nИ будет бить наверняка.\r\n\r\n   [D]                                    [A7]\r\n   Я хочу знать, я хочу знать, я хочу знать -\r\n     [F#m]                                               [E7]\r\n   Сколько нам ждать, сколько нам ждать, сколько нам ждать?\r\n    [D]                                        [A7]\r\n   Шапки долой, встать в строй, два шага вперед -\r\n    [F#m]                              [E7]\r\n   Новый герой нас к новой победе ведет.\r\n\r\nОн рыдает под баян,\r\nХоть сейчас готов в Афган -\r\nЭтот герой за державу горой,\r\nИ люди за него горой.\r\nСнова будет колбаса,\r\nВсе народы станут «за» -\r\nВ пику козлам из империи зла -\r\nМы к солнцу повернем глаза.\r\n\r\n   Я хочу знать, я хочу знать, я хочу знать -\r\n   Сколько нам ждать, сколько нам ждать, сколько нам ждать?\r\n   Шапки долой, встать в строй, два шага вперед -\r\n   Новый герой нас к новой победе ведёт.', 3, 31, 10),
(95, 9, 'Костер', '[Em] [C] [D] [Em]\r\n\r\n  [Em]\r\nВсё отболит, и мудрый говорит:\r\n  [G]                [D]\r\n"Каждый костёр когда-то догорит,\r\n [C]        [Hm]                [Em]\r\nВетер золу  развеет без следа."\r\n [Em]\r\nНо до тех пор, пока огонь горит,\r\n [G]              [D]\r\nКаждый его по-своему хранит,\r\n[C]        [Hm]            [Em]\r\nЕсли беда  и если холода.\r\n\r\n[C] [D] [Em]\r\n\r\nРаз ночь длинна, жгут едва-едва\r\nИ берегут силы и дрова,\r\nЗря не шумят и не портят лес.\r\nНо иногда найдётся вдруг чудак,\r\nЭтот чудак всё сделает не так,\r\nИ его костёр взовьётся до небес.\r\n\r\nПрипев\r\n[C]         [D]        [Em]\r\n Ещё не всё дорешено,\r\n[C]         [D]         [Em]\r\n Ещё не всё разрешено,\r\n[C]         [G]    [Am]\r\n Ещё не все погасли краски дня,\r\n   [C]               [Hm]\r\n Ещё не жаль огня,\r\n                 [Em]\r\n И бог хранит меня.\r\n\r\n\r\nТот был умней, кто свой огонь сберёг,\r\nОн обогреть других уже не мог,\r\nНо без потерь дожил до тёплых дней.\r\nА ты был не прав, ты всё спалил за час,\r\nИ через час большой огонь угас,\r\nНо в этот час стало всем теплей.', 3, 48, 11),
(96, 9, 'Барьер', '[Em]\r\nТы был из тех, кто рвался в бой.\r\n                                     [Am]             [Em] [H] [D]\r\nИ без помех ты с ходу брал барьер любой.  Барьер любой.\r\n[Em]\r\nЛюбой запрет тебя манил.\r\n                                [Am]           [Em]\r\nИ ты рубил и бил, пока хватало сил, и был собой.\r\n\r\n   [D]                              [C]\r\n   Ты шел как бык на красный свет, ты был герой, сомнений нет.\r\n   [G]                             [F]\r\n   Никто не мог тебя с пути свернуть.\r\n   [D]                        [C]\r\n   Но если все открыть пути, куда идти и с кем идти?\r\n   [G]                             [F]\r\n   И как бы ты тогда нашел свой путь?\r\n               [Em]\r\n   Нашел свой путь...\r\n\r\nИ был пробит последний лед,\r\nИ путь открыт, осталось лишь идти вперед. Идти вперед...\r\nИ тут ты встал, не сделал шаг -\r\nОткрытый путь страшнее был, чем лютый враг и вечный лед.\r\n\r\n   Ты шел как бык на красный свет, ты был герой, сомнений нет.\r\n   Никто не мог тебя с пути свернуть.\r\n   Но если все открыть пути, куда идти и с кем идти?\r\n   И как бы ты тогда нашел свой путь?\r\n   Нашел свой путь...', 4, 11, 12),
(97, 9, 'Шанхай-Блюз', '[A]      [C#7] \r\nДавным-давно, \r\n[F#m]              [Em6]   [A7] \r\nКогда нам было все равно, \r\n     [D7]          [H7]\r\nЧто пить, с кем жить,\r\n     [A]        [F#7]               [Hm] \r\nКак быть, и время проходило Hi-Fi - \r\n[F7]        [E7]     [A]  [Hm] [E7] \r\nМы пели Блюз-Шанхай \r\n\r\nКогда свет, свет побед \r\nПрошлых лет сказал тебе "привет", \r\nНу что ж, пускай... \r\nТы голову не опускай и вспомни, \r\nВспомни Блюз-Шанхай. \r\n\r\nСоберем старый хор, \r\nИ возьмем любимый ля-мажор. \r\nТогда года -\r\nНе беда. А не веришь - ты мне сам подыграй \r\nВсе тот же Блюз-Шанхай. \r\n\r\nА потом, за столом, \r\nО былом, и о том, и о сем, \r\nМы споем. И нальем, \r\nИ снова нальем, пусть это будет не чай - \r\nПомянем Блюз Шанхай.\r\n\r\nШанхай блюз... Шанхай блюз...\r\nШанхай блюз... Шанхай блюз...', 3, 38, 13),
(98, 10, 'Дорога в Небо', '[G]               [Em]   [G]                [Em]\r\nСтолько лет сражений, столько лет тревог -\r\n[C]                 [D]           [G]\r\nЯ не знал, что уйти будет легко.\r\n              [Em]  [G]                 [Em]\r\nНас зовут в окопы, скоро третий звонок -\r\n[C]               [D]           [G] [G7]\r\nИ только мы от них уже далеко.\r\n\r\n    [C]  [D]              [G]              [C]\r\n   Там, где находится южный край Земли,\r\n    [Am7]  [D7]                  [G]   [G7]\r\n   Там край, где уже не свернуть.\r\n    [C] [D]             [G]            [Em]\r\n   Там у причала стоят мои корабли -\r\n   [C]              [D7]                 [G]   [Em] [G] [Em]\r\n   В назначенный день мы тронемся в путь.\r\n\r\n\r\nМы выходим из круга, мы выходим на свет -\r\nЭто знак, что команда уже собралась.\r\nМы узнаем друг друга после долгих лет\r\nПо улыбке и по цвету глаз.\r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят мои корабли -\r\n   В назначенный день мы тронемся в путь.\r\n\r\n      [Hm]        [C]                [Hm]\r\n      Дорога в небо лежит по прямой,\r\n                [C]               [Hm]\r\n      Дорога в небо - дорога домой,\r\n                [C]                [D]\r\n      Дорога в небо - и все позади,\r\n                 [D7]\r\n      И только свет на пути. \r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят мои корабли -\r\n   В назначенный день мы тронемся в путь.\r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят твои корабли -\r\n   В назначенный день ты тронешься в путь.', 4, 25, 1),
(99, 10, 'Этот Вечный Блюз', '[F]          [E7]\r\nПойдем на тот конец,\r\n[D#]                [D]\r\nГде балом правит вечер, -\r\n       [G7]\r\nВ этот адский рай,\r\n     [C7]\r\nГде жизнь через край\r\n      [A7]  [D7] [G7] [C7] \r\nДо утра,\r\n[F]           [E7]\r\nВ отель разбитых сердец,\r\n[D#]                  [D]\r\nВ кафе нежданной втречи\r\n        [G7]\r\nПо бульвару Роз\r\n   [C7]              [F] [B7] [E7] [F7] [A7]\r\nПора, мой друг, пора.\r\n\r\n   [D7]        [G]\r\n   Пока мы здесь, мы живем,\r\n   [C7]             [F]   [E] [D#] [D7]\r\n   Пока не все остыло,\r\n              [G]\r\n   Давай с тобою вдвоем\r\n   [C]                 [C+]\r\n   Возьмем по двести. А может, пива?\r\n\r\nВот бар разбитой мечты\r\nИ песни недопетой,\r\nВот звучит отсчет,\r\nИ выходит вперед \r\nТрубач.\r\nОн одинок, как и ты,\r\nИ он поет об этом\r\nЭтот вечный блюз -\r\nНалей, мой друг, и не плачь.\r\n\r\n   Пока мы здесь, мы живем,\r\n   Пока не все остыло,\r\n   Давай с тобою вдвоем\r\n   Возьмем по двести за все, что было...\r\n\r\n[F]          [E7]\r\nПойдем на тот конец,\r\n[D#]                [D]\r\nГде балом правит вечер,\r\n        [G7]\r\nВ этот вечный блюз, -\r\n   [C7]                   [F7] [B7] [F7]\r\nНалей, мой друг, и не плачь.', 4, 9, 2),
(100, 10, 'Когда Я Был Большим', '[A7]\r\nКогда я был большим, я не боялся машин,\r\nМой папа - снежный барс, покоритель вершин,\r\n         [G7]       [D7]           [A7] \r\nИ с девяти до пяти я работал героем. \r\nЯ вылетал из окна, лишь только цель видна, \r\nВыпивал по два баллона молодого вина\r\n    [G7]                  [D7]                [A7]\r\nИ учил Брюса Ли кордебалету и хождению строем \r\n\r\n            [D]\r\n   Я видел цель вдали, имел жену Натали, \r\n   Ходил на край Земли, и Сальвадор Дали\r\n         [H7]                                  [E7] \r\n   Никогда не торговался, покупая у меня картины.\r\n          [D] \r\n   И я летал по ночам, напоминая сыча, \r\n   Сочинил "ча-ча-ча" и лечил Ильича\r\n   [H7]                 [E7]          [A] \r\n   От простуды, геморроя и скарлатины. \r\n\r\nКогда я был большим, я проглотил аршин - \r\nМеня смотрел Чумак, но ничего не решил, \r\nИ я потом сто лет подряд не проходил в ворота. \r\nЯ изобрел рассвет, придумал группу "Секрет", \r\nНарисовал на стене Б.Г. то, чего нет, - \r\nС меня писали портрет Архимед и Нино Рота \r\n\r\n   И я ходил по домам очаровательных дам, \r\n   Со мною жил Моше Даян и Садам -\r\n   Мы принимали "Агдам" и зимой, и летом. \r\n   Но только как-то раз беседа не задалась, \r\n   И тогда один другому взял и высадил глаз, \r\n   Но никогда потом не вспоминал об этом. \r\n\r\nКогда я был большим, я не курил анаши - \r\nЯ покупал гашиш в конторе Чана Кай Ши, \r\nИ не тужил, и сладко жил, но все-таки помер. \r\nМеня несли на руках ну все, кому не лень, \r\nИ по планете был объявлен нерабочий день, \r\nИ Владислав Третьяк в знак печали сменил свой номер. \r\n\r\n   И каждый колокол в стране потом звонил по мне -\r\n   Мое имя написали на Великой Стене, \r\n   Моей жене подарили Магадан и остров Вуду. \r\n   Но с той поры прошло уже две тысячи лет, \r\n   И я опять пришел на этот белый свет, \r\n   Но боюсь, что таким большим уже больше не буду.', 3, 8, 3),
(101, 10, 'Дальше и Дальше', '[Dm7]       [A7]\r\nВыпадут звезды как снег,\r\n[Dm7]       [A7]\r\nСтанет как солнце Луна -\r\n[Dm7]       [A7]\r\nСкор и не слышен наш бег,\r\n[Gm]              [Gm7] [Gdim]           [A7]\r\nДальше и дальше,      туда, зде зима...\r\n\r\nЗвуки застыли вдали,\r\nВот и не видно коней.\r\nВскачь, не касаясь Земли,\r\nДальше и дальше, туда, где темней...\r\n\r\n    [Gm]                   [Gm7]  [Gdim] [A7]\r\n   Ты слышишь - нам нельзя уснуть.\r\n    [Gm]                   [Gm7]  [Gdim]\r\n   Ты слышишь - нам нельзя уснуть,\r\n                    [A7]\r\n   Кто-нибудь, помоги повернуть...\r\n\r\nСпрыгнуть на полном скаку,\r\nИ посреди тишины,\r\nШагом, по пояс в снегу\r\nДальше и дальше - прочь от земли.\r\n\r\n   Ты слышишь - нам нельзя уснуть.\r\n   Ты слышишь - нам нельзя уснуть,\r\n   Кто-нибудь, помоги повернуть...', 4, 47, 4),
(102, 10, 'Рождественская Песня', '[G]                 [C]\r\nКогда окажется вдруг:\r\n[G]                   [C]\r\nВот-вот замкнется круг,\r\n[Am]                [D7]  [H7]\r\nИ день уносится прочь,\r\n       [Em]         [D]\r\nИ спускается ночь,\r\n[G]                 [C]\r\nКогда уходит Стрелец\r\n[G]              [C]\r\nИ декабрю - конец,\r\n[Am]                [D7] [H7]\r\nЛистает книгу сердец\r\n       [Em]          [D]\r\nНаш Небесный Отец.\r\n\r\n     [G]                     [Hm]\r\n   Время льет полночную мглу\r\n     [Dm]                       [E7]\r\n   Плавно, словно мед по стеклу,\r\n   [Am7]                [D7] [H7]\r\n   Открывая небо для нас\r\n              [G]\r\n   В свой назначенный час.\r\n     [Em]                      [Hm]\r\n   Время - твой извечный конвой,\r\n   [Dm]                 [E7]\r\n   Шаги судьбы за спиной,\r\n   [Am7]               [Cm]\r\n   Дыханье Бога с тобой\r\n          [G]  [D]\r\n   И со мной.\r\n\r\nКогда разгаданы сны\r\nИ в небе фаза полной луны,\r\nМы на мгновенье сыны\r\nНеземной страны.\r\nИ есть лишь миг, чтоб узнать:\r\nВремя плыть иль время ждать,\r\nВремя жечь мосты и взлетать\r\nИли время спать?\r\n\r\n   Словно звук небесной струны,\r\n   Словно знак конца войны,\r\n   Словно свет далекой весны\r\n   Через будни и сны,\r\n   В полночь застывают часы -\r\n   Это Время выверяет Весы,\r\n   В миг затишья после трудов\r\n   Меж двух годов.\r\n\r\n       [C]\r\n      Видишь, как столетья\r\n           [E7]                    [Dm]  [G] \r\n      Облетают прошлогодней листвой,\r\n       [C]\r\n      Видишь, как секунды\r\n            [Am] \r\n      Застывают стрекозой\r\n             [D] [D7] \r\n      В янтаре...\r\n\r\nИ ты узнаешь тогда:\r\nПройдет любая беда,\r\nИ нету слова "никогда",\r\nИ все - суета,\r\nНо мы с тобою все-таки есть,\r\nИ наше место именно здесь,\r\nИ Время прочит добрую весть,\r\nИ дорог не счесть.\r\n\r\n   Словно звук небесной струны,\r\n   Словно знак конца войны,\r\n   Словно свет далекой весны\r\n   Через будни и сны,\r\n   В полночь застывают часы -\r\n   Это Время выверяет Весы,\r\n   В миг затишья после трудов\r\n   Меж двух годов.\r\n\r\n   Время льет полночную мглу\r\n   Плавно, словно мед по стеклу,\r\n   Открывая небо для нас\r\n   В свой назначенный час.\r\n   Время - твой извечный конвой,\r\n   Шаги судьбы за спиной,\r\n   Дыханье Бога с тобой\r\n   И со мной.', 5, 56, 5),
(103, 10, 'Внештатный Командир Земли', '[E7]\r\nКогда восходит Луна, \r\nЕму совсем не до сна, \r\nПока он с миром не закончил спор. \r\nОн открывает дверь \r\nИ, словно загнаннй зверь, \r\nИ выходит на безлюдный простор. \r\n\r\n        [A7]\r\nИ он обходит посты, \r\nЧто совершенно пусты -\r\nПрошли те дни, когда его берегли, -\r\n         [C7] \r\nОн бесконечно одинокий\r\n     [H7]                 [E7] \r\nВнештатный командир Земли \r\n\r\n        [E7]\r\nИ он готов для полёта, \r\nКоторого не знала Земля, \r\nНо он пилот без самолёта, \r\nОн капитан без корабля. \r\n\r\n        [A7]\r\nЕго фрегаты затерялись вдали, \r\nЕго солдаты все до хаты ушли -\r\n         [C7]\r\nОн бесконечно одинокий\r\n     [H7]                 [F#7] \r\nВнештатный командир Земли\r\n \r\n[F#7]\r\nДругое время - другие дела, \r\nВсе, что горело, - догорело до тла, \r\nВсе, что летало, - камнем тянет на дно,\r\n   [H7]         [A]            [G]\r\nИ никому нет дела, кем он был\r\n           [F] [E7]\r\nДавным-давно.\r\n\r\n        [E7]\r\nИ он готов для полёта, \r\nКоторого не знала Земля, \r\nНо он пилот без самолёта, \r\nОн капитан без корабля. \r\n\r\n[F#7]\r\nСтоят на рейде не его корабли, \r\nИ больше некому скомандовать: "Пли!", \r\nПовсюду чудится насмешливый взгляд -\r\n    [H7]            [A]\r\nИм наплевать, что он был богом\r\n  [G]          [F] \r\nМного лет назад... \r\n\r\n[F#7]\r\nДругое время - другие дела, \r\nВсе, что горело, - догорело до тла, \r\nВсе, что летало, - камнем тянет на дно,\r\n   [H7]         [A]            [G]\r\nИ никому нет дела, кем он был\r\n           [F] \r\nДавным-давно.', 5, 14, 6),
(104, 10, 'Знаю Только Я', '[E]\r\nЯ увезу тебя туда,\r\n        [C#7]         [A] \r\nГде от горя нет следа,\r\n[Am]      [E]          [F#]\r\nИ никогда летним днем\r\n         [Am]         [H] \r\nНет ни гроз, ни дождей.\r\n\r\nТам, на далеком берегу,\r\nЯ сберечь тебя смогу\r\nИ помогу позабыть\r\nХоровод серых дней.\r\n\r\n     [C#m]                    [E]\r\n   Где мой дом, тут он или там, там, там?\r\n     [C#m]                     [H] [G#7]\r\n   Где мой дом, где мои друзья?\r\n    [C#m]                       [E]\r\n   Как мне быть, как туда доплыть, плыть, плыть?\r\n               [F#]             [Am]             [E]\r\n   Знаю только я, знаю только я, знаю только я.', 3, 40, 7),
(105, 10, 'На Семи Ветрах', '[E]             [C#m] \r\nНа семи ветрах, в конечной точке всех дорог,\r\n [E]           [C#m]\r\nНа краю Земли стоит хрустальная гора.\r\n[A]                                                [C#m]\r\nТам, на границе с небом, живет печальный мудрый Бог.\r\n[A]                                              [E]\r\nГлядит на нас с вершины, считает дни и ждет меня.\r\n\r\nЯ собрался в путь, и я прошел весь белый свет -\r\nЯ построил плот, за морем край Земли нашел.\r\nВ тени горы хрустальной я прожил двадцать долгих лет,\r\nИ я поднялся к небу, но до вершины не дошел.', 4, 22, 8),
(106, 10, 'Мой Друг (Лучше Всех Играет Блюз)', '[C#m7]\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОн на взводе -\r\nНе подходи,\r\nОн уходит\r\nВсегда один.\r\n\r\n         [A7]\r\n   Но зато мой друг\r\n                       [C#m7]\r\n   Лучше всех играет блюз,\r\n           [A7]\r\n   Круче всех вокруг\r\n                    [C#m7]\r\n   Он один играет блюз.\r\n\r\nОн не знает\r\nУмных слов -\r\nОн считает\r\nВас за козлов,\r\nДаже в морге\r\nОн будет играть -\r\nНа восторги\r\nЕму плевать.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nНочь - на выдох,\r\nДень - на вдох,\r\nКто не выжил,\r\nТот и сдох.\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.', 4, 10, 9),
(107, 10, 'Колыбельная', '[D]    [F#m]    [Hm]   [F#m]\r\nСпи малыш, пока зима -\r\n[Em7]     [A7]     [D]\r\nВек не быть зиме.\r\n         [F#m]   [Hm]     [F#m]\r\nКрепко спи, покуда мгла\r\n[Em7]           [A]  [Asus4] [A]\r\nБродит по Земле.\r\n\r\n   [Hm]      [F#7]    [G]      [H7]\r\n   Чёрный Конь копытом бьёт,\r\n   [G]        [Gm]        [F#m] [A7]\r\n   Бледный конь - за ним.\r\n   [D]        [F#]     [G]       [H7]\r\n   Будь же ты от всех невзгод\r\n   [Em7]   [A]      [D]  [D6] [D] [G] [G9] [G] [D] [Dsus4] [D] [A] [A6] [A] [D]\r\n   Господом храним.\r\n\r\nБудь же ты от бурь и бед\r\nГосподом храним.\r\nБудет день, и будет свет,\r\nИ надежда с ним.\r\n\r\n   Долетит Благая Весть,\r\n   Только верь и жди.\r\n   Иисус еще не здесь,\r\n   Но уже в пути.', 2, 34, 10),
(108, 10, 'Когда Мы Уйдем', '[E]   [H]       [G#m] [H]\r\nКогда мы уйдём\r\n[E]    [G#7]    [A] [C#7]\r\nВ туманную даль,\r\n [A]\r\nТы обернись\r\n[Am]     [Am/f#] \r\nИ улыбнись,\r\n  [E]       [C#m]\r\nБрось тоску,\r\n   [F#m]        [H7] \r\nЗабудь про печаль.\r\n\r\nПечаль отойдет\r\nАпрельским дождем,\r\nСомнений нет - \r\nБудет рассвет\r\nДаже в день, \r\nКогда мы уйдем...\r\n\r\n       [F#m]       [H7]\r\nНу и что за беда,\r\n       [F#m]\r\nЕсли кто-то уснул,\r\n      [H7]\r\nНу и пусть.\r\n       [F#m]            [Am]\r\nНу, а нам - не до сна,\r\n         [E]      [C#m]\r\nИ как в давние годы,\r\n   [F#m]     [H7]\r\nДалёк наш путь.', 2, 18, 11),
(109, 11, 'Дорога в небо (Live)', '[G]               [Em]   [G]                [Em]\r\nСтолько лет сражений, столько лет тревог -\r\n[C]                 [D]           [G]\r\nЯ не знал, что уйти будет легко.\r\n              [Em]  [G]                 [Em]\r\nНас зовут в окопы, скоро третий звонок -\r\n[C]               [D]           [G] [G7]\r\nИ только мы от них уже далеко.\r\n\r\n    [C]  [D]              [G]              [C]\r\n   Там, где находится южный край Земли,\r\n    [Am7]  [D7]                  [G]   [G7]\r\n   Там край, где уже не свернуть.\r\n    [C] [D]             [G]            [Em]\r\n   Там у причала стоят мои корабли -\r\n   [C]              [D7]                 [G]   [Em] [G] [Em]\r\n   В назначенный день мы тронемся в путь.\r\n\r\n\r\nМы выходим из круга, мы выходим на свет -\r\nЭто знак, что команда уже собралась.\r\nМы узнаем друг друга после долгих лет\r\nПо улыбке и по цвету глаз.\r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят мои корабли -\r\n   В назначенный день мы тронемся в путь.\r\n\r\n      [Hm]        [C]                [Hm]\r\n      Дорога в небо лежит по прямой,\r\n                [C]               [Hm]\r\n      Дорога в небо - дорога домой,\r\n                [C]                [D]\r\n      Дорога в небо - и все позади,\r\n                 [D7]\r\n      И только свет на пути. \r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят мои корабли -\r\n   В назначенный день мы тронемся в путь.\r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят твои корабли -\r\n   В назначенный день ты тронешься в путь.', 4, 21, 1),
(110, 11, 'Внештатный командир Земли (Live)', '[E7]\r\nКогда восходит Луна, \r\nЕму совсем не до сна, \r\nПока он с миром не закончил спор. \r\nОн открывает дверь \r\nИ, словно загнаннй зверь, \r\nИ выходит на безлюдный простор. \r\n\r\n        [A7]\r\nИ он обходит посты, \r\nЧто совершенно пусты -\r\nПрошли те дни, когда его берегли, -\r\n         [C7] \r\nОн бесконечно одинокий\r\n     [H7]                 [E7] \r\nВнештатный командир Земли \r\n\r\n        [E7]\r\nИ он готов для полёта, \r\nКоторого не знала Земля, \r\nНо он пилот без самолёта, \r\nОн капитан без корабля. \r\n\r\n        [A7]\r\nЕго фрегаты затерялись вдали, \r\nЕго солдаты все до хаты ушли -\r\n         [C7]\r\nОн бесконечно одинокий\r\n     [H7]                 [F#7] \r\nВнештатный командир Земли\r\n \r\n[F#7]\r\nДругое время - другие дела, \r\nВсе, что горело, - догорело до тла, \r\nВсе, что летало, - камнем тянет на дно,\r\n   [H7]         [A]            [G]\r\nИ никому нет дела, кем он был\r\n           [F] [E7]\r\nДавным-давно.\r\n\r\n        [E7]\r\nИ он готов для полёта, \r\nКоторого не знала Земля, \r\nНо он пилот без самолёта, \r\nОн капитан без корабля. \r\n\r\n[F#7]\r\nСтоят на рейде не его корабли, \r\nИ больше некому скомандовать: "Пли!", \r\nПовсюду чудится насмешливый взгляд -\r\n    [H7]            [A]\r\nИм наплевать, что он был богом\r\n  [G]          [F] \r\nМного лет назад... \r\n\r\n[F#7]\r\nДругое время - другие дела, \r\nВсе, что горело, - догорело до тла, \r\nВсе, что летало, - камнем тянет на дно,\r\n   [H7]         [A]            [G]\r\nИ никому нет дела, кем он был\r\n           [F] \r\nДавным-давно.', 4, 48, 2),
(111, 11, 'На семи ветрах (Live)', '[E]             [C#m] \r\nНа семи ветрах, в конечной точке всех дорог,\r\n [E]           [C#m]\r\nНа краю Земли стоит хрустальная гора.\r\n[A]                                                [C#m]\r\nТам, на границе с небом, живет печальный мудрый Бог.\r\n[A]                                              [E]\r\nГлядит на нас с вершины, считает дни и ждет меня.\r\n\r\nЯ собрался в путь, и я прошел весь белый свет -\r\nЯ построил плот, за морем край Земли нашел.\r\nВ тени горы хрустальной я прожил двадцать долгих лет,\r\nИ я поднялся к небу, но до вершины не дошел.', 4, 15, 3),
(112, 11, 'Дальше и дальше (Live)', '[Dm7]       [A7]\r\nВыпадут звезды как снег,\r\n[Dm7]       [A7]\r\nСтанет как солнце Луна -\r\n[Dm7]       [A7]\r\nСкор и не слышен наш бег,\r\n[Gm]              [Gm7] [Gdim]           [A7]\r\nДальше и дальше,      туда, зде зима...\r\n\r\nЗвуки застыли вдали,\r\nВот и не видно коней.\r\nВскачь, не касаясь Земли,\r\nДальше и дальше, туда, где темней...\r\n\r\n    [Gm]                   [Gm7]  [Gdim] [A7]\r\n   Ты слышишь - нам нельзя уснуть.\r\n    [Gm]                   [Gm7]  [Gdim]\r\n   Ты слышишь - нам нельзя уснуть,\r\n                    [A7]\r\n   Кто-нибудь, помоги повернуть...\r\n\r\nСпрыгнуть на полном скаку,\r\nИ посреди тишины,\r\nШагом, по пояс в снегу\r\nДальше и дальше - прочь от земли.\r\n\r\n   Ты слышишь - нам нельзя уснуть.\r\n   Ты слышишь - нам нельзя уснуть,\r\n   Кто-нибудь, помоги повернуть...', 4, 21, 4),
(113, 11, 'Знаю только я (Live)', '[E]\r\nЯ увезу тебя туда,\r\n        [C#7]         [A] \r\nГде от горя нет следа,\r\n[Am]      [E]          [F#]\r\nИ никогда летним днем\r\n         [Am]         [H] \r\nНет ни гроз, ни дождей.\r\n\r\nТам, на далеком берегу,\r\nЯ сберечь тебя смогу\r\nИ помогу позабыть\r\nХоровод серых дней.\r\n\r\n     [C#m]                    [E]\r\n   Где мой дом, тут он или там, там, там?\r\n     [C#m]                     [H] [G#7]\r\n   Где мой дом, где мои друзья?\r\n    [C#m]                       [E]\r\n   Как мне быть, как туда доплыть, плыть, плыть?\r\n               [F#]             [Am]             [E]\r\n   Знаю только я, знаю только я, знаю только я.', 3, 46, 5),
(114, 11, 'Мой друг (Лучше всех играет блюз) [Live]', '[C#m7]\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОн на взводе -\r\nНе подходи,\r\nОн уходит\r\nВсегда один.\r\n\r\n         [A7]\r\n   Но зато мой друг\r\n                       [C#m7]\r\n   Лучше всех играет блюз,\r\n           [A7]\r\n   Круче всех вокруг\r\n                    [C#m7]\r\n   Он один играет блюз.\r\n\r\nОн не знает\r\nУмных слов -\r\nОн считает\r\nВас за козлов,\r\nДаже в морге\r\nОн будет играть -\r\nНа восторги\r\nЕму плевать.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nНочь - на выдох,\r\nДень - на вдох,\r\nКто не выжил,\r\nТот и сдох.\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.', 4, 25, 6),
(115, 11, 'Этот вечный блюз (Live)', '[F]          [E7]\r\nПойдем на тот конец,\r\n[D#]                [D]\r\nГде балом правит вечер, -\r\n       [G7]\r\nВ этот адский рай,\r\n     [C7]\r\nГде жизнь через край\r\n      [A7]  [D7] [G7] [C7] \r\nДо утра,\r\n[F]           [E7]\r\nВ отель разбитых сердец,\r\n[D#]                  [D]\r\nВ кафе нежданной втречи\r\n        [G7]\r\nПо бульвару Роз\r\n   [C7]              [F] [B7] [E7] [F7] [A7]\r\nПора, мой друг, пора.\r\n\r\n   [D7]        [G]\r\n   Пока мы здесь, мы живем,\r\n   [C7]             [F]   [E] [D#] [D7]\r\n   Пока не все остыло,\r\n              [G]\r\n   Давай с тобою вдвоем\r\n   [C]                 [C+]\r\n   Возьмем по двести. А может, пива?\r\n\r\nВот бар разбитой мечты\r\nИ песни недопетой,\r\nВот звучит отсчет,\r\nИ выходит вперед \r\nТрубач.\r\nОн одинок, как и ты,\r\nИ он поет об этом\r\nЭтот вечный блюз -\r\nНалей, мой друг, и не плачь.\r\n\r\n   Пока мы здесь, мы живем,\r\n   Пока не все остыло,\r\n   Давай с тобою вдвоем\r\n   Возьмем по двести за все, что было...\r\n\r\n[F]          [E7]\r\nПойдем на тот конец,\r\n[D#]                [D]\r\nГде балом правит вечер,\r\n        [G7]\r\nВ этот вечный блюз, -\r\n   [C7]                   [F7] [B7] [F7]\r\nНалей, мой друг, и не плачь.', 4, 17, 7),
(116, 11, 'Когда я был большим (Live)', '[A7]\r\nКогда я был большим, я не боялся машин,\r\nМой папа - снежный барс, покоритель вершин,\r\n         [G7]       [D7]           [A7] \r\nИ с девяти до пяти я работал героем. \r\nЯ вылетал из окна, лишь только цель видна, \r\nВыпивал по два баллона молодого вина\r\n    [G7]                  [D7]                [A7]\r\nИ учил Брюса Ли кордебалету и хождению строем \r\n\r\n            [D]\r\n   Я видел цель вдали, имел жену Натали, \r\n   Ходил на край Земли, и Сальвадор Дали\r\n         [H7]                                  [E7] \r\n   Никогда не торговался, покупая у меня картины.\r\n          [D] \r\n   И я летал по ночам, напоминая сыча, \r\n   Сочинил "ча-ча-ча" и лечил Ильича\r\n   [H7]                 [E7]          [A] \r\n   От простуды, геморроя и скарлатины. \r\n\r\nКогда я был большим, я проглотил аршин - \r\nМеня смотрел Чумак, но ничего не решил, \r\nИ я потом сто лет подряд не проходил в ворота. \r\nЯ изобрел рассвет, придумал группу "Секрет", \r\nНарисовал на стене Б.Г. то, чего нет, - \r\nС меня писали портрет Архимед и Нино Рота \r\n\r\n   И я ходил по домам очаровательных дам, \r\n   Со мною жил Моше Даян и Садам -\r\n   Мы принимали "Агдам" и зимой, и летом. \r\n   Но только как-то раз беседа не задалась, \r\n   И тогда один другому взял и высадил глаз, \r\n   Но никогда потом не вспоминал об этом. \r\n\r\nКогда я был большим, я не курил анаши - \r\nЯ покупал гашиш в конторе Чана Кай Ши, \r\nИ не тужил, и сладко жил, но все-таки помер. \r\nМеня несли на руках ну все, кому не лень, \r\nИ по планете был объявлен нерабочий день, \r\nИ Владислав Третьяк в знак печали сменил свой номер. \r\n\r\n   И каждый колокол в стране потом звонил по мне -\r\n   Мое имя написали на Великой Стене, \r\n   Моей жене подарили Магадан и остров Вуду. \r\n   Но с той поры прошло уже две тысячи лет, \r\n   И я опять пришел на этот белый свет, \r\n   Но боюсь, что таким большим уже больше не буду.', 3, 48, 8),
(117, 11, 'Колыбельная (Live)', '[D]    [F#m]    [Hm]   [F#m]\r\nСпи малыш, пока зима -\r\n[Em7]     [A7]     [D]\r\nВек не быть зиме.\r\n         [F#m]   [Hm]     [F#m]\r\nКрепко спи, покуда мгла\r\n[Em7]           [A]  [Asus4] [A]\r\nБродит по Земле.\r\n\r\n   [Hm]      [F#7]    [G]      [H7]\r\n   Чёрный Конь копытом бьёт,\r\n   [G]        [Gm]        [F#m] [A7]\r\n   Бледный конь - за ним.\r\n   [D]        [F#]     [G]       [H7]\r\n   Будь же ты от всех невзгод\r\n   [Em7]   [A]      [D]  [D6] [D] [G] [G9] [G] [D] [Dsus4] [D] [A] [A6] [A] [D]\r\n   Господом храним.\r\n\r\nБудь же ты от бурь и бед\r\nГосподом храним.\r\nБудет день, и будет свет,\r\nИ надежда с ним.\r\n\r\n   Долетит Благая Весть,\r\n   Только верь и жди.\r\n   Иисус еще не здесь,\r\n   Но уже в пути.', 2, 46, 9),
(118, 11, 'Старый корабль (Live)', '[G]                       [Am] [Am+7] [Am7] [Am+7]\r\nНа берегу так оживленно людно,\r\n[D7]                       [G]  [D#7] [D7]\r\nА у воды высится, как мираж,\r\n  [G]                               [Am] [Am+7] [Am7] [Am+7]\r\nДревний корабль - грозное чье-то судно,\r\n [D7]                      [G]\r\nТешит зевак и украшает пляж.\r\n\r\nКак ни воюй, годы, увы, сильнее,\r\nКак ни верти, время свое возьмет:\r\nСгнили борта, и нет парусов на реях.\r\nИ никогда полный не дать впред.\r\n\r\n           [Am7]                [D7]\r\n   Зато любой сюда войдет за пятачок,\r\n           [Hm]                [E7]\r\n   Чтоб в пушку затолкать бычок,\r\n         [Am7]             [D7]\r\n   И в трюме посетить кафе\r\n             [Hm] [E7]\r\n   И винный зал,\r\n             [Am7]                [D7]\r\n   А также сняться на фоне морской волны\r\n         [Hm]                [E7]\r\n   С подругой, если нет жены,\r\n      [Am7]             [D7]\r\n   Одной рукой обняв ее,\r\n                     [G]\r\n   Другой обняв штурвал.\r\n\r\nБыл там и я и на толпу глазея,\r\nС болью в душе понял я вещь одну -\r\nЧтобы не стать этаким вот музеем -\r\nВ нужный момент лучше пойти ко дну.', 3, 31, 10),
(119, 11, 'Кафе "Лира" (Live)', '[Em7]           [A]         [Em7]      [A] \r\nУ дверей в заведенье народа скопленье, \r\n    [Em7]     [A]\r\nТоптанье и пар.\r\n[Em7]            [A]         [Em7]     [A]\r\nНо народа скопленье не имеет значенья -\r\n       [Em7]      [A]\r\nЗа дверями швейцар.\r\n\r\n[Em7]            [A]       [Em7]         [A]\r\nНеприступен и важен стоит он на страже \r\n    [Em7]      [A]\r\nБоевым кораблем.\r\n[Em7]            [A]        [Em7]      [A]\r\nНичего он не знает и меня пропускает \r\n          [C]       [D]         [Em] \r\nЛишь в погоне за длинным рублем, \r\n      [D]      [Em7]       [D]          [A] \r\nИ в его поведеньи говорит снисхожденье. \r\n\r\nА я сегодня один - я человек-невидимка, \r\nЯ сажусь в уголок. \r\nИ сижу, словно в ложе, и очень похоже, \r\nЧто сейчас будет третий звонок. \r\nИ мое отчужденье назовем наблюденьем. \r\n\r\nВот у стойки ребята их лица помяты, \r\nВ глазах глубина. \r\nБез сомненья ребятки испытали в достатке \r\nВеселящее действо вина. \r\nИ их поведенье назовем опьяненьем. \r\n\r\nВот за столиком дама - на даме панама, \r\nПод ней томный взгляд. \r\nНо панама упряма и клюет на панаму \r\nУже двадцать восьмой кондидат, \r\nИ ее состоянье назовем ожиданьем. \r\n\r\nВот товарищ с востока танцует жестоко, \r\nЕму пара нужна. \r\nТолько пары не видно, а танцору обидно, \r\nИ уводит его старшина. \r\nВ милицейском движеньи сквозит раздраженье. \r\n\r\n  [G]      [C]          [G] \r\nА я все верю, что где-то \r\n      [H]        [Em] \r\nБожей искрою света \r\n    [D]        [C] \r\nЗаймётся костер. \r\n [G]      [C]       [G] \r\nТолько нет интереса \r\n      [H]       [Em] \r\nИ бездарную пьесу \r\n       [C]      [D]         [Em] \r\nПродолжает тянуть режиссер. \r\n         [D]        [Em] \r\nТолько крашеный свет, \r\n[D]               [Em] \r\nТолько дым сигарет, \r\n      [D]        [Em] \r\nУ дверей в туалет, \r\n[D]     [Em] \r\nМеня нет. \r\n[D]            [Em] \r\nЯ за тысячу лет. \r\n[D]             [Em] \r\nЯ давно дал обет \r\n      [D]       [Em] \r\nНикогда не являться \r\n     [D]      [A] \r\nВ такой ситуации.', 3, 56, 11),
(120, 11, 'Родной дом (Live)', '[G]          [D]           [Am]\r\nНад нашим домом целый год мела метель,\r\n[C]                   [G]\r\nИ дом по крышу замело.\r\n          [D]             [Am]\r\nА мне сказали, что за тридевять земель\r\n[C]                    [G]\r\nВ домах и сухо и тепло.\r\n\r\nИ я узнав о том покинул отчий дом,\r\nИ я пустился в дальний путь\r\nИ я за восемь лет прошел весь белый свет -\r\nНа свете есть на что взглянуть.\r\n\r\n    [C]         [G] [C]            [G]\r\n   Но лишь потом я вспомнил дом.\r\n   [C]                 [G]      [D]       [Em]\r\n   И темной ночью и самым светлым днем\r\n   [C]        [Cm]            [G]\r\n   Так хорошо иметь свой дом.\r\n\r\nЯ видел хижины и видел я дворцы -\r\nДворец кому-то тот же дом\r\nЯ не заметил, что они счастливее, чем мы,\r\nХоть и не мне судить о том.\r\n\r\nМеня встречали, улыбались тут и там,\r\nСажали есть, давали пить\r\nА я устал скитаться по чужим домам,\r\nА свой никак не мог забыть.\r\n\r\n   В краю чужом я вспомнил дом.\r\n   И темной ночью и самым светлым днем\r\n   Так хорошо иметь свой дом.\r\n   \r\n   Помни о том - в краю чужом.\r\n   И темной ночью и самым светлым днем\r\n   Так хорошо иметь свой дом.', 4, 53, 12),
(121, 11, 'Три окна (Live)', '[Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nЯ забыл о бурях и о громе,\r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nМне теперь дороже тишина, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nИ живу я в старом-старом доме,\r\n   [Hm]            [E7]        [A] \r\nИз него выходят три окна. \r\n\r\nПервое окно выходит в поле, \r\nВ поле наших самых лучших лет, \r\nВ этом поле не бывает боли, \r\nИ любой вопрос находит свой ответ. \r\n   [Hm]            [E7]    [C#m]\r\n   Там и днем и ночью солнце светит, \r\n   [Hm]            [E7]           [F#m] \r\n   Летом и зимой цветет земля, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A] \r\n   Не взрослея, там играют дети, \r\n   [Hm]            [E7]        [A] \r\n   И один из них - наверно я. \r\n\r\nА окно второе вышло к лесу, \r\nТемный лес поднялся до небес, \r\nИ от солнца лес создал завесу, \r\nОт вопросов скрыл ответы лес. \r\n\r\n   И жизнь идет там по лесным законам,\r\n   И я пугался каждого куста, \r\n   Проходя по тропкам незнакомым, \r\n   В час, когда спускалась темнота. \r\n\r\nТретье окно выходит к океану, \r\nРовным ветром дышит океан, \r\nА за ним диковинные страны, \r\nИ никто не видел этих стран. \r\n\r\n   Словно вечность, океан огромен, \r\n   И сильна спокойствием волна, \r\n   И когда мне тесно в старом доме - \r\n   Я сажусь у третьего окна. \r\n\r\nПревратится в воду рек - Снег, \r\nСтанет облаком седым - Дым, \r\nСтанет домом твой родной Дом, \r\nИз руин воздвигнут вам Храм. \r\n\r\nДолжен кончиться любой - Бой, \r\nПобедит, сомненья нет, - Свет, \r\nЯ возьму букет цветов - Слов, \r\nИ раздам моим друзьям - Вам.', 4, 32, 13),
(122, 12, 'Кого Ты Хотел Удивить?', '[Am]\r\nТы можешь ходить, как запущенный сад\r\n                        [Em6] [Dm6#]\r\nА можешь все наголо сбрить\r\n [Dm]\r\nИ то, и другое я видел не раз\r\n        [G]           [Am]\r\nКого ты хотел удивить?\r\nТы верил в гитару, "Битлов" и цветы,\r\nМечтая весь мир возлюбить,\r\nНо все эти песни придумал не ты -\r\nКого ты хотел удивить?\r\n         [C]                 [Am]\r\n       Скажи мне, чему ты рад?\r\n         [C]                 [Am]\r\n       Постой, оглянись назад\r\n         [Dm]               [C]\r\n       Постой, оглянись назад, и ты увидишь\r\n            [F]\r\n       Как вянет листопад\r\n            [Dm6]\r\n       И вороны кружат\r\n                   [E]                 [Am]\r\n       Там, где раньше был цветущий сад.\r\n\r\nТы стал бунтарем, и дрогнула тьма,\r\nВесь мир ты хотел изменить -\r\nНо всех бунтарей ожидает тюрьма -\r\nКого ты хотел удивить?\r\nТеперь ты устал, и тебе все равно,\r\nКак жизни остаток дожить -\r\nИ тут на тебя все похожи давно,\r\nКого ты хотел удивить?', 5, 3, 1),
(123, 12, 'Сколько Лет, Сколько Зим', '[F#m]\r\nСколько лет, сколько зим я мечтал об одном,\r\n      [Ddim]\r\nЯ мечтал об одном, мой друг: \r\n[Hm7]\r\nЧтоб собрать всех друзей за одним столом\r\n[C#m7]\r\nИ увидеть, как свят наш круг.\r\n\r\n   [F#m]                      [A7]\r\n   И настал тот день, когда я решил,\r\n           [D]\r\n   Что пробил долгожданный час:\r\n   [Hm7]\r\n   Я на стол накрыл и свой дом открыл,\r\n   [C#m7]                   [F#m7] [C#7]\r\n   И пошел и позвал всех вас.\r\n\r\n      [Am7]                           [F7]\r\n      Я не верил, не знал, сколько добрых рук\r\n      [G7]\r\n      Мне готовы помочь теплом,\r\n      [F7]\r\n      И как много моих друзей и подруг\r\n      [E7]\r\n      У меня за моим столом.\r\n\r\n   Я готов был петь для них до утра,\r\n   Пусть не каждый друг с другом знаком.\r\n   Но случилась странная вещь тогда\r\n   За моим бескрайним столом:\r\n\r\nДруг на друга скосив осторожный глаз,\r\nВсе молчали в моем дому.\r\nИ потом, прощаясь, каждый из вас\r\nПодходил ко мне одному.\r\n\r\n   И последних друзей проводил мой дом,\r\n   Одиночество - праздник мой.\r\n   Почему вы друзья лишь во мне одном,\r\n   И чужие между собой?..', 5, 16, 2),
(124, 12, 'Первый Шаг', '[F#m]            [C#7]           [F#m]\r\nМне осталось сделать первый шаг.\r\n                             [C#7] \r\nМне осталось сделать первый шаг.\r\n[F#m]           [A] \r\nЕсли все как надо,\r\n   [D6]\r\nНаверно, что-то тут не так,\r\n[Hm]            [C#]     [F#m] \r\nНадо сделать первый шаг.\r\n\r\nДень вчерашний не приходит вновь.\r\nДруг вчерашний ждет вчерашних слов. \r\nЧтобы не остаться \r\nИ чтобы не попасть впросак, \r\nНадо сделать первый шаг.\r\n\r\n   [A]              [A+]\r\n   Каждый день и каждый час\r\n        [F#m]            [A7] \r\n   Нас тянет, как на дно,\r\n   [D]             [F#+]          [Hm] \r\n   Все, что было и прошло давно.\r\n   [Em]          [F#]\r\n   Не тяни прощанья,\r\n   [Em]             [F#] \r\n   Не считай до ста -\r\n   [G]              [Gm]       [C#7]\r\n   Нас заждались новые места.\r\n\r\nДень вчерашний не приходит вновь.\r\nДруг вчерашний ждет вчерашних слов. \r\nЧтобы не остаться \r\nИ чтобы не попасть впросак, \r\nНадо сделать первый шаг.\r\n\r\n   Каждый день и каждый час\r\n   Нас тянет, как на дно,\r\n   Все, что было и прошло давно.\r\n   Не тяни прощанья,\r\n   Не считай до ста -\r\n   Нас заждались новые места.\r\n\r\nМне осталось сделать первый шаг.\r\nМне осталось сделать первый шаг. \r\nЕсли все как надо, \r\nНаверно что-то тут не так, \r\nНадо сделать первый шаг...', 3, 51, 3);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(125, 12, 'Скажи, Мой Друг...', '[B]               [Cm]\r\nСкажи, мой друг, зачем мы так беспечны?\r\n[F7]           [Dm]\r\nВ потоке дней и в суматохе дел\r\n[Cm]                 [D#]\r\nНе помним мы, что век не будет вечным\r\n[F]                             [Gm] [F]\r\nИ всем путям положен свой предел.\r\n\r\nНе верю в чудеса, и это было б странным: \r\nВсю жизнь летать, всю жизнь летать, однажды воспарив.\r\nИ всё-таки всегда прощаемся нежданно,\r\nО самом главном не договорив.\r\n\r\n    [B]                [B7]\r\n   Мы не сбавляем шаг и не считаем дней,\r\n   [Gm]                     [D7]\r\n   И в бурях передряг становимся сильней.\r\n        [Gm]                            [C]\r\n   Но слышишь: бьют часы в тот самый миг, когда наверняка\r\n       [D#]                        [F]\r\n   Никто не ждёт последнего звонка...\r\n\r\nНо нет конца пути, и так светла дорога,\r\nГде день родится вновь и будут песни петь.\r\nИ тот, кто шёл за мной, пусть поспешит немного,\r\nУспев все то, чего мне не успеть.', 3, 22, 4),
(126, 12, 'Наш Остров', '[A]                       [C#m] [Cm]\r\nПусть в море каждый одинок,\r\n[Hm]                       [E]\r\nПускай не легок груз сомнений,\r\n[A]                       [C#m] [Cm]\r\nНо больше в мире нет дорог\r\n[Hm]                      [E]\r\nС такой свободой направлений.\r\n\r\n   [D]         [C#m]       [F#m]\r\n   И вечный ветер и вода,\r\n   [Hm]                      [E]\r\n   И парус тот, что ветру верен.\r\n   [A]         [C#m]         [F#m]\r\n   И вновь уходит в никуда\r\n   [Hm]        [Dm]         [E]\r\n   Вчера открытый нами берег.\r\n\r\n                     [A]\r\n      Где же наш последний дом?\r\n                     [F#m]\r\n      Кто расскажет нам о нем\r\n                    [Hm]   [D]\r\n      Хоть когда-нибудь?\r\n                [E]\r\n      И куда лежит наш путь?\r\n\r\n[A]                        [C#m] [Cm]\r\nИ в чем секрет, и чья вина,\r\n[Hm]                       [E]\r\nЧто дни прошли и стали снами?\r\n[A]       [F#m]     [C#m] [Cm]\r\nИ мы теряем имена\r\n[Hm]                         [E]\r\nТех, кто ходил в походы с нами.\r\n\r\n   И сможем ли мы когда-нибудь\r\n   Собраться вновь легко и просто\r\n   И, бросив якорь, отдохнуть,\r\n   Открыв забытый всеми остров?\r\n\r\n      Это наш последний дом.\r\n      Кто расскажет нам о нем\r\n      Хоть когда-нибудь?\r\n      И куда лежит наш путь?', 4, 43, 5),
(127, 12, 'Караван', '[Am]            [C]\r\nОт чего к чему идет\r\n         [Dm]                  [G]\r\nНочь за ночью, день за днем?\r\n      [Am]                [C]\r\nБесконечный путь вперед\r\n        [Dm]           [G]\r\nТот, которым мы идем.\r\n\r\nНи дорог, ни сил идти,\r\nНе вернуться, ни свернуть.\r\nОстается лишь пройти\r\nДо конца весь этот путь.\r\n\r\n   Караван, караван\r\n   Вне времен и вне границ.\r\n   Караван, караван -\r\n   Миллион усталых лиц.\r\n\r\nКараван уносит вдаль\r\nПамять пройденных дорог,\r\nТо, что отдано, как дань,\r\nТо, что каждый не сберег.\r\n\r\n   Караван, караван\r\n   Вне времен и вне границ.\r\n   Караван, караван -\r\n   Миллион усталых лиц.\r\n\r\nКто б не вел нас, кто б не ждал,\r\nМы дойдем когда-нибудь,\r\nСлишком тесно нас связал\r\nКараван и этот путь.\r\n\r\n   Караван, караван\r\n   Вне времен и вне границ.\r\n   Караван, караван -\r\n   Миллион усталых лиц.', 4, 52, 6),
(128, 12, 'Туман', '[Em]                     [F#m]\r\nНе вечен ветер перемен - бывает тишина,\r\n[Am7]             [Hm7]        [Em]\r\nКогда стоит ни лето, ни зима.\r\n                         [F#m]\r\nТогда, мешая ночь и день, и правду и обман,\r\n[Am7]               [Hm7]      [Em]\r\nНа целый мир спускается туман.\r\n\r\nВ тумане все не так течет, у времени особый счет:\r\nКуда угодно, только не вперед.\r\nТуман людей глотает вмиг, и шанс вернуться не велик -\r\nТуман скрывает след и глушит крик.\r\n\r\n       [D]            [Em]\r\n   Я знаю, что в туман\r\n         [D]              [Em]\r\n   Весь город, словно пьян,\r\n       [G]         [F#m]        [Hm]\r\n   Он легче поддается на обман:\r\n   [Em]                   [Hm]\r\n   Друг может стать врагом,\r\n   [Em]               [Hm]   \r\n   И не найти свой дом,\r\n   [G]                [F#m]       [H]\r\n   Когда лежит над городом туман.\r\n\r\nИ кто бежал - уже упал, кто шел - тот не туда попал.\r\nКто никогда не лгал - увы, солгал,\r\nГде ровно было - там изьян, где нет капкана - там капкан, -\r\nЧего уж ждать, когда такой туман.\r\n\r\nИ наша жизнь, как мир иной, проходит стороной.\r\nТуман у наших стен стоит стеной.\r\nИ нелегко поверить всем, что это все не насовсем,\r\nИ скоро грянет ветер перемен.\r\n\r\n   Я знаю, что в туман\r\n   Весь город, словно пьян,\r\n   Он легче поддается на обман:\r\n   Друг может стать врагом,\r\n   И не найти свой дом,\r\n   Когда лежит над городом туман.', 5, 7, 7),
(129, 12, 'Если Бы Мы Были Взрослей', '[D7]\r\n[G]\r\nЯ десять лет назад не обходил преград, \r\nБывал им только рад, \r\n             [D]\r\nДа было веселей. \r\n      [C]               [G]\r\nЯ бы мог повернуть назад, \r\n        [D7]                [G]\r\nЕсли б мы были чуть взрослей.\r\n [G]\r\nВот опять неверный ход - я очки терял, \r\nИ я не понимал, \r\n                [D]\r\nЧто можно проиграть. \r\n [C]                [G]\r\nНо одно меня спасло, \r\n          [D7]              [G]\r\nЧто в те годы я любил считать. \r\n [D]\r\nЕсли бы мы были,\r\n                      [G]\r\nЕсли бы мы были взрослей.\r\nЕсли бы мы были,\r\n[D]                     [Em]\r\nЕсли бы мы были взрослей,\r\n[C]             [G]\r\nБыли бы взрослей.\r\n [G]\r\nКак сделать новый шаг - может напрямик, \r\nА может быть в обход, \r\n                   [D]\r\nГде мягче, где теплей. \r\n        [C]                 [G]\r\nКаждый шаг я б прошел не так \r\n        [D7]                [G]\r\nЕсли б мы были чуть взрослей.\r\n [D]\r\nЕсли бы мы были,\r\n                      [G]\r\nЕсли бы мы были взрослей.\r\nЕсли бы мы были,\r\n [D]                    [Em]\r\nЕсли бы мы были взрослей,\r\n[C]             [G]\r\nБыли бы взрослей.\r\n\r\nСоло\r\n\r\n[D]\r\nЕсли бы мы были,\r\n                      [G]\r\nЕсли бы мы были взрослей.\r\nЕсли бы мы были,\r\n [D]                    [Em]\r\nЕсли бы мы были взрослей,\r\n[C]             [G]\r\nБыли бы взрослей...', 3, 50, 8),
(130, 12, 'Закрытые Двери', '[Am]             [Am/g]\r\nМы много дорог повидали на свете,\r\n     [Am/f]              [Em] \r\nМы стали сильнее, мы стали не дети.\r\n    [Am]               [Am/g] \r\nНо лето в дороге кончалось зимою,\r\n   [Am/f]             [Em] \r\nА зимы в дороге кончались стеною.\r\n   [C]      [Dm]         [G]       [C] \r\nА мы еще верим, что мы не забыты,\r\n    [Am]                   [Em]              [Am]\r\nСтучимся мы в двери, а двери надежно закрыты. \r\n\r\n     [Am]                [Am/g]\r\n   И я не пойму: от кого их закрыли?\r\n        [Am/f]                   [Em] \r\n   Нас, может быть, звали, но просто забыли,\r\n       [C]          [Dm]        [G]         [C] \r\n   И, может, нам быть понастойчивей стоит,\r\n       [Am]                [Em]                [Am] \r\n   Тогда нас услышат и двери, конечно, откроют. \r\n\r\nИ вот уже годы минутами стали, \r\nИ мы понемногу стучаться устали. \r\nИ снова зима эту землю укроет, \r\nНикто не услышит, никто не откроет. \r\nА может, стучатся сюда по-другому, \r\nА может быть, просто хозяев давно нету дома? \r\n\r\nДорога тебе не сулит возвращенья, \r\nТебе в возращенье не будет прощенья. \r\nА ты все не веришь, что мы позабыты, \r\nИ ломишься в двери, хоть руки разбиты. \r\nИ ты безоружен, ты просто не нужен, \r\nТебе остается лишь вечер и зимняя стужа...', 4, 58, 9),
(131, 12, 'Посвящение Знакомому Музыканту', '[Hm]\r\nПросто странно иногда,\r\nКак меняют нас года,\r\n       [Am]\r\nВот беда!\r\n        [Hm]\r\nЧто сказал бы ты тогда?\r\nА теперь ты говоришь:\r\n      [Am]\r\n"Ерунда!"\r\n\r\n        [Em]               [C#m]\r\n   Я искал в тебе хоть след того,\r\n        [Am]           [F#m]           [Hm] \r\n   Что нас держало вместе столько лет.\r\n        [Em]               [C#m] \r\n   Я искал в тебе хоть слабый след\r\n      [Am]          [F#m]         [Hm] [F#m] \r\n   Того, чего давно в помине нет. \r\n\r\nТы раньше денег не считал,\r\nТы всех любил, когда играл,\r\nИ отдавал. \r\nТеперь тебя не проведешь, -\r\nТы не даешь, а продаешь,\r\nИ тем живешь. \r\n\r\n   И я спокоен лишь за то,\r\n   Что сейчас не сможет обмануть тебя никто,\r\n   Ведь ты теперь всегда готов к тому,\r\n   Что лучше это сделать самому.\r\n\r\nТеперь ты знаешь, что почем \r\nИ не жалеешь ни о чем,\r\nНо где твой дом?\r\nИ если твой погас камин\r\nИ нет огня - остался дым,\r\nЧто делать с ним? \r\n\r\n   Говорят, что ты, мол, с той поры\r\n   Весьма повысил качество игры.\r\n   Только что ни говори,\r\n   А мастерством не скроешь пустоты внутри.', 3, 6, 10),
(132, 12, 'Чужие Среди Чужих', '[Em]      [Em+7]                \r\nНочь - прочь,                \r\n [Em7]                      \r\nИ вновь рассвет,             \r\n [Em6] \r\nСпасенья нет,                \r\n [Am6]                        \r\nА он не гасит свет,          \r\nКак будто лишь под лампой    \r\n[C#dim(V)]        [Cdim(IV)]     \r\nОн найдет ответ -            \r\n               [Em]\r\nСекрет его изгнанья.         \r\n                             \r\nШум дня,                     \r\nКраски дня,                  \r\nДругого дня,                 \r\nА здесь еще вчера,           \r\nИ снова ночь без сна         \r\nПод лампой до утра,          \r\nИ больше отставанье.\r\n                             \r\n   [F#]                        \r\n   Есть здесь кто-нибудь?    \r\n   [F]                 [Em]      \r\n   Мы чужие среди чужих.     \r\n   [G] [F#7] [F] [Em]                \r\n   М-м-м-м-м                 \r\n                             \r\nДень влет,                   \r\nИ больше гнет                \r\nНеспетых слов, \r\nНесказанных речей,           \r\nИ даже дом - не дом,         \r\nИ дом почти ничей -          \r\nСквозь крышу видно небо.     \r\n                             \r\nЧас бьет,                    \r\nИ все известно \r\nНаперед, \r\nИ скоро он уйдет, \r\nА там, где день, \r\nНикто о нем и не вздохнет,\r\nКак будто он и не был.\r\n\r\n   Есть здесь кто-нибудь? \r\n   Мы чужие среди чужих...', 2, 30, 11),
(133, 12, 'Ночь', '[Dm]                             [A7] [B]\r\nНочь - чёрная река длиной на века,\r\n            [A7]     [B]      [Dm]\r\nСмотри, как эта река широка:\r\n                            [A7] [B]\r\nЕсли берега принять за рассвет,\r\n          [A7]       [B]      [Gm]\r\nТо будто дальнего берега нет,\r\n        [Am]         [Gm]\r\nИ переправа непроста,\r\n           [F]           [B]\r\nИ нет ни брода, ни моста, \r\nЛишь только лодка в два весла... \r\n\r\nЯ утро берегу на том берегу,\r\nНо до него я доплыть не могу: \r\nЛодка в два весла меня бы спасла,\r\nВот только весла вода унесла,\r\nИ нас снесло к большой воде,\r\nИ нам не видно в темноте,\r\nЧто берега уже не те...', 4, 51, 12),
(134, 12, 'Рыбка в Банке', '[Am]\r\nРыбка в банке на моем окне, \r\nЭта рыбка в банке счастлива вполне. \r\n[C]                    [D]\r\nПозабыла море - свой родимый дом, \r\n[C]                      [D]\r\nИ не знает горя в банке за стеклом.\r\nКверху книзу -\r\nНедалекий путь,\r\nДаже телевизор\r\nВиден ей чуть-чуть,\r\nШторм ни разу не был -\r\nПолный штиль всегда,\r\nПрямо с неба\r\nПадает еда.\r\nМир как в рамке -\r\nТихо и тепло,\r\nОн круглый, словно банка,\r\nИ ясный как стекло.\r\nНо нежданно\r\nК ней пришла беда:\r\nКак-то в банке\r\nВысохла вода...', 2, 56, 13),
(135, 12, 'По Морю Плавать...', '[G#7] [A7]\r\nПо морю плавать - не по суше гулять,\r\nНо всех нас манит водная гладь,\r\n   [D7]               [D#m-5]               \r\nИ вот в результате дела и слова,        \r\n [A7]                                     \r\nНовое судно почти готово:               \r\n       [E7]                               \r\nТам и мачты, и ванты, и даже флаг,      \r\n          [A]                             \r\nА только судно из гавани ни на шаг.     \r\n                                        \r\nРезонно заметив, что все это странно,   \r\nРешила команда сменить капитана.\r\nСказано - сделано, прошлому - бой,\r\nИ вот у штурвала капитан другой.\r\nОн и молод, и красив, и совсем не дурак,\r\nНо только судно из гавани ни на шаг.\r\n\r\nРезонно заметив, что что-то неладно,\r\nРешил капитан, что виновата команда.\r\nНовая метла чисто метет,\r\nИ тысяча матросов получила расчет.\r\nИ новая команда поднимает флаг,\r\nА только судно из гавани ни на шаг.\r\n\r\nРезонно заметив, что что-то неверно,\r\nРешили, что судно покрашено скверно.\r\nХудожнику дали задание, он \r\nВсе перекрасил в праздничный тон,\r\nМетался, старался, устал, как ишак,\r\nНо только судно из гавани ни на шаг.\r\n\r\nПо морю плавать - не по суше гулять.\r\nСели думать над причиной опять.\r\nА было дело в одной причине:\r\nВсе забыли, что паруса нет в помине.\r\nБез паруса никак не объехать мир -\r\nПоможет или чудо, или буксир.', 1, 59, 14),
(136, 12, 'Свеча', '[Am]        [G]            [C]         [E7/B]\r\nБывают дни, когда опустишь руки, \r\n[Dm7]           [G7]              [C]     [Bm7] [Em7]\r\nИ нет ни слов, ни музыки, ни сил.\r\n[Am]          [G]                [C]      [E7/B] \r\nВ такие дни я был с собой в разлуке \r\n[Dm7]         [G7]            [C]\r\nИ никого помочь мне не просил.\r\n[Gm]           [A7]            [Dm]  [Dm/C]\r\nИ я хотел идти куда попало, \r\n[Bb]            [E7]                [Am] [Am/B] [Am/C]\r\nЗакрыть свой дом и не найти ключа.\r\n[A/C#] [Dm7]       [G7]         [C]     [A/C#] \r\n Но верил я: не все еще пропало, \r\n     [Dm7]   \r\nПока не меркнет свет,\r\n   [G7]        [C]   [A/C#]\r\nПока горит свеча.\r\n[Dm7]         [G7]          [C]      [A/C#] \r\nНо верил я: не все еще пропало,\r\n   [Dm7]\r\nПока не меркнет свет,\r\n [G7]            [C] [Em7] [Dm7]\r\nПока горит свеча.\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [G/F] [E7/B] [Am] [E7/B] [Am]\r\nИ спеть меня никто не мог заставить:\r\nМолчание - начало всех начал. \r\nНо если песней плечи мне расправить,\r\nКак трудно будет сделать так, чтоб я молчал!\r\nИ пусть сегодня дней осталось мало \r\nИ выпал снег, и кровь не горяча, \r\nЯ в сотый раз опять начну сначала, \r\nПока не меркнет свет,\r\nПока горит свеча!\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [E7] [Am] [A/C#] [Dm7] [G7] [C] [F] [B] [E7] [Am] [Am/G] [Fmaj7] [Asus2]', 3, 50, 15),
(137, 13, 'Снова Весна', '[G]              [C]\r\nМы прошли по кругу, сменив сотню вер,\r\n    [G]             [C] \r\nИ круг замкнулся опять.\r\n               [D]                    [G] \r\nКто нам скажет, во что нам верить еще?\r\n     [C]                 [D] \r\nЯ бегу так быстро, что ангел мой\r\n          [G]             [C] \r\nУже не в силах меня догнать.\r\n      [Am] \r\nИ я слышу, как он тяжело и часто\r\n [G7] \r\nДышит в мое плечо. \r\n\r\n         [C]\r\n   Это снова Весна,\r\n           [Em] \r\n   Снова время никчемных надежд.\r\n          [F]           [G]                  [Am] \r\n   Снова тихая-тихая песня над городом слез.\r\n        [C] \r\n   Отвори мне окно\r\n          [Em] \r\n   И впусти этот призрачный свет.\r\n          [Am] \r\n   Мы почти на краю.\r\n            [D]                   [G] [C]\r\n   Кто же снова надежду принес? \r\n\r\nНас давили катком, и сгребали совком, \r\nИ по книгам учили любить. \r\nНо мы верили, что у причала нас ждут корабли. \r\nМне не страшно, что каждый третий \r\nМожет случайно меня убить. \r\nЯ вот только боюсь, что впервые в жизни \r\nНе чувствую к ним любви. \r\n\r\n            [C]\r\n   Только снова Весна,\r\n           [Em]\r\n   Снова время никчемных надежд.\r\n          [F]           [G]                  [Am] \r\n   Снова тихая-тихая песня над городом слез.\r\n        [C]\r\n   Отвори мне окно\r\n          [Em] \r\n   И впусти этот призрачный свет.\r\n          [Am] \r\n   Мы почти на краю.\r\n            [D] \r\n   Кто же снова нам в сердце\r\n                       [Em]  [G] [Em] [A]\r\n   Шальную надежду принес?\r\n\r\n      [D]\r\nЭто снова Весна, \r\n        [F#m] \r\nСнова время никчемных надежд.\r\n       [G]           [A]                  [Hm] \r\nСнова тихая-тихая песня над городом слез.\r\n     [D] \r\nОтвори мне окно\r\n       [F#m] \r\nИ впусти этот призрачный свет.\r\n     [Hm] \r\nМы уже на краю.\r\n         [E] \r\nКто же снова нам в сердце\r\n                    [A] \r\nШальную надежду принес?', 3, 43, 1),
(138, 13, 'Спускаясь к Великой Реке', '[F#m]\r\nКрестики-нолики, фантики?\r\n  [G#]             [C#m] \r\nСтали теперь солдатики,\r\n  [F#]             [Hm] \r\nСтали теперь служивые,\r\n [G#]             [C#7] \r\nКаждому вышел срок.\r\n   [F#m] \r\nС вечера спорили-ссорились,\r\n[G#]            [C#m] \r\nА поутру построились,\r\n[F#]           [Hm] \r\nА поутру прицелились,\r\n [G#]                [C#7] \r\nКаждый нажал на курок. \r\n\r\n        [F#m]       [C#]      [D]\r\n   Спускаясь к великой реке,\r\n        [A]       [D]       [A]        [C#7] \r\n   Мы все оставляем следы на песке.\r\n      [F#m]        [C#]         [D]\r\n   И лодка скользит в темноте.\r\n     [A]      [D]        [A]       [C#7] \r\n   А нам остаются круги на воде. \r\n\r\nСабельки, пулечки, пушечки, \r\nВыбритые макушечки. \r\nЦепкие лапы Родины \r\nДа письмецо семье. \r\nХолмики, крестики-нолики, \r\nГде вы теперь соколики? \r\nГде вы теперь служивые, \r\nСпите в какой земле? \r\n\r\n   Спускаясь к великой реке, \r\n   Мы все оставляем следы на песке. \r\n   И лодка скользит в темноте, \r\n   А нам остаются круги на воде.\r\n   \r\n        [G#m]       [D#]      [E]\r\n   Спускаясь к великой реке,\r\n        [H]       [E]       [H]        [D#7] \r\n   Мы все оставляем следы на песке.\r\n      [G#m]        [D#]         [E]\r\n   И лодка скользит в темноте,\r\n      [H]      [E]        [H]       [D#7] \r\n   А нам остаются круги на воде.', 3, 38, 2),
(139, 13, 'Пусть Она Станет Небом', '[G]       [Hm7]       [Am7]\r\nПусть она станет небом.\r\n[G]       [Hm7]      [Em]\r\nНебо скроет облака,\r\n[C]      [Em+7]        [Cm]\r\nПосмотри, как он уходит в облака.\r\n       [G7]       [A7]  [D7]      [G] \r\nПосмотри, как его ждет это небо.\r\n       [A7]             [D7]    [G7] \r\nПосмотри, как его ждет это небо.\r\n\r\nПусть она станет морем. \r\nПусть его закрыл туман, \r\nПосмотри, как он проходит сквозь туман, \r\nПосмотри, как его ждет это море. \r\nПосмотри, как его ждет это море. \r\n\r\n   [E7]                       [Am7]\r\n   Там, где в небо бьет прибой,\r\n           [D]                    [G]\r\n   Только шелест звезд над головой, \r\n   [E7]                     [Am7]\r\n   Там, где вечность и покой,\r\n          [D#] \r\n   Мир исполнен водой,\r\n          [E7] \r\n   Первозданной водой,\r\n         [A7]                  [D7] \r\n   Мы однажды войдем с тобой\r\n          [Cm7] [G7]\r\n   В эту воду.\r\n\r\n   [E7]                       [Am7]\r\n   Там, где в небо бьет прибой,\r\n           [D]                    [G] \r\n   Только шелест звезд над головой,\r\n   [E7]                     [Am7] \r\n   Там, где вечность и покой,\r\n          [D#] \r\n   Мир исполнен водой,\r\n          [E7] \r\n   Первозданной водой,\r\n         [A7]                  [D7] \r\n   Мы однажды войдем с тобой\r\n          [G7]\r\n   В эту воду.\r\n         [A7]                  [D7]\r\n   Мы однажды войдем с тобой\r\n          [G7]\r\n   В эту воду.\r\n         [A7]               [D7]\r\n   Мы однажды войдем с тобой\r\n          [Cm7]\r\n   В эту воду.', 3, 43, 3),
(140, 13, 'Тихие Песни', '[G]      [D#]     [Em]      [H7]     [G7] [C] [C/h]\r\nКаждое утро она открывает окно.\r\n [Am]     [Am/g]    [D7]\r\nВетер уносит печаль.\r\n [Am]        [C]     [D]\r\nВетер всегда одинок.\r\n[G]        [D#]        [Em]       [H7]         [G7] [C] [C/h]\r\nУтро приходит, и что-то случиться должно.\r\n [Am]     [Am/g]     [D]\r\nТихое слово "прощай".\r\n[Am]      [C]        [D7]\r\nЭхом небесных дорог.\r\n\r\n    [G]             [C]       [Hm]\r\n   Там, где в полнеба восход,\r\n    [Am]   [D7] \r\n   Там, там.\r\n     [G]        [F]      [Em]\r\n   Кто-то неслышно поет,\r\n    Am        D7\r\n   Нам, всем тем, кто не слышит.\r\n    [F]    [C]         [G]\r\n   Там, там тихие песни.\r\n    [F]    [C]         [G]\r\n   Там, там тихие песни.\r\n\r\nВетер разгладит песок у великой реки.\r\nВетер уносит печаль.\r\nВетер всегда одинок.\r\nСколько надежды в последнем пожатьи руки!\r\nТихое слово "прощай".\r\nЭхом небесных дорог.\r\n\r\n   Там, где в полнеба восход, \r\n   Там, там.\r\n   Кто-то неслышно поет,\r\n   Нам, всем тем, кто не слышит.\r\n   Там, там тихие песни...\r\n   Там, там тихие песни...\r\n\r\n       [G]      [D#]    [Em]        [H7]       [G7]\r\n      Тихая, тихая песня над городом слез...', 4, 31, 4),
(141, 13, 'Картонные Крылья Любви', '[Am7]\r\nОпять холода.\r\n   [H7] \r\nЗима на года,\r\n[Dm]         [E7]     [Am] \r\nИ ангелы к югу летят.\r\n     [Am7] \r\nНам завтра в полет.\r\n   [H7] \r\nТебе на восход,\r\n    [Dm]        [E7]         [F]   [E7] \r\nА мне, по всему, - на закат.\r\n\r\n            [Dm]\r\n   Но я сорвусь с земли, словно пес с цепи,\r\n           [Am] \r\n   И поднимусь к облакам.\r\n           [B] \r\n   И я войду в облака.\r\n                                       [E7] \r\n   Моя страна далека, но я найду тебя там.\r\n   [Dm7]            [F]  [E7] \r\n   О, картонные крылья -\r\n                  [Am] \r\n   Это крылья любви. \r\n\r\nВода и весло, \r\nСвобода и зло. \r\nЧто делать и кто виноват? \r\nВсе это пройдет. \r\nЛети на восход, \r\nА я, так и быть, на закат.\r\n\r\n   Но я сорвусь с земли, словно пес с цепи, \r\n   И поднимусь к облакам. \r\n   И я войду в облака. \r\n   Моя страна далека, но я найду тебя там. \r\n   О, картонные крылья...\r\n\r\n   Но я сорвусь с земли, словно пес с цепи, \r\n   И поднимусь к облакам. \r\n   И я войду в облака. \r\n   Моя страна далека, но я найду тебя там. \r\n   О, картонные крылья - \r\n   Это крылья любви.', 4, 29, 5),
(142, 13, 'Я Дам Тебе Знать', '[E]  [H7]                   [E]  [E7]\r\nКогда солдаты придут с победой домой,\r\n           [A]   [Am]              [E]  [C#]\r\nКогда мы сможем гордиться страной.\r\n       [F#7]            [C7]       [E]          [C#7]\r\nКогда летним днем закружит снег в моем окне,\r\n             [F#7] [H7]                  [E] [H7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n\r\nКогда в столице не станет уличных дам,\r\nНе будут бить ни по лицам, ни по паспортам,\r\nКогда для всех вождей мавзолей поставят на луне,\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n\r\n           [E]        [H7]                [E]  [E7]\r\nКогда морской прибой превратится в отбой,\r\n           [A]              [Am]                [E]  [C#]\r\nКогда за мной и тобой придет архангел с трубой,\r\n       [F#7]           [C7]        [E]              [C#7]\r\nКогда наша жизнь привидится мне в кошмарном сне,\r\n             [F#7] [H7]                  [E] [C#7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n             [F#7] [H7]                  [E] [C#7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n             [F#7] [H7]                  [E]\r\nЯ дам тебе знать и ты вернешься ко мне.', 2, 22, 6),
(143, 13, 'Это Любовь, Детка', '[F]        [B7]\r\nЯ знаю, отчего ты зла,\r\n   [F]   [B7]\r\nЯ вижу, с чем ты вошла,\r\n   [F]             [A7]      [D]\r\nЯ помню каждый твой предлог,\r\n           [C#]                     [C7]\r\nСубботний вечер так удобен для склок.\r\n\r\n       [F]        [B7]\r\n   Я знаю, почему ты здесь,\r\n      [F]    [B7]\r\n   Я вижу, я - это все, что есть.\r\n      [F]             [A7]   [D]\r\n   Я помню, в чем моя вина,\r\n              [G7]            [C7]      [F]\r\n   Субботний вечер - и ты снова пьяна.\r\n\r\n             [B]               [F]\r\n      Это любовь, но не ко мне, поверь,\r\n             [B]            [A7]\r\n      Это любовь, не вышибай грудью дверь,\r\n             [D7]\r\n      Это любовь, детка,\r\n                   [B7]   [C7]\r\n      Ты просто себя готовь,\r\n                            [F]   [B7] [H7] [C7]\r\n      Вернется вновь эта любовь.\r\n\r\nЯ знаю, кто твой лучший друг,\r\nЯ вижу, кто входит в близкий круг,\r\nЯ помню, кто твой первый враг.\r\nВ субботний вечер слишком вкусен коньяк.\r\n\r\n   Я знаю, как тебя найти,\r\n   Я вижу, ты уже вся в пути,\r\n   Я помню про один звонок,\r\n   И я в субботний вечер не одинок.\r\n\r\n      Это любовь, но не ко мне, поверь,\r\n      Это любовь, не вышибай грудью дверь,\r\n      Это любовь, детка,\r\n      Ты просто себя готовь,\r\n      Вернется вновь эта любовь. \r\n\r\n      Это любовь, но не ко мне, поверь,\r\n      Это любовь, не вышибай грудью дверь,\r\n      Это любовь, детка,\r\n      Ты просто себя готовь,\r\n      Вернется вновь... \r\n\r\n       [B]   [F]\r\nЭто любовь...\r\n       [B]   [A7]\r\nЭто любовь...\r\n       [D7]\r\nЭто любовь, детка,\r\n             [B7]   [C7]\r\nТы просто себя готовь,\r\n                      [F]\r\nВернется вновь эта любовь.', 4, 42, 7),
(144, 13, 'Ветер Всегда Одинок', '[D]             [G] [D] [A]\r\nОн твердил ее имя.\r\n[G]            [A]  [G] [A]\r\nОн читал ее мысли.\r\n[D]                  [G] [A]  [D]\r\nОн бродил за ней следом.\r\n[G]              [A]    [Em7]\r\nОн глядел в ее окна.\r\n\r\n                    [A]\r\n   Утренний ветер уносит печаль.\r\n    [Em]              [A]   [D]\r\n   Ветер всегда одинок.\r\n\r\nОн объедет полмира,\r\nОн найдет ее город,\r\nОн войдет в ее двери,\r\nОн ее не узнает.\r\n\r\n   Утренний ветер уносит печаль.\r\n   Ветер всегда одинок.\r\n\r\n       [D]    [Em] [D]        [G]           [A]\r\n      Дай мне сил быть легким, как ветер.\r\n       [D]    [Em] [D]        [G]           [A]\r\n      Дай мне сил быть легким, как ветер.\r\n\r\n   Утренний ветер уносит печаль.\r\n   Ветер всегда одинок.\r\n\r\n      Дай мне сил быть легким, как ветер.\r\n      Дай мне сил быть легким, как ветер.', 3, 11, 8),
(145, 13, 'Ах, Графиня', '[G]                            [D]\r\nАх, графиня, за что Вам судьбина жестокая?\r\n                  [D7]                 [G]\r\nВам, увы, не к лицу серый будничный фон.\r\n              [E7]                    [Am]\r\nВы стоите у входа в "Найтфлайт" одинокая.\r\n       [G]        [D]       [D7]      [G]\r\nВас туда не пускает бездушный ОМОН.\r\n\r\nКапитан посылает Вас к чертовой матери.\r\nОн манерами дик, он плюет Вам в лицо.\r\nАх, графиня, уедемте лучше на катере\r\nИ вдвоем обогнем Золотое кольцо.\r\n\r\nЯ, пардон, не пойму, чем Вас манит Италия.\r\nЛучше каждый вояж начинать с головы.\r\nАх, графиня, уедемте лучше в Татарию.\r\nУ меня пол-Казани знакомой братвы.\r\n\r\nНа Кавказе вот-вот прекратят безобразия,\r\nПоразгонят солдат, понакроют столов,\r\nАх, графиня, уедемте лучше в Абхазию\r\nПредаваться любви среди горных орлов.\r\n\r\nЯ готов. Варианты здесь могут быть разные.\r\nИ к тому же, любить - не поленья колоть.\r\nНо, мадам, Ваши цены, увы, несуразные.\r\nРасстаемся. Прощаюсь. Храни Вас Господь.', 2, 19, 9),
(146, 13, 'Старые Песни', '[A]            [F#m]\r\nСтарые песни, хипповые сны,\r\n[A]            [C#7]             [F#m]\r\nНезаживший след битлов, портвейна и весны.\r\n          [H]                [A]   [H7] [F#m]\r\nВсе, что мы любили жило в той поре,\r\n         [H]            [D]                [A]\r\nТам где мы застыли, словно мухи в янтаре.\r\n \r\n   [A]\r\n   Старые песни - другое кино.\r\n                   [C#7]            [F#m]\r\n   С каждым годом лучше, словно старое вино.\r\n          [H]                 [A]   [H7] [F#m]\r\n   И эти песни дышат духом тех ночей,\r\n            [H]              [D]                 [A]\r\n   И если кто услышит - вспомнит все до мелочей.\r\n\r\n      [D]      [E]          [A]\r\n      Распусти свои клеши,\r\n      [D]    [E]                [A]\r\n      Наливай в стакан "Кавказ".\r\n      [D]        [E]              [A]       [H7]    [F#m]\r\n      В этих старых песнях - часть твоей души.\r\n               [H]\r\n      В этих трех аккордах,\r\n               [D]\r\n      В этих старых аккордах,\r\n           [Hm]  [C#m] [D]                   [A]\r\n      Но они звучат, словно, в первый раз.\r\n  \r\nСтарые песни - время не одолеть.\r\nЯ уверен, наши дети их не будут петь.\r\nВсе, что мы любили, остается тут,\r\nВместе с нами жили, вместе с нами и умрут.\r\n\r\n      Распусти свои клеши,\r\n      Наливай в стакан "Кавказ".\r\n      В этих старых песнях - часть твоей души.\r\n      В этих трех аккордах,\r\n      В этих старых аккордах,\r\n      Но они звучат, словно в первый раз.', 4, 48, 10),
(147, 13, 'Уходя - Уходи', '[D7]          [G] [D]                [G]\r\nУходя - уходи, не жалей и не жди,\r\n[D]               [G]               [Em] \r\nЧто у нас впереди? Ответ на вопрос\r\n          [A7]     [D] \r\nВетер принес и унес. \r\n\r\n   [G]            [C]\r\n   Забудь про всех, кто должен\r\n      [G]               [Em] \r\n   Успеть раздать долги,\r\n   [C]              [Hm] \r\n   И встань на пороге дома,\r\n         [Am7]        [D7] \r\n   И скажи себе "Беги".\r\n   [G]          [C] \r\n   Пускай поплачут дамы\r\n           [G]             [Em] \r\n   И вздохнет свободно враг,\r\n   [C]                 [Hm] \r\n   Ну а те, кто и вправду дорог\r\n     [Am7]         [D7] \r\n   Все поймут и так. \r\n\r\nУходя - уходи, не жалей и не жди, \r\nЧто у нас впереди? Ответ на вопрос \r\nВетер принес и унес. \r\n\r\n   Порвать со всем, что любишь - \r\n   Это нелегкий труд. \r\n   Все, что держит тебя как якорь - \r\n   Все оставить тут. \r\n   Отдать гитару в руку - \r\n   Пусть споет другой. \r\n   Перебрать любимые книги - \r\n   И не выбрать ни одной. \r\n\r\nУходя - уходи, не жалей и не жди, \r\nЧто у нас впереди? Ответ на вопрос \r\nВетер принес и унес...', 2, 49, 11),
(148, 13, 'Финал', '[B+]                [G] [B+] [G]\r\nЯ весь свет прошагал,\r\n       [B+]       [Hm]  [Bm] [Am]\r\nНо, куда ни пойдешь,\r\n        [D]       [Em]\r\nМир достаточно мал\r\n[D#7]             [D7]\r\nИ не слишком хорош.\r\n           [B+]        [G] [B+] [G]\r\nСколь ни плыть кораблю,\r\n        [B+]       [Hm] [Bm] [Am]\r\nНо в любой стороне\r\n        [D]           [Em]\r\nБабы склонны к вранью,\r\n[D#7]   [D7]          [Cm] [G] [G7]\r\nА мужчины - к войне.\r\n\r\n        [C]\r\n   И известен весь путь,\r\n        [B]\r\n   Никуда не свернуть,\r\n         [E7]\r\n   Не укрыться на дне,\r\n         [Am]\r\n   Не уйти в облака.\r\n                        [D7]\r\n   Что бежать, что ползти,\r\n          [G]       [Em]\r\n   Все одно по пути,\r\n           [Am]        [D7]\r\n   От звонка до звонка.\r\n            [Hm]      [E7]\r\n   И лишь чья-то рука\r\n          [Am]     [D7]     [Cm]  [B+]\r\n   Заставляет порою дрожать\r\n                    [G]\r\n   Наши картонные крылья.\r\n\r\nРаз-два...\r\nВеселее, товарищи, не отвлекайтесь. Тяните руки, шире шаг...\r\nПять-шесть...\r\nВместе. И закончили упражнение...\r\n\r\n   И известен весь путь,\r\n   Никуда не свернуть,\r\n   Не укрыться на дне,\r\n   Не уйти в облака.\r\n   Что бежать, что ползти,\r\n   Все одно по пути,\r\n   От звонка до звонка.\r\n   И лишь чья-то рука\r\n   Затавляет порою дрожать\r\n   Наши картонные крылья.\r\n\r\n[Em] [Am] [D7]\r\n [G]     [Em]       [Am] [D7]\r\nКартонные крылья...\r\n\r\n     [G]     [Em]       [Am] [D7]\r\nТак и будем вспоминать свое имя.\r\n   [G]     [Em]       [Am] [D7]\r\nТак и будем воевать со своими.\r\n  [G]     [Em]       [Am] [D7]\r\nТак и будем все валить на евреев.\r\n     [G]     [Em]       [Am] [D7]\r\nИ страной руководить, не умея.\r\n       [G]     [Em]       [Am] [D7]\r\nТак и будем потреблять политуру.\r\n       [G]     [Em]       [Am] [D7]\r\nБудем в споре уважать пулю дуру,\r\n [G]     [Em]       [Am] [D7]\r\nИ смотреть во все глаза, и не видеть,\r\n[G]     [Em]       [Am] [D7]\r\nИ за это белый свет ненавидеть.\r\n[G]     [Em]       [Am] [D7]\r\nКартонные крылья,\r\n[G]     [Em]       [Am] [D7]\r\nКартонные крылья -\r\n[G]     [Em]       [Am] [D7]\r\nЭто крылья любви.', 3, 55, 12),
(149, 14, 'Поворот', '[A]                      [F#]             [F#7]\r\nМы себе давали слово - не сходить с пути прямого\r\n [Hm]              [A]      [E]\r\nНо, так уж суждено! м-м-м...\r\n[A]                        [F#]         [F#7]\r\nИ уж если откровенно - всех пугают перемены,\r\n [Hm]                [A]      [E]\r\nНо, тут уж все равно, м-м-м...\r\n\r\n    [Hm]             [E]\r\n   Вот, новый поворот\r\n              [C#m]               [F#7]\r\n   И мотор ревет, что он нам несет\r\n                   [Hm]             [Dm]\r\n   Пропасть или взлет, омут или брод\r\n               [A]                  [F#7]\r\n   Ты не разберешь, пока не повернешь...\r\n    [Hm]             [E]\r\n   Вот, новый поворот\r\n              [C#m]               [F#7]\r\n   И мотор ревет, что он нам несет\r\n                   [Hm]             [Dm]\r\n   Пропасть или взлет, омут или брод\r\n               [A]                  [E]\r\n   Ты не разберешь, пока не повернешь...\r\n\r\nИ пугаться нет причины - если вы еще мужчины,\r\nВы кое в чем сильны...\r\nВыезжайте за ворота, и не бойтесь поворота,\r\nПусть добрым будет путь.\r\n\r\n   Вот, новый поворот\r\n   И мотор ревет, что он нам несет\r\n   Пропасть или взлет, омут или брод\r\n   Ты не разберешь, пока не повернешь...\r\n   Вот, новый поворот\r\n   И мотор ревет, что он нам несет\r\n   Пропасть или взлет, омут или брод\r\n   Ты не разберешь, пока не повернешь...', 3, 40, 1),
(150, 14, 'Наш дом', '[G]\r\nГоды летят стрелою,\r\n  [Hm]\r\nСкоро и мы с тобою\r\n [G7]       [E7]       [Am] [D7]\r\nРазом из города уйдем.\r\n  [G]\r\nГде-то в лесу дремучем\r\n[Hm]\r\nИли на горной круче,\r\n [G7]     [E7]          [Am] [D7]\r\nСами себе построим дом.\r\n\r\n    [C]      [D]     [G]       [E7]\r\n   Там вокруг такая тишина,\r\n   [Am]     [D]              [G]  [E7]\r\n   Что вовек не снилась нам,\r\n   [Am]   [D]         [G]              [E7]\r\n   И за этой тишиной, как за стеной,\r\n   [C]       [D]             [G]\r\n   Хватит места нам с тобой.\r\n\r\nДвери покрепче справим,\r\nРядом на цепь посадим\r\nВосемь больших голодных псов.\r\nЧтобы они не спали,\r\nК дому не подпускали\r\nГоре, врагов и дураков.\r\n\r\n   Там вокруг такая тишина,\r\n   Что вовек не снилась нам,\r\n   И за этой тишиной, как за стеной,\r\n   Хватит места нам с тобой.\r\n\r\nРядом с парадной дверью\r\nНадо вкопать скамейку,\r\nА перед ней тенистый пруд.\r\nЧтобы, присев однажды,\r\nСмог бы подумать каждый,\r\nНужен ли он кому-то тут?\r\n\r\n   Там вокруг такая тишина,\r\n   Что вовек не снилась нам,\r\n   И за этой тишиной, как за стеной,\r\n   Хватит места нам с тобой.', 3, 36, 2),
(151, 14, 'Ты или я', '[Hm]         [D]       [Ddim]      [F#7]\r\nВсе очень просто. Сказки - обман.\r\n[Hm]          [D]      [Ddim]       [F#7]\r\nСолнечный остров скрылся в туман.\r\n[Em7]       [D]      [Em7]       [D]\r\nЗамков воздушных не носит земля.\r\n[Em]      [Gm]      [Hm]   [F#]\r\nКто-то ошибся - ты или я\r\n\r\nВсе очень просто - нет гор золотых. \r\nПадают звезды в руки других. \r\nНет райской птицы среди воронья.\r\n                        [Hm] [F#] [G]\r\nКто-то ошибся - ты или я \r\n\r\n[Cm]\r\nЛишь только весною тают снега.\r\nИ даже у моря есть берега.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.\r\n\r\nВсе очень просто -\r\nВ сказке обман.\r\nСолнечный остров\r\nСкрылся в туман.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.', 4, 25, 3),
(152, 14, 'Флаг над замком', '[D D/c#]        [D/c]          [D/h] [B]\r\nКак легко решить, что ты слаб,\r\n[A7]             [D]\r\nЧтобы мир изменить,\r\n[D/c#]    [D/c]    [D/h]          [B]\r\nОпустить над крепостью флаг\r\n[A7]           [Hm]  [F#m]\r\nИ ворота открыть.\r\n\r\n   [G]         [C]     [G]            [C*]\r\n   Пусть толпа войдет в город твой,\r\n   [A7]               [Dm] [B]\r\n   Пусть цветы оборвет.\r\n         [C] \r\n   И тебя в суматохе людской\r\n   [A7]               [D] \r\n   Там никто не найдет. \r\n\r\n       [D/c#]                 [D/c]       [D/h] [B]\r\n      Как легко знать, что ты в стороне,\r\n      [A7]              [D]\r\n      Что решаешь не ты.\r\n       [D/c#]       [D/c]              [D/h] [B]\r\n      Пусть другие побеждают в войне\r\n      [A7]            [D] [D7]\r\n      И сжигают мосты.\r\n\r\n         [G]             [Em]\r\n         Полпути позади и немного осталось, \r\n         [Hm]                     [H7]\r\n         И себя обмануть будет легче всего. \r\n         [Em]    [Em/d]       [Gdim]\r\n         От ненужных побед остается усталость,\r\n         [A7]                                 [Dm7] [G] [Dm] [G7]\r\n         Если завтрашний день не сулит ничего. \r\n\r\nИ как трудно стерпеть и сберечь все цветы,\r\nИ сквозь холод и мрак \r\nПоднимать на мачте мечты\r\nСвой единственный флаг.', 2, 52, 4),
(153, 14, 'Марионетки', '[G] \r\nЛица стёрты, краски тусклы,\r\n[Em] \r\nТо ли люди, то ли куклы,\r\n[C] \r\nВзглядa похож на взгляд,\r\n          [G] \r\nА день на день.\r\n\r\n[C]         [D] \r\nЯ устал и, отдыхая,\r\n[G]              [E7] \r\nВ балаган вас приглашаю\r\n[Am]              [D]         [G] \r\nГде куклы так похожи на людей\r\n\r\nАрлекины и пираты,\r\nЦиркачи и акробаты,\r\nИ злодей, чей вид внушает страх,\r\nВолк и заяц, тигры в клетке -\r\nВсе они марионетки\r\nВ ловких и натруженных руках.\r\n\r\nКукол дергают за нитки, \r\nНа лице у них улыбки, \r\nИ играет клоун на трубе, \r\nИ в процессе представленья \r\nСоздается впечатленье, \r\nЧто куклы пляшут сами по себе. \r\n\r\nАх, до чего порой обидно, \r\nЧто хозяина не видно - \r\nВверх и в темноту уходит нить. \r\nА куклы так ему послушны, \r\nИ мы верим простодушно \r\nВ то, что куклы могут говорить. \r\n\r\nНо вот хозяин гасит свечи -\r\nКончен бал, и кончен вечер,\r\nЗасияет месяц в облаках.\r\nКукол снимут с нитки длинной,\r\nИ, засыпав нафталином,\r\nВ виде тряпок сложат в сундуках.', 4, 14, 5),
(154, 14, 'Старый корабль', '[G]                       [Am] [Am+7] [Am7] [Am+7]\r\nНа берегу так оживленно людно,\r\n[D7]                       [G]  [D#7] [D7]\r\nА у воды высится, как мираж,\r\n  [G]                               [Am] [Am+7] [Am7] [Am+7]\r\nДревний корабль - грозное чье-то судно,\r\n [D7]                      [G]\r\nТешит зевак и украшает пляж.\r\n\r\nКак ни воюй, годы, увы, сильнее,\r\nКак ни верти, время свое возьмет:\r\nСгнили борта, и нет парусов на реях.\r\nИ никогда полный не дать впред.\r\n\r\n           [Am7]                [D7]\r\n   Зато любой сюда войдет за пятачок,\r\n           [Hm]                [E7]\r\n   Чтоб в пушку затолкать бычок,\r\n         [Am7]             [D7]\r\n   И в трюме посетить кафе\r\n             [Hm] [E7]\r\n   И винный зал,\r\n             [Am7]                [D7]\r\n   А также сняться на фоне морской волны\r\n         [Hm]                [E7]\r\n   С подругой, если нет жены,\r\n      [Am7]             [D7]\r\n   Одной рукой обняв ее,\r\n                     [G]\r\n   Другой обняв штурвал.\r\n\r\nБыл там и я и на толпу глазея,\r\nС болью в душе понял я вещь одну -\r\nЧтобы не стать этаким вот музеем -\r\nВ нужный момент лучше пойти ко дну.', 3, 16, 6),
(155, 14, 'Родной дом', '[G]          [D]           [Am]\r\nНад нашим домом целый год мела метель,\r\n[C]                   [G]\r\nИ дом по крышу замело.\r\n          [D]             [Am]\r\nА мне сказали, что за тридевять земель\r\n[C]                    [G]\r\nВ домах и сухо и тепло.\r\n\r\nИ я узнав о том покинул отчий дом,\r\nИ я пустился в дальний путь\r\nИ я за восемь лет прошел весь белый свет -\r\nНа свете есть на что взглянуть.\r\n\r\n    [C]         [G] [C]            [G]\r\n   Но лишь потом я вспомнил дом.\r\n   [C]                 [G]      [D]       [Em]\r\n   И темной ночью и самым светлым днем\r\n   [C]        [Cm]            [G]\r\n   Так хорошо иметь свой дом.\r\n\r\nЯ видел хижины и видел я дворцы -\r\nДворец кому-то тот же дом\r\nЯ не заметил, что они счастливее, чем мы,\r\nХоть и не мне судить о том.\r\n\r\nМеня встречали, улыбались тут и там,\r\nСажали есть, давали пить\r\nА я устал скитаться по чужим домам,\r\nА свой никак не мог забыть.\r\n\r\n   В краю чужом я вспомнил дом.\r\n   И темной ночью и самым светлым днем\r\n   Так хорошо иметь свой дом.\r\n   \r\n   Помни о том - в краю чужом.\r\n   И темной ночью и самым светлым днем\r\n   Так хорошо иметь свой дом.', 4, 29, 7),
(156, 14, 'Скачки', '[A]                          [E]\r\nСнова старт, он взят и нет пути назад,\r\n       [Hm]                      [A]   [E]\r\nИ по кругу кони мчат, почти летят.\r\n      [A]                     [E]\r\nВот опять я опоздал на поворот:\r\n       [Hm]                       [D]  [E]\r\nПодо мною конь чужой и конь не тот.\r\n\r\nОттого-то в скачках наших буйных дней\r\nСтавят все не на людей, а на коней.\r\nОтчего же в этот час, тяжелый час,\r\nНаши кони не всегда находят нас?\r\n\r\n                   [A]\r\n   А всё могло бы быть совсем не так,\r\n                [F#m]\r\n   Если только сам себе не враг,\r\n         [D]         [E]          [A]  [E]\r\n   И не нужно никому чужих саней.\r\n               [A]\r\n   Это был бы сон, волшебный сон,\r\n                   [F#m]\r\n   Каждый был бы просто чемпион,\r\n         [D]          [E]           [A]  [E]\r\n   Если мог бы выбирать себе коней.\r\n\r\nМне всегда во все года с конём везло,\r\nНо везенье непростое ремесло.\r\nИ когда пройдет удача стороной -\r\nНа моём коне окажется другой.\r\n\r\n   А всё могло бы быть совсем не так,\r\n   Если только сам себе не враг,\r\n   И не нужно никому чужих саней.\r\n   Это был бы сон, волшебный сон,\r\n   Каждый был бы просто чемпион,\r\n   Если мог бы выбирать себе коней.', 3, 2, 8),
(157, 14, 'Самая тихая песня', '[G]\r\nЕсть на свете вещь,\r\n   [C] \r\nКоторую никак\r\n             [G]    [C] [G]\r\nЯ не могу понять:\r\n [C]              [G]\r\nЧем у человека меньше слов,\r\n      [C]                 [G]\r\nТем громче будет он кричать.\r\n [H7]          [Em] \r\nБудет он кричать. \r\n\r\n[C]\r\nЕсли человеку\r\n [G] \r\nБудет, что сказать,\r\n[C]               [G] \r\nОн лучше промолчит.\r\n[C] \r\nИ лишь только тот,\r\n      [G]         [Em]\r\nКому нечего сказать,\r\n  [C]             [G] \r\nГромче всех кричит,\r\n     [H7]            [Em]  [C] [D] [G] \r\nОн громче всех кричит.\r\n \r\n  [C]           [G]\r\nСтал бы ярче солнца круг\r\n[C]            [G] \r\nИ улыбнулся мир,\r\n[C] \r\nЕсли б друг у друга\r\n [G]             [Em] \r\nМы спросили вдруг:\r\n    [C]             [G] \r\n«Зачем мы так кричим?\r\n      [H7]            [Em] \r\nНу зачем мы так кричим?»\r\n\r\n   [C]             [G]\r\nВ песнях никогда я не поучал,\r\n    [C]           [G] \r\nЯ просто очень рад,\r\n    [C] \r\nЧто я сыграл Вам песню,\r\n     [G]           [Em] \r\nВ которой не кричал,\r\n   [Am]   [D7]   [G] \r\nА тихо-тихо пел.', 1, 6, 9),
(158, 15, 'На Заднем Дворе', '[G]              [G/f]             [G/e] [C]\r\nНа заднем дворе ребята играют в чижа,\r\n   [G]               [G/f]\r\nИ ветер весенний идет на покой,\r\n   [G/e]               [C]                 [F9]       \r\nИ тихо поет в первозданной листве тополей,      \r\n   [G]                [G/f] [G/e] [C]                   \r\nИ мамы зовут нас домой.                         \r\n                                                \r\n   [G]                  [G/f]                       \r\nРебята постарше со взрослой шпаной              \r\n       [G/e]             [C]                    [F9]  \r\nНа столе забивают "козла" под душистый портвейн,\r\n    [G]                [G/f]              [G/e] [C]     \r\nИ ссадина, что на коленке, почти зажила,        \r\n   [G]              [G/f]                           \r\nИ вечная Пьеха в доме напротив                  \r\n   [G/e]                  [C]                [F9]     \r\nКому-то поет, что есть город тихий, как сон,    \r\n                                                \r\n  [Hm]                [Hm/a]                        \r\nИ этот волшебный закат \r\n                [G]                               \r\nЦвета вишни неслышно                            \r\n                [A]                               \r\nНакрыл тесный дворик                            \r\n               [G]\r\nПрозрачным крылом,                              \r\n     [A]                   [G]                [A]     \r\nИ в форточку мамы все строже зовут нас домой,   \r\n              [Em]                                \r\nИ наверно, пора.                                \r\n                                                \r\n   [G]                  [G/f]\r\nИ завтра опять будет вечное лето                \r\n   [G/e]                                          \r\nИ день, полный света,                           \r\n   [C]               [F9]                           \r\nИ мы никогда ни умрем...\r\n                                                \r\n[Gsus2]    [F6-5sus2]  [Em7-5] [Csus2]                   \r\nКогда погасят   свет...                         \r\n[Gsus2]    [F6-5sus2]  [Em7-5] [Csus2]                  \r\nКогда меня больше нет...\r\n\r\n[G]\r\nКогда погасят свет.', 2, 43, 1),
(159, 15, 'Старая Дорога', '[A]                   [Amaj7]              [Dsus2]\r\nДавай возвратимся с тобой нашей старой дорогой.\r\n     [A]                [Amaj7]              [Dsus2]\r\nПройдем от порога до солнца, потратим денек.\r\n    [Hm]                                      [D]\r\nПосмотрим, кто ходит теперь нашей старой дорогой,\r\n    [Hm]                               [F#m]\r\nХранит ли дорожная пыль следы наших ног.\r\n\r\n                      [A]                [Amaj7]             [Dsus2]\r\n   Ты помнишь, как дорога петляла, но мы не ошиблись не разу.\r\n        [A]                    [Amaj7]             [Dsus2]\r\n   Ни дней, ни подруг не считая, под хлеб и вино.\r\n        [Hm]                                  [D]\r\n   Мы шли, не заботясь о цели, и вышли на трассу,\r\n      [Hm]                                 [A]\r\n   И сели в машину, ах, как это было давно!\r\n\r\n         [Hm]                  [E]\r\n      Встань на дороге с заплечным мешком -\r\n            [A]              [F#m]\r\n      По старой дороге ходили пешком,\r\n        [Hm]             [E]\r\n      Она убегала к тенистым кустам,\r\n        [A]               [F#m]           [Hm] [E] [A] [Asus4] [A]\r\n      Она пролегала по дивным местам.\r\n\r\nНо пахнут летящие дни не травой, а бензином,\r\nИ вместо беседы лишь холод заученных фраз.\r\nИ судят о мне и тебе по нашим машинам,\r\nОстатки свободы сменив на тормоз и газ.\r\n\r\n      Встань на дороге с заплечным мешком -\r\n      По старой дороге ходили пешком,\r\n      Она убегала к тенистым кустам,\r\n      Она пролегала по дивным местам.', 3, 53, 2),
(160, 15, 'Он Был Старше Ее', '[Em]\r\nОн был старше ее. Она была хороша,\r\nВ ее маленьком теле гостила душа,\r\n        [Am]                       [H7]           [Em]\r\nОни ходили вдвоем, они не ссорились по мелочам.\r\nИ все вокруг говорили: чем не муж и жена?\r\nИ лишь одна ерунда его сводила с ума -\r\n         [Am]           [H7]               [Em]\r\nОн любил ее, она любила летать по ночам.\r\n          [E7]\r\n        Он страдал, если за окном темно,\r\n                                    [Am]\r\n        Он не спал, на ночь запирал окно,\r\n                                       [H7]\r\n        Он рыдал, пил на кухне горький чай,\r\n                                     [Em]\r\n        В час, когда она летала по ночам.\r\n        [E7]\r\n        А потом, по утру, она клялась,\r\n                                    [Am]\r\n        Что вчера это был последний раз,\r\n                                       [H7]\r\n        Он прощал, но ночью за окном темно,\r\n                          [Em]\r\n        И она улетала все равно. \r\n\r\nА он дарил ей розы, покупал ей духи,\r\nПосвящал ей песни, читал ей стихи,\r\nОн хватался за нитку, как последний дурак.\r\nОн боялся, что когда-нибудь под полной луной,\r\nОна забудет дорогу домой,\r\nИ однажды ночью вышло именно так. \r\n\r\nОн страдал, если за окном темно, \r\nОн не спал, на ночь запирал окно, \r\nОн рыдал, пил на кухне горький чай, \r\nВ час, когда она летала по ночам. \r\nА потом, поутру она клялась, \r\nЧто вчера это был последний раз, \r\nОн прощал, но ночью за окном темно, \r\nИ она улетала все равно. \r\n\r\nИ три дня и три ночи он не спал и не ел,\r\nОн сидел у окна и на небо глядел,\r\nОн твердил ее имя, выходил встречать на карниз.\r\nА когда покатилась на убыль луна,\r\nОн шагнул из окна, как шагала она,\r\nОн взлетел, как взлетала она, но не вверх, а вниз. \r\n\r\nОн страдал, если за окном темно,\r\nОн не спал, на ночь запирал окно,\r\nОн рыдал, пил на кухне горький чай,\r\nВ час, когда она летала по ночам.\r\nА потом, поутру она клялась,\r\nЧто вчера это был последний раз,\r\nОн прощал, но ночью за окном темно,\r\nИ она улетала все равно.', 3, 37, 3);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(161, 15, 'Он Играет на Похоронах и Танцах', '[Em]\r\nОн играет на похоронах и танцах,\r\n[F]         [H]\r\nВсе зовут - там и тут.\r\n[Em]\r\nИ ни там, ни тут не может он остаться,\r\n[F]          [H]\r\nСнова ждут там и тут.\r\n[F]                        [Em]\r\nИ вновь смычок рождает звук,\r\n[F]                         [H]\r\nСто новых свадеб, сто разлук.\r\n[Em]\r\nОн играет на похоронах и танцах,\r\n[F]                   [H]      [Em]\r\nВся наша жизнь - одно из двух.\r\n[D7]                      [G]\r\nКогда стучится в дом беда, не плачь,\r\n[H]                          [Em]\r\nМы здесь с тобой не навсегда.\r\n[D7]                        [G]\r\nЧто б ни случилось, никогда не плачь,\r\n[H]                   [Em]\r\nИграй, и горе не беда.\r\n\r\nИ когда-нибудь совсем не там, где надо,\r\nВыйдет срок, прозвенит звонок.\r\nИ я вспомню тех, кто шел со мною рядом,\r\nТо, что смог и не смог.\r\nНичто не вечно под луной,\r\nЯ упаду на шар земной.\r\nПусть не будет комиссаров в пыльных шлемах,\r\nПусть он сыграет надо мной.\r\n\r\nОн играет на похоронах и танцах,\r\nВсе зовут там и тут.\r\nИ ни там, ни тут не может он остаться,\r\nСнова ждут там и тут.\r\nИ вновь смычок рождает звук.\r\nСто новых свадеб, сто разлук.\r\nОн играет на похоронах и танцах,\r\nВся наша жизнь - одно из двух.', 4, 0, 4),
(162, 15, 'Однажды Мир Прогнется под Нас', '[Em]         [D]        [C]\r\nВот море молодых колышат супербасы\r\n      [H7]                         [Em]\r\nМне триста лет, я выполз из тьмы.\r\n                [D]                [C]\r\nОни торчат под рейв и чем-то пудрят носы -\r\n [H7]                  [Em]\r\nОни не такие, как мы.\r\n [Am]\r\nИ я не горю желаньем лезть в чужой монастырь,\r\n                              [H7]\r\nЯ видел эту жизнь без прикрас,\r\n     [Em]           [D]            [A]        [C]\r\nНе стоит прогибаться под изменчивый мир,\r\n        [H7]                       [Em]\r\nПусть лучше он прогнётся под нас.\r\n    [H7]                       [Em]\r\nОднажды он прогнётся под нас.\r\n\r\nОдин мой друг - он стоил двух, он ждать не привык\r\nБыл каждый день последним из дней.\r\nОн пробовал на прочность этот мир каждый миг -\r\nМир оказался прочней\r\nНу что же, спи спокойно, позабытый кумир,\r\nТы брал свои вершины не раз.\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\n\r\nДругой держался русла и теченье ловил,\r\nПодальше от крутых берегов.\r\nОн был, как все, и плыл, как все, и вот он приплыл -\r\nНи дома, ни друзей, ни врагов.\r\nИ жизнь его похожа на фруктовый кефир -\r\nВидал я и такое не раз.\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\n\r\nПусть старая джинса давно затёрта до дыр,\r\nПускай хрипит раздолбанный бас -\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\nОднажды он прогнётся под нас.', 3, 14, 5),
(163, 15, 'По Дороге в Непал', '[D]\r\nТам, где встретились Труба и Сайгон,\r\nПорвалась связь времен.\r\nМы читали все, мы слышали звон,\r\nМы трубили подъем.\r\n[G]\r\nКто остался, помахали рукой,\r\n                 [F] [G] [F] [G] [G#]\r\nИ отряд поскакал. \r\n[A]\r\nЭто было бесконечной весной\r\n               [D]\r\nПо дороге в Непал.\r\n\r\nГоворят, по нам стреляли не раз,\r\nНо мы шли как один,\r\nНе сводя своих восторженных глаз,\r\nС озаренных вершин.\r\nПравда, кто-то возвратился домой,\r\nКто-то просто пропал.\r\nЭто было бесконечной весной\r\nПо дороге в Непал.\r\n\r\n   [A]\r\n   На Тибет дорога прямо,\r\n   [B]\r\n   Слева спонсор, справа лама,\r\n   [A]                   [G]   [F] [G] [F] [G] [G#]\r\n   Одинокий, одинокий путь. \r\n   [A]\r\n   Мимо древнего Икстлана,\r\n   [B]\r\n   От "Агдама" до баяна\r\n   [A]                        [G]   [F] [G] [F] [G] [F]\r\n   Напиши мне, мама, как-нибудь\r\n                  [D]\r\n   По дороге в Непал.\r\n\r\nПо обочинам горели огни,\r\nМы спешили на свет.\r\nВ сотый раз тогда казалось, что мы\r\nОбрели свой Тибет.\r\nИ на радостях еще по одной.\r\nКто-то пел, кто-то спал. \r\nЭто было бесконечной весной\r\nПо дороге в Непал.\r\n\r\nТам, где встретились Труба и Сайгон,\r\nНикого больше нет.\r\nТам сегодня зеленеет "Дирол",\r\nТам зацвел "Блендамед".\r\nИ давно забыты вещие сны\r\nОт начала начал \r\nТой, казалось, бесконечной весны\r\nПо дороге в Непал.\r\n\r\n   На Тибет дорога прямо,\r\n   Слева спонсор, справа лама,\r\n   Одинокий, одинокий путь. \r\n   Мимо древнего Икстлана,\r\n   От "Агдама" до баяна\r\n   Напиши мне, мама, как-нибудь\r\n   По дороге в Непал.', 4, 53, 6),
(164, 15, 'Проводница', '[D]                     [G]\r\nКогда над планетой этой стелется ночь,\r\n       [D]                    [G]\r\nИ человечество отходит ко сну,\r\n      [D]                   [G]\r\nОна уже на посту, готова людям помочь\r\n        [D]               [G]\r\nИ провожает на покой луну.\r\n       [D]                    [G]\r\nОна стоит королевой, машет ручкою левой.\r\n         [D]              [G]\r\nВ синем кителе она хороша -\r\n    [D]               [G]\r\nЕе важное дело, ее нежное тело\r\n     [D]                [G]\r\nИ до ужаса большая душа.\r\n\r\n   [A]\r\n   Если ты веришь в чудо,\r\n          [G]\r\n   Если ставишь на свою звезду,\r\n           [A]\r\n   Ты во что бы то ни стало познакомишься с ней,\r\n             [G]\r\n   А также все, что я имею в виду,\r\n              [Em]\r\n   Какой это кайф, кайф, кайф, кайф!\r\n          [Hm]\r\n   Проводница! Проводница! Проводница! Проводница!\r\n          [D]\r\n   Проводница! Проводница! Проводница! Проводница!\r\n\r\nОфициант, как юла, стирает пыль со стола,\r\nКогда она идет в вагон-ресторан.\r\nЕе дед по мамаше был Дерсу Узала,\r\nЕе прадед был Сусанин Иван.\r\nОна проводит тебя по скалистым горам\r\nИ не оступится на горной тропе,\r\nОна нальет тебе чай в стакан,\r\nА потом уйдет в свое купе.\r\n\r\n   Если ты веришь в чудо,\r\n   Если ставишь на свою звезду,\r\n   Ты во что бы то ни стало познакомишься с ней,\r\n   А также все, что я имею в виду,\r\n   Какой это кайф, кайф, кайф, кайф!\r\n   Проводница! Проводница! Проводница! Проводница!\r\n   Проводница! Проводница! Проводница! Проводница!', 2, 58, 7),
(165, 15, 'Фрейлекс', '[Gm]\r\nБоже ж мой,\r\n             [A]\r\nЯ влюбился опять, как мальчик,\r\n             [D]\r\nЯ любой поцелую пальчик\r\n              [Gm]      [D7]\r\nС прелестной ручки любимой Вашей,\r\n[Gm]\r\nАх, мадам,\r\n                 [A]\r\nВаших форм меня так тревожат,\r\n              [D]\r\nИ любовь мое сердце гложет\r\n [D7]        [Gm] [G7]\r\nДаже по утрам.\r\n\r\n   [Cm]       [Gm]\r\n   Ой, ой, как же это.\r\n              [D]\r\n   От вас я жду ответа\r\n               [Gm]          [G7]\r\n   На свой прямой вопрос, не томите!\r\n    [Cm]      [Gm]\r\n   Сердце мне не рвите!\r\n              [D]         [D7]          [Gm]  [G7] [Cm] [D] [Gm]\r\n   Скажите ж да и таки да и всех делов!\r\n\r\nНу, зачем\r\nВидеть Вам моих недостатков.\r\nБудем с Вами мы жить в достатке\r\nИ в Баден-Баден на воды ездить.\r\nДайте срок -\r\nПонаделаем мы детишек.\r\nНе смотрите, что я не вышел\r\nРостом - смех не в том!\r\n\r\n   Ой, ой, как же это.\r\n   Я снова жду ответа\r\n   На свой прямой вопрос, не томите!\r\n   Сердце мне не рвите!\r\n   Скажите ж да и таки да и всем ле хайм!\r\n\r\n   Ой, ой, как же это.\r\n   Открой буфет, Жоржетта!\r\n   Уже ж десятый час, не томи же! \r\n   Сердца стук все ниже!\r\n   Так пиво ж есть,\r\n   Скажи ж быстрей Азохен вэй!\r\n   \r\n   Ой, ой, как же это.\r\n   Открой дверь, Жоржетта!\r\n   Уже ж десятый час, не томи же! \r\n   Сердца стук все ниже!\r\n   Так пиво ж есть,\r\n   Налей быстрей Азохен вэй!', 3, 4, 8),
(166, 15, 'Такие Дела, Ангел Мой', '[D]\r\nКогда над Москвой весна на дыбы,\r\n  [G]                       [G7]\r\nУтерян покой, он слышит звуки трубы,\r\n     [E7]\r\nОн бросит станок, он вывесит флаг,\r\n   [A]                 [A7]\r\nОтпустит охрану, пойдет просто так.\r\n\r\n       [G]              [E7]\r\n   И крылья весны поднимут его,\r\n         [D]                     [H7]\r\n   Он страстно влюблен, пока неясно - в кого,\r\n      [G]         [Ddim]  [B7]\r\n   Но он не придет сегодня домой.\r\n      [D]     [B7]        [D] [A] [D]\r\n   Такие дела, ангел мой.\r\n\r\nИ в море огней и сказочных дам\r\nОн, словно фрегат, легко скользит по волнам.\r\nИ ванты поют, и пушки горят,\r\nИ в каждой томится забитый заряд.\r\n\r\n   Здесь где-то расчет, а где-то кураж,\r\n   Смотрите, как он заходит на абордаж.\r\n   И вот к борту борт над пенной волной,\r\n   Такие дела, ангел мой.\r\n\r\nКогда рассвело и в небе дыра,\r\nИ чувство ушло, и возвращаться пора,\r\nОн выпьет вина, он вывесит флаг -\r\n"До скорого, заяц, все было ништяк".\r\n\r\n   Он прыгнул в метро, он сел в "Мерседес",\r\n   Пустился пешком или на дерево влез,\r\n   Во всем остальном он - как мы с тобой.\r\n   Такие дела...\r\n   Такие дела...\r\n   Такие дела, ангел мой.', 2, 23, 9),
(167, 15, 'Старая Песня о Главном', '[C]            [G6] [C]             [G6]\r\nЕсли все не так и на сердце мрак,\r\n[C]           [E7]      [F]   [A7] \r\nЕсли душу гложет печаль,\r\n [Dm]          [A7]     [Dm7]         [A7]\r\nПоезжай, дружок, к Ленинским горам\r\n[D]                 [D7]     [G]   [G7] \r\nИ вглядись в бескрайнюю даль.\r\n [C]             [G6]  [C]            [G6]\r\nПусть перед тобой ляжет город твой,\r\n [C]         [E7]       [F] [A7] \r\nГород голубых площадей\r\n[Dm]    [Fm] [C]       [A7]\r\nИ боевой и трудовой\r\n  [D]      [G7]        [Gm] [A7] \r\nСлавы советских людей.\r\n[Dm]    [Fm] [C]       [A7]\r\nИ Боевой и Трудовой\r\n  [D]      [G7]        [C]  [G] \r\nСлавы советских людей.\r\n\r\n    [C] [G6]  [C] [G6] [C]         [A]    [Dm] [A7]\r\n   Тихо, тихо плещет Москва-река,\r\n     [Dm]  [A7]  [Dm] [A7]  [D]       [D7]      [G]     [G7]\r\n   Спит портниха, спит руководство ЦК на дачах,\r\n    [C]     [E7] [Am] [C7]   [F]       [A7]        [Dm] [A7] \r\n   Пусть на башнях звезды горят в облаках.\r\n     [Dm]        [Fm]    [C]        [A7]\r\n   Сладко ты спишь, черный малыш,\r\n      [D]        [G7]        [Gm] [A7] \r\n   В добрых еврейских руках,\r\n     [Dm]        [Fm]    [C]        [A7]\r\n   Сладко ты спишь, черный малыш,\r\n       [D]       [G7]        [C]  [G] \r\n   В крепких советских руках.\r\n\r\nЗдесь одни друзья, здесь грустить нельзя. \r\nСколько с ними песен ни пой,\r\nЕсли уж один скажет тебе "Да", \r\nЗначит, скажет "Да" другой, и третий. \r\nЛишь отдай приказ, встанут в тот же час, \r\nОтгремев, закончат бои,\r\nВ зной и в пургу бьют по врагу, \r\nА иногда по своим,\r\nВ зной и в пургу бьют по врагу, \r\nНо иногда по своим.\r\n\r\n   Сладко-сладко плещет Москва-река.\r\n   Спят солдаты, спят по баракам зека на нарах, \r\n   Выше крыши дремлет пилот в облаках.\r\n   Тихо ты спишь, черный малыш, \r\n   В добрых еврейских руках,\r\n   Сладко ты спишь, черный малыш, \r\n   В длинных советских руках.', 4, 10, 10),
(168, 15, 'Я Рядом с Тобой', '[D]        [Em]     [D]\r\nКогда погасят свет,\r\n[Em]       [A7]        [D]\r\nКогда меня больше нет,\r\n[H7]                 [Em7] \r\nКогда затихнут слова,\r\n[B7]               [E7] \r\nКогда укрыта трава\r\n     [G]     [G7]         [E7] \r\nЛиствой, опавшей листвой,\r\n      [D]           [C]     [H7] \r\nКогда осень принесет покой,\r\n    [G]    [A7]            [D]  [Em] [A7] \r\nТы помни, я рядом с тобой.\r\n\r\n[D]          [Em]    [D]\r\nКогда пройдет зима,\r\n[Em]       [A7]      [D] \r\nБеда отступит сама.\r\n[H7]                    [Em7] \r\nСчитай, что я не при чем.\r\n[B7]              [E7] \r\nТебя укроет плащом\r\n    [G]      [G7]     [E7] \r\nДругой, тебе дорогой,\r\n          [D]          [C]     [H7] \r\nПусть он думает, что он такой,\r\n    [G]    [A7]            [Hm7]    \r\nТы помни, я рядом с тобой. \r\n    [G]   [A7]            [Hm7]\r\nТы помни, я рядом с тобой.\r\n    [G]    [A7]            [D]\r\nТы помни, я рядом с тобой.', 1, 37, 11),
(169, 16, 'Эпоха Большой Нелюбви', '[Hm7]\r\nКогда стемнеет не по закону\r\nДо срока и до поры,\r\n   [Em]\r\nЯ выключу свет, и псом бездомным\r\n[F#7]\r\nВыползу из конуры.\r\n    [Hm7]\r\nНе бойся меня в этот сумрачный вечер,\r\nИмя свое назови -\r\n  [Em]             [Hm7]\r\nЯ очень ценю случайные встречи\r\n    [F#7]               [Hm] [A] [G] [Hm7]\r\nВ эпоху большой нелюбви.\r\n\r\nТебе совсем не надо стараться\r\nДержать неприступный взгляд -\r\nТы тоже устала от всех отбиваться,\r\nА я не клиент, а брат.\r\nНадеюсь, ты примешь мое предложенье -\r\nМы выпьем и поговорим.\r\nЯ очень ценю тепло отношений\r\nВ эпоху большой нелюбви.\r\n\r\nТы все еще думаешь - я тебя клею,\r\nНо это - твои дела.\r\nПоверь, что мне уже стало теплее\r\nПохоже, и ты ожила.\r\nА все, что было, зачтется однажды,\r\nКаждый получит свои -\r\nВсе семь миллиардов растерянных граждан\r\nЭпохи большой нелюбви.\r\n\r\n[C#m-5]\r\n              [Hm6]\r\nБольшой нелюбви\r\n[C#m-5] [Hm-5]\r\n              [Hm6]\r\nБольшой нелюбви\r\n[A] [G]\r\n              [Hm]\r\nБольшой нелюбви', 3, 45, 1),
(170, 16, 'Странные Дни', '[Dm7]\r\nЭто было давно - не вспомнить наверняка:\r\nТогда еще читали книги и боялись ЦК,\r\nТогда не знали слова «киллер» и «прокладки «O-Би» -\r\nОдин студент одной студентке объяснялся в любви.\r\n\r\n             [Dm7]           [C]           [H]       [B]\r\n   Он ей сказал: «Я вижу образ твой, рисуя цветы,\r\n             [Dm7]           [C]           [H]       [B]\r\n   Ведь у меня на сердце двое - Джимми Хендрикс и ты,\r\n             [Dm7]           [C]           [H]       [B]\r\n   И помни - я всегда с тобою, где бы ты ни была,\r\n                 [Dm7]                       [F]\r\n   Поскольку, beautiful people - all you need - is love!»\r\n\r\n         [Dm7]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n         [Dm]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n         [Dm7]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n         [Dm]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n\r\nОна сказала: «Ты прикольный и хипповый чувак,\r\nНо моя мама говорит - с тобою что-то не так.\r\nВ Стране Советов у тебя нет никаких перспектив,\r\nТак что прости - я побежала на комсомольский актив».\r\n\r\n   А он кричал: «Придёт свобода для советских битлов,\r\n   Портреты лысого урода поснимают с домов,\r\n   Еще чуть-чуть переждать - и наше солнце взойдёт!»\r\n   Пока товарищ в чём-то штатском не зашил ему рот.\r\n\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...\r\n\r\nС тех пор прошла тыща лет, сменили цвет времена,\r\nВокруг совсем другие лица и другая страна.\r\nНо, проходя по Тверской, я вспоминаю их вновь -\r\nГде тот студент и та студентка, и где та любовь?\r\n\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...', 3, 40, 2),
(171, 16, 'Домажо', '[C7]\r\nОдин дружок мой спился,\r\nДругой - вот-вот начнет...\r\nДва года я крепился\r\nПотом - наоборот.\r\n\r\n            [F7]\r\n   Я в домажо!\r\n   Я в до-мажоре жарю блюз\r\n           [G7]\r\n   И если нечего терять,\r\n   И стрелка в шесть - я выйду в пять,\r\n                                [C7]\r\n   И по дороге, все равно, оттянусь\r\n\r\nОдин торчит от бабок,\r\nДругой - от мужиков\r\nПослать бы мне их на..на..на..,\r\nДа жалко добрых слов.\r\n\r\n   Я в домажо!\r\n   Я в до-мажоре жарю блюз\r\n   И если нечего терять,\r\n   И стрелка в шесть - я выйду в пять,\r\n   И по дороге, все равно, оттянусь\r\n\r\nОдних кидает вправо,\r\nДругих ведет назад\r\nПройдет былая слава,\r\nА я тому и рад!\r\n\r\n   Я в домажо!\r\n   Я в до-мажоре жарю блюз\r\n   И если нечего терять,\r\n   И стрелка в шесть - я выйду в пять,\r\n   И по дороге, все равно, оттянусь', 3, 51, 3),
(172, 16, 'Дай Мне Руку, Душа Моя', '[Dm7]                [Ddim]\r\nОна сегодня не пойдет в кино\r\n[A7]                     [Dm7]\r\nНи с ним, и даже не с ним\r\n      [Dm7/c]             [Ddim]\r\nЗа окном темно, она глядит в окно -\r\n[A7]               [Dm7]\r\nВечер тает, как дым.\r\n\r\n   [Cm]                 [Cm7]\r\n   Ни катастроф, ни удач впереди,\r\n   [Cdim]                [H]\r\n   А в общем, все ничего.\r\n   [Gm]                      [Dm7]\r\n   И мужиков вокруг хоть пруд пруди\r\n   [Ddim]             [A7] [Ddim]           [A7]\r\n   И все хотят одного, все хотят одного.\r\n\r\nОна слишком горда, чтобы не верить в успех,\r\nНо быстро катятся дни.\r\nОна так хочет, чтобы все, как у всех,\r\nНо чтоб, при этом, не так, как они.\r\n\r\n   Она свободна, как и была,\r\n   Она умеет говорить слово «нет».\r\n   Но все больнее заедают дела\r\n   И уже не шестнадцать лет, уже не шестнадцать лет...\r\n\r\n      [B]          [C]     [Am7] [Dm7]\r\n      И жизнь такая упрямая -\r\n      [Gm]     [Gm7]      [A7]      [Dm7]\r\n      Всё решает за неё и за них.\r\n      [B]        [C]       [F]\r\n      Дай мне руку, душа моя,\r\n           [Gm7]                [A7]\r\n      У меня хватит сил на двоих.\r\n\r\n      Жизнь такая упрямая - \r\n      Всё решает за неё и за них.\r\n      Дай мне руку, душа моя,\r\n      У меня хватит сил на двоих.\r\n\r\n      [Dm7]\r\nНа двоих...', 3, 48, 4),
(173, 16, 'Когда Мы Сойдем с Ума', '[G]                    [C]                  [G] [C]\r\nЯ теряю с улыбкой, ты ищешь в тоске - не беда.\r\n       [G]                    [C]                  [G] [C]\r\nВремя быстро уходит сквозь пальцы - на то и вода.\r\n     [Em]                 [A7]\r\nТы еще видишь сны, а я вижу бетон,\r\n        [C]                    [A7]\r\nМы всю жизнь говорим, и всю жизнь не о том,\r\n        [C]       [Am7]          [D]        [D7]     [G] [C]\r\nЗнаешь, близится день, когда все мы сойдём с ума.\r\n\r\nОна ходит на срочную службу, он ходит с бубей.\r\nОн богат, как султан, а у ней денег нет, хоть убей.\r\nОна копит на жвачку, а он - на дома,\r\nНо кончается век, на исходе зима,\r\nИ настанет тот день - они оба сойдут с ума.\r\n\r\nЕсть предел, за которым вода превращается в лёд.\r\nЕсли все стены в ружьях - поверь, хоть одно, да пальнет.\r\nТы закроешь глаза и откроешь глаза,\r\nИ ты можешь быть против и можешь быть за,\r\nПриближая тот день, когда все мы сойдём с ума.\r\n\r\nМы живём так давно, что мы можем уже не спешить.\r\nИ не важно, кто жил, чтобы петь, а кто пел, чтобы жить.\r\nИ мы, сидя на троне над кучей дерьма,\r\nНаливаем друг другу дурного вина,\r\nОтмечая тот день, когда все мы сойдём с ума...\r\nОтмечая тот день, когда все мы сойдём с ума...\r\n     [C]       [Am7]          [D]        [D7]     [Em]\r\nОтмечая тот день, когда все мы сойдём с ума.\r\n     [C]       [Am7]          [D]        [D7]     [G] [C]\r\nОтмечая тот день, когда все мы сойдём с ума.\r\n    [D7]    [G]  [C] [G]\r\nСойдём с ума...', 3, 20, 5),
(174, 16, 'Лифт', '[C]\r\nЛифт идёт почти бесшумно,\r\n[Em]\r\nОн идёт ужасно быстро,\r\n[Am]\r\nОт земли летит до неба\r\n[G]                [G#]\r\nИ от неба до земли.\r\n[Am]\r\nУ него в пути бывают\r\n[Am/g]\r\nТри-четыре остановки\r\n[Am/f#]\r\nИ на каждой остановке \r\n[Am/f]              [Em]\r\nОн задержится на миг.\r\n\r\n[Em] [Gm] [Hm] [F] [Em] [Gm] [Hm] [F]\r\n\r\nКак на первой остановке\r\nПахнет ёлкой новогодней\r\nДети водят хороводы\r\nИ дерутся во дворе.\r\nПахнет радостью открытий,\r\nПахнет страхом наказаний,\r\nПахнет каплями от кашля,\r\nПахнет маминым пальто.\r\n\r\nНа второй этаж взлетаешь,\r\nБез усилий, словно птица,\r\nИ твое предназначенье \r\nДля тебя - как дважды два.\r\nВ голове вино и ветер,\r\nНад тобой кружатся феи,\r\nИ хранит твоя подушка\r\nЛёгкий запах их духов.\r\n\r\nИ ты ещё глядишь на небо,\r\nГде вчера кружили феи,\r\nА они уже не феи -\r\nИх делишки к сентябрю.\r\nПахнет сеном, а не маем,\r\nПахнет чьим-то урожаем,\r\nУ соседа снова праздник - \r\nВас впервые не зовут.\r\n\r\nДальше - всё ещё быстрее,\r\nВпереди - этаж последний.\r\nПахнет пылью и больницей,\r\nИ тоской, и тишиной.\r\nТам неярко светит лампа\r\nТам стоит ведро и швабра,\r\nТанцовщицы сняли шали\r\nИ с лица стирают грим.', 4, 8, 6),
(175, 16, 'Я Так Устал на Войне', '[Fm]\r\nМарш за маршем, трамбуя дороги,\r\n     [C#]\r\nПостоянно живёшь в состояньи борьбы,\r\n    [Bm]\r\nЯ уже сотню лет просыпаюсь в тревоге,\r\n     [F#7]\r\nЕсли утром не слышу стрельбы.\r\n            [Fm]\r\nИ мир так хрупок, неверен и тонок -\r\n        [C#]\r\nСтоит снять сапоги и присесть у костра,\r\n           [Bm]\r\nВновь с экрана какой-то холеный подонок\r\n     [F#]               [F7]\r\nЗазывает меня в штыковую с утра.\r\n\r\n        [Bm]\r\n   А я так устал на войне -\r\n             [C#m]                [G#]\r\n   Мне б до дома, до хаты, к детям и жене,\r\n           [Bm]                   [C#m]\r\n   Только дом мой сгорел, дети не рождены,\r\n         [G#]                [F]\r\n   Это все за морями, за краем войны -\r\n          [F#7]\r\n   Кто сегодня у нас командир?\r\n\r\nЧто ни утро - доклад о победе,\r\nЧто ни вечер - салют в небесах,\r\nНо откуда, скажи, такие странные дети\r\nС этим волчьим свинцом в глазах?\r\nИ как только решишь, что не надо,\r\nИ хватит ждать катастроф от земли и небес.\r\nНа тебя уже движется новое стадо\r\nС новым Лениным наперевес.\r\n\r\n   А я так устал на войне -\r\n   Мне б до дома, до хаты, к детям и жене,\r\n   Только дом мой сгорел, дети не рождены,\r\n   Это все за морями, за краем войны -\r\n   Кто сегодня у нас командир?', 3, 24, 7),
(176, 16, 'Не Плачь обо Мне', '[Em7]                [C]\r\nЗдесь ночами нет света,\r\n[D]                      [F#m7] [Hm7]\r\nГодами не бывает лета,\r\n            [Am7]\r\nИ кажется мне -\r\n     [C]        [A7]\r\nВсе будто во сне.\r\n[Em7]                 [C]\r\nЗдесь время так улетает,\r\n[D7]                           [F#m7] [Hm7]\r\nЧто снега уже давно не тают,\r\n            [Am7]\r\nНеделя пройдет -\r\n    [C]          [Gdim(II)]\r\nИ опять Новый Год.\r\n\r\n   [Am7]            [H7]\r\n   Не плачь обо мне -\r\n          [Em]      [C]\r\n   Я не стану прощаться.\r\n   [Am7]            [H7]                    [Em7]\r\n   Так просто соврать, сказать, что вернусь.\r\n   [Am7]            [H7]\r\n   Но что-то во мне\r\n         [Em]\r\n   Не велит возвращаться,\r\n   [Am7]        [H7]                [A]\r\n   И я не вернусь - прости и забудь.\r\n\r\n[Em7]                  [C]\r\nЗдесь привычно ждут горя,\r\n[G]                [D]           [F#m7] [Hm7]\r\nНи одна река не вышла в море.\r\n                 [Am7]\r\nНу что ж - не беда,\r\n       [C]       [A7]\r\nИм не нужно туда.\r\n[Em7]        [C]\r\nОдинокая птица -\r\n[G]                   [D]            [F#m7] [Hm7]\r\nКак могла ты среди них родиться?\r\n             [Am7]\r\nНо корни сильней -\r\n    [C]               [Gdim]\r\nДержись хотя бы корней.\r\n\r\n   Не плачь обо мне -\r\n   Я не стану прощаться.\r\n   Так просто соврать, сказать, что вернусь.\r\n   Но что-то во мне\r\n   Не велит возвращаться,\r\n   И я не вернусь - прости и забудь.', 4, 41, 8),
(177, 16, 'На Абрикосовых Холмах', '[D]\r\nНа абрикосовых холмах,\r\nНа ананасовых холмах\r\n                                  [Gm] [A7]\r\nЯ не бывал, ты не бывал, он не бывал.\r\n[Em]\r\nТам танцуют звезды\r\n[D]       [Hm]\r\nНа облаках,\r\n[Em]            [G7]\r\nНа медовых облаках,\r\n            [D]\r\nА я - не бывал.\r\n\r\nПесни южных островов,\r\nПесни дальных островов\r\nСловно вино, словно вино, словно вино,\r\nВ этих песнях нет\r\nПридуманных слов -\r\nВ них поет сама любовь,\r\nСловно вино.\r\n\r\n     [Em]             [A]\r\n   Сколько друзей мне говорят,\r\n          [D]             [Hm]\r\n   Что хотят пойти со мной.\r\n     [G]              [A]\r\n   Сколько людей с детства хотят\r\n        [D]              [Hm]\r\n   Обойти весь шар земной.\r\n    [Em]              [A]\r\n   Жаль, что никто так и не смог\r\n        [D]             [Hm]\r\n   Никуда со мной пойти,\r\n     [G]              [A]              [B]\r\n   А я не хочу никого сбивать с пути,\r\n           [D]\r\n   Я еду один.', 3, 22, 9),
(178, 16, 'Из Гельминтов', '[D]                         [Em]             [A7/6]\r\nТы помнишь, как давно отцвел наш вешний сад?\r\n[D]                   [G]  [F#m7]\r\nКак много утекло воды!\r\n[Hm]          [Hm+7]            [F#m]        [H7]\r\nИ пусть козлы твердят, что нет пути назад,\r\n     [E7]            [A+]\r\nЯ к саду отыщу следы.\r\n\r\n[D]                      [Em]        [A7]\r\nТы помнишь - яблони горели белизной,\r\n[D]                 [G] [H7]\r\nСклоняя к нам цветы\r\n[Em]           [Gm]        [F#m]        [H7]\r\nВсе в том саду дышало негой и весной,\r\n   [E7]                  [A7] [D] [Am7]\r\nА вот теперь весне - кранты.\r\n\r\n       [G]\r\nПусть говорят, что это\r\n  [Gm]\r\nУходит вместе с летом,\r\n      [Em]           [A7]          [D+]   [D7]\r\nПусть осень гонит тучи - ну и пусть.\r\n    [G]\r\nЯ знаю, что однажды,\r\n   [Gm]\r\nА может быть, и дважды,\r\n    [E7]                    [A7]  [A+]\r\nЯ в этот сад украдкою вернусь.\r\n\r\n[D]                   [Em]        [A7/6]\r\nИ я пройду один тропою меж дерев,\r\n[D]                       [G]  [H7]\r\nИ вспомню тот весенний рай,\r\n[Em]       [Gm]          [F#m]          [H7]\r\nА после соберу с земли, романс допев,\r\n     [E7]           [A7]  [D+7sus2]\r\nСлегка подгнивший урожай.', 1, 57, 10),
(179, 17, 'Паузы', '[C]                          [Am]\r\nДавайте делать паузы в словах,\r\n[F]           [Fm]        [G] \r\nПроизнося и умолкая снова, \r\n      [C]   [C/h]   [Am]\r\nЧтоб лучше отдавалось в головах\r\n    [Dm]         [E7]         [Am] \r\nЗначенье вышесказанного слова. \r\n   [Dm]           [G]          [C] \r\nДавайте делать паузы в словах. \r\n\r\nДавайте делать паузы в пути,\r\nСмотреть вокруг внимательно и строго. \r\nЧтобы случайно дважды не пройти\r\nОдной и той неверною дорогой. \r\nДавайте делать паузы в пути. \r\n\r\nДавайте делать просто тишину -\r\nМы слишком любим собственные речи, \r\nИ из-за них не слышно никому\r\nСвоих друзей на самой близкой встрече, \r\nДавайте делать просто тишину. \r\n\r\nИ мы увидим в этой тишине,\r\nКак далеко мы были друг от друга. \r\nКак думали, что мчимся на коне,\r\nА сами просто бегали по кругу. \r\nА думали, что мчимся на коне. \r\n\r\nКак верили, что главное придет,\r\nСебя считали кем-то из немногих, \r\nИ ждали, что вот-вот произойдет\r\nСчастливый поворот твоей дороги, \r\nСудьбы твоей счастливый поворот. \r\n\r\n[F]                            [C]\r\nНо век уже, как будто, на исходе,\r\n    [F]                       [C]\r\nИ скоро, без сомнения, пройдет,\r\n        [C/h]   [Am] \r\nА с нами ничего не происходит,\r\n    [Dm]           [E7]          [Am]\r\nИ вряд ли что-нибудь произойдет.\r\n    [Dm]           [G]           [C]\r\nИ вряд ли что-нибудь произойдет.', 2, 16, 1),
(180, 17, 'Лица', '[Am]        [E9sus4] \r\nНочью нам дарован покой, \r\n[Dmsus2] [Em7]          [Am]\r\nА днём на беду не спится.\r\n               [E9sus4]\r\nИ люди проходят бескрайней рекой,\r\n[Dsus2]     [Em7]          [Am]\r\nКак флаги, несут свои лица.\r\n\r\n   [C]                    [G]\r\n   Я в них в горький миг утешенья искал,\r\n   [Am]                  [D] \r\n   Дарил я им радости миги.\r\n   [F]              [Cm7]\r\n   И их до сих пор я читать не устал,\r\n   [D]            [H7]          [Em] \r\n   Как с детства знакомые книги: \r\n\r\nЕсть лица в виде закрытых дверей, \r\nКлюча от которых нет;\r\nЕсть лица, которые солнца теплей - \r\nИз тех, что нам дарят свет.\r\n\r\n[Hm]      [F#m]    [Hm] [F#m]\r\nИ часто я замечаю,\r\n[Hm]              [F#m] [Hm]  [F#m]\r\nЧто в лицах тепло убито,\r\n[C#m]            [G#m]    [C#m]  [G#m] \r\nВсе меньше дверей открытых,\r\n[A]                     [D]\r\nВсе больше дверей закрытых. \r\n\r\n   [Em]\r\nИ часто похоже,\r\n       [C] \r\nЧто в день непогожий\r\n    [Am] \r\nСлучайный прохожий\r\n   [F#m7] \r\nТебе не поможет,\r\n    [H7]\r\nИ все же... \r\n\r\n[Em]       [D]        [Cmaj7]\r\nКогда я вижу вас разом,\r\n[Am]     [D]      [Em] \r\nОчень разные люди,\r\n            [D]      [Cmaj7] \r\nЯ верую в светлый разум\r\n     [Am]         [D]      [Hm]    [Em] [C] [G]\r\nИ в то, что он добрым будет.', 3, 6, 2),
(181, 17, 'Синяя Птица', '[Am]                                    [E7]\r\nМы в такие шагали дали, что не очень-то и дойдешь.\r\n                                              [Am]\r\nМы в засаде годами ждали, невзирая на снег и дождь.\r\n                                    [A7]            [Dm]\r\nМы в воде ледяной не плачем, и в огне почти не горим -\r\n     [Dm]          [Am]             [E7]           [Am]\r\nМы охотники за удачей, птицей цвета ультрамарин.\r\nМы охотники за удачей, птицей цвета ультрамарин.\r\n\r\nГоворят, что за эти годы синей птицы пропал и след.\r\nЧто в анналах родной природы этой твари в помине нет.\r\nГоворят, что в дальние страны подалась она навсегда -\r\nТолько я заявляю прямо - это полная ерунда.\r\nТолько мы заявляем прямо - это полная ерунда.\r\n\r\nСиней птицы не стало меньше, просто в свете последних дней\r\nСлишком много мужчин и женщин стали сдуру гонять за ней.\r\nИ пришлось ей стать осторожной, чтоб свободу спасти,\r\nИ вот теперь почти невозможно повстречать ее на пути.\r\n\r\nСтала пуганой птица удачи - и не верит чужим рукам,\r\nДа и как же ей быть иначе - браконьеры - и тут, и там.\r\nПодкрадешься - она обманет, и вот уже навсегда ушла,\r\nИ только небо тебя поманит синим взмахом ее крыла.', 3, 16, 3),
(182, 17, 'Ты или Я', '[Hm]         [D]       [Ddim]      [F#7]\r\nВсе очень просто. Сказки - обман.\r\n[Hm]          [D]      [Ddim]       [F#7]\r\nСолнечный остров скрылся в туман.\r\n[Em7]       [D]      [Em7]       [D]\r\nЗамков воздушных не носит земля.\r\n[Em]      [Gm]      [Hm]   [F#]\r\nКто-то ошибся - ты или я\r\n\r\nВсе очень просто - нет гор золотых. \r\nПадают звезды в руки других. \r\nНет райской птицы среди воронья.\r\n                        [Hm] [F#] [G]\r\nКто-то ошибся - ты или я \r\n\r\n[Cm]\r\nЛишь только весною тают снега.\r\nИ даже у моря есть берега.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.\r\n\r\nВсе очень просто -\r\nВ сказке обман.\r\nСолнечный остров\r\nСкрылся в туман.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.', 4, 18, 4),
(183, 17, 'Хрустальный Город', '[F#m]       [G#m]           [E] \r\nЯ был вчера в огромном городе,\r\n[A7]                    [D] \r\nГде совершенно нет людей,\r\n[Hm]                     [C#7]\r\nИ в каждом доме вместо окон\r\n[D]        [D7]          [G]\r\nЯ видел только зеркала. \r\n\r\nИ я прошел по людным улицам: \r\nБыл город полон отражений, \r\nОни брели за мной, как тени, \r\nИ молча слушали меня. \r\n\r\n   [F#m]       [G#m]      [E] \r\n   Когда я просто улыбался,\r\n   [A]                     [D] \r\n   То улыбался мне весь город, \r\n   [Hm]                [C#7]\r\n   И если я кивал кому-то,\r\n   [D]                      [C#7]\r\n   То все кивали мне в ответ. \r\n\r\n      [F#m]                 [A]\r\n      И иногда казалось мне,\r\n                 [H]                    [D]\r\n      Что город жив и что вокруг миллион людей,\r\n      [F#m]                        [A]\r\n      И вновь, и вновь не мог поверить я,\r\n              [H]            [D]             [C#7] [D]\r\n      Что я один и что вокруг лишь зеркала...\r\n\r\nОни поссориться не могут: \r\nОни похожи друг на друга. \r\nИ скоро я покинул город, \r\nИ город сразу опустел...', 7, 29, 5),
(184, 17, 'Дай Мне Ответ', '[Gm7]\r\nКак много дней ты провел среди друзей,\r\n                                   [D] [C] [B]\r\nПока не понял, что ты совсем один?\r\n[Gm7]\r\nИ сколько ты искал путей к мечте своей,\r\n                                    [D] [C] [B]\r\nПока не понял, что дороги не найти?\r\n\r\n   [D]\r\n   И сколько дней ты ждал любви своей,\r\n   Пока не понял, что такой на свете нет?\r\n       [Cm]\r\n   Скажи, с какого дня\r\n        [Dm]\r\n   Ты стал обманывать себя;\r\n      [D#]            [F]             [Gm7]\r\n   И дай мне, дай мне, дай мне ответ!\r\n\r\nКак много ты узнаешь ерунды,\r\nПока поймешь, что ты не знаешь ничего?\r\nИ сколько раз ты ходил вокруг беды,\r\nПока тебя не затянуло самого?\r\n\r\n   И сколько сил ты за дело положил,\r\n   Пока не понял, что смысла в этом нет?\r\n   Скажи, с какого дня\r\n   Ты стал обманывать себя;\r\n   И дай мне, дай мне, дай мне ответ!\r\n\r\nКак много дней ты провел среди друзей,\r\nПока не понял, что ты совсем один?\r\nИ сколько ты искал путей к мечте своей,\r\nПока не понял, что дороги не найти?\r\n\r\n   И сколько сил ты за дело положил,\r\n   Пока не понял, что смысла в этом нет?\r\n   Скажи, с какого дня\r\n   Ты стал обманывать себя;\r\n   И дай мне, дай мне, дай мне ответ!', 5, 34, 6),
(185, 17, 'Свеча', '[Am]        [G]            [C]         [E7/B]\r\nБывают дни, когда опустишь руки, \r\n[Dm7]           [G7]              [C]     [Bm7] [Em7]\r\nИ нет ни слов, ни музыки, ни сил.\r\n[Am]          [G]                [C]      [E7/B] \r\nВ такие дни я был с собой в разлуке \r\n[Dm7]         [G7]            [C]\r\nИ никого помочь мне не просил.\r\n[Gm]           [A7]            [Dm]  [Dm/C]\r\nИ я хотел идти куда попало, \r\n[Bb]            [E7]                [Am] [Am/B] [Am/C]\r\nЗакрыть свой дом и не найти ключа.\r\n[A/C#] [Dm7]       [G7]         [C]     [A/C#] \r\n Но верил я: не все еще пропало, \r\n     [Dm7]   \r\nПока не меркнет свет,\r\n   [G7]        [C]   [A/C#]\r\nПока горит свеча.\r\n[Dm7]         [G7]          [C]      [A/C#] \r\nНо верил я: не все еще пропало,\r\n   [Dm7]\r\nПока не меркнет свет,\r\n [G7]            [C] [Em7] [Dm7]\r\nПока горит свеча.\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [G/F] [E7/B] [Am] [E7/B] [Am]\r\nИ спеть меня никто не мог заставить:\r\nМолчание - начало всех начал. \r\nНо если песней плечи мне расправить,\r\nКак трудно будет сделать так, чтоб я молчал!\r\nИ пусть сегодня дней осталось мало \r\nИ выпал снег, и кровь не горяча, \r\nЯ в сотый раз опять начну сначала, \r\nПока не меркнет свет,\r\nПока горит свеча!\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [E7] [Am] [A/C#] [Dm7] [G7] [C] [F] [B] [E7] [Am] [Am/G] [Fmaj7] [Asus2]', 4, 28, 7),
(186, 17, 'Снег', '[A]    [A/g]           [F#7]\r\nСнег. Город почти ослеп.\r\n  [Hm]    [Hm/a]           [E7]\r\nСвет. Красок на свете нет,\r\n[C#7]                 [Dmaj7]\r\nЕсть только белый цвет.\r\n [Hm7]    [C#m7]\r\nГород твой,\r\n  [F#7]     [Dmaj7]\r\nСловно корабль,\r\n  [Hm]      [Hm/a]     [E]   [E+]\r\nЛьдами захвачен в плен.\r\n\r\nЯ знаю один секрет:\r\nСнег скоро сойдет на нет -\r\nУ снега короткий век.\r\nГород твой, \r\nСолнцем согрет,\r\nПоплывет по весенней воде.\r\n\r\n [A] [A/g]          [F#7]\r\nНо я не могу понять:\r\n  [Hm] [Hm/a]                 [E7]\r\nКто дарит нам столько тепла,\r\n  [C#7]           [Dmaj7]\r\nЧтобы растаял снег?\r\n  [Hm7]        [C#m7]\r\nСто долгих дней \r\n  [F#7]         [Dmaj7]\r\nСнег был сильней\r\n     [Hm]         [Hm/a]\r\nИ исчез без следа\r\n         [E]  [E+]        [F]  [G] [A] [F] [G] [A]\r\nЛишь за пять теплых дней...', 3, 50, 8),
(187, 17, 'Право', '[C]\r\nКаждый, право, имеет право\r\n    [G7]               [F7] \r\nНа то, что слева, и то, что справа,\r\n    [C] \r\nНа черное поле, на белое поле,\r\n    [G7]          [F7] \r\nНа вольную волю и на неволю. \r\n\r\n   [Dm]              [G]\r\n   В этом мире случайностей нет,\r\n   [Dm]               [G] \r\n   Каждый шаг оставляет след,\r\n   [Dm]           [F7]                 [G7] \r\n   И чуда нет, и крайне редки совпаденья.\r\n        [F7]                 [G7] \r\n   И не изменится времени ход.\r\n         [F7]                 [G7] \r\n   Но часто паденьем становится взлет,\r\n         [F7]                 [G7]  \r\n   И видел я, как становится взлетом паденье. \r\n\r\n      [C]\r\n      Ты шел, забыв усталость и боль,\r\n         [Am]             [G] \r\n      Забыв и это, и то.\r\n      [C] \r\n      Ты видел вдали волшебный огонь,\r\n         [Am]                  [G] \r\n      Который не видел никто,\r\n      [F7]                 [G7] \r\n      И часто тебе смеялись вслед,\r\n      [F7]                 [G7] \r\n      Кричали, что пропадешь.\r\n      [F7]                 [G7] \r\n      Но что тебе досужий совет,\r\n      [F7]                 [G7] \r\n      Ты просто верил и шел на свет,\r\n      И я знаю, что ты дойдешь. \r\n\r\nВедь каждый, право, имеет право \r\nНа то, что слева, и то, что справа, \r\nНа черное поле, на белое поле, \r\nНа вольную волю и на неволю. \r\n\r\n   В этом мире случайностей нет, \r\n   Каждый шаг оставляет след, \r\n   И чуда нет, и крайне редки совпаденья. \r\n   И не изменится времени ход, \r\n   Но часто паденьем становится взлет, \r\n   И видел я, как становится взлетом паденье. \r\n\r\n      А ты дороги не выбирал \r\n      И был всегда не у дел. \r\n      И вот нашел не то, что искал, \r\n      А искал не то, что хотел. \r\n      И ты пытался меня обмануть, \r\n      Мол, во всем виновата судьба, \r\n      А я сказал тебе: "В добрый путь, \r\n      Ты сам согласился на этот путь, \r\n      Себя превратив в раба..." \r\n\r\nВедь каждый, право, имеет право \r\nНа то, что слева, и то, что справа, \r\nНа черное поле, на белое поле, \r\nНа вольную волю и на неволю.', 4, 32, 9),
(188, 17, 'Три Окна', '[Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nЯ забыл о бурях и о громе,\r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nМне теперь дороже тишина, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nИ живу я в старом-старом доме,\r\n   [Hm]            [E7]        [A] \r\nИз него выходят три окна. \r\n\r\nПервое окно выходит в поле, \r\nВ поле наших самых лучших лет, \r\nВ этом поле не бывает боли, \r\nИ любой вопрос находит свой ответ. \r\n   [Hm]            [E7]    [C#m]\r\n   Там и днем и ночью солнце светит, \r\n   [Hm]            [E7]           [F#m] \r\n   Летом и зимой цветет земля, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A] \r\n   Не взрослея, там играют дети, \r\n   [Hm]            [E7]        [A] \r\n   И один из них - наверно я. \r\n\r\nА окно второе вышло к лесу, \r\nТемный лес поднялся до небес, \r\nИ от солнца лес создал завесу, \r\nОт вопросов скрыл ответы лес. \r\n\r\n   И жизнь идет там по лесным законам,\r\n   И я пугался каждого куста, \r\n   Проходя по тропкам незнакомым, \r\n   В час, когда спускалась темнота. \r\n\r\nТретье окно выходит к океану, \r\nРовным ветром дышит океан, \r\nА за ним диковинные страны, \r\nИ никто не видел этих стран. \r\n\r\n   Словно вечность, океан огромен, \r\n   И сильна спокойствием волна, \r\n   И когда мне тесно в старом доме - \r\n   Я сажусь у третьего окна. \r\n\r\nПревратится в воду рек - Снег, \r\nСтанет облаком седым - Дым, \r\nСтанет домом твой родной Дом, \r\nИз руин воздвигнут вам Храм. \r\n\r\nДолжен кончиться любой - Бой, \r\nПобедит, сомненья нет, - Свет, \r\nЯ возьму букет цветов - Слов, \r\nИ раздам моим друзьям - Вам.', 6, 53, 10),
(189, 18, 'Вступление (Live)', 'Вступление (Live)', 1, 14, 1),
(190, 18, 'Битва с дураками (Live)', '[Hm]                    [A]\r\nСегодня самый лучший день,\r\n[Am]       [Em]          [Hm]\r\nПусть реют флаги над полками!\r\n                      [A]\r\nСегодня самый лучший день -\r\n[Am]       [Em]          [Hm]\r\nСегодня битва с дураками.\r\n\r\nКак много лет любой из нас,\r\nОт них терпел и боль, и муки.\r\nНо вышло время, пробил час,\r\nИ мы себе развяжем руки.\r\n\r\nДрузьям раздайте по ружью,\r\nВедь храбрецы средь них найдутся.\r\nДрузьям раздайте по ружью,\r\nИ дураки переведутся.\r\n\r\n[C#] [Hm] [A7]\r\n\r\nКогда последний враг упал,\r\nТруба победу проиграла -\r\nЛишь в этот миг я осознал,\r\nНасколько нас осталось мало!', 2, 0, 4),
(191, 18, 'Песня о капитане (Live)', '[C]              [Am]      [F]                [G]\r\nСлучилось так, что небо было синее, бездонное,\r\n[C]              [Am]      [F]                [G]\r\nИ легкий ветер по морю гнал мелкую волну,\r\n [Em]                 [Am]           [F]          [G]\r\nИ был корабль полон и друзьями и знакомыми,\r\n   [F]               [G]         [Am]\r\nИ путь держал в далекую страну,\r\n   [F]               [Fm]        [G]\r\nИ путь держал в далекую страну.\r\n\r\n    [C]              [Am]      [F]                [G]\r\n   И капитан был опытный, и все моря проплаваны,\r\n   [C]              [Am]      [F]                [G]\r\n   Он силы был недюжинной - дубы валил плечом.\r\n   [Em]                 [Am]           [F]          [G]\r\n   И нам казалось - много нас, мы сильные и храбрые,\r\n   [F]          [G]        [Am]\r\n   И никакая буря нипочем,\r\n   [F]          [G]        [Dm7] [G]\r\n   И никакая буря нипочем. \r\n\r\nНо что для моря наш корабль - скорлупка несерьезная,\r\nИ вот однажды вечером попали мы в туман,\r\nСредь неба грянул гром, собрались тучи грозные,\r\nПронесся средней силы ураган.\r\n\r\nИ вот что удивительно: Все сильные и храбрые,\r\nИ все, кому мы верили, воскликнули: «Тону!»\r\nМы ждали от них помощи, они же нас оставили\r\nИ первыми отправились ко дну,\r\nИ первыми отправились ко дну.\r\n\r\n   А нас носило по морю, надежды наши таяли,\r\n   И только по случайности нас приняла земля.\r\n   И те из нас, что выжили, по разным обстоятельствам\r\n   Забыли капитана корабля,\r\n   Забыли капитана корабля.', 3, 40, 5),
(192, 18, 'День рождения (Live)', '[G]\r\nСегодня тёплый день,\r\n[C]                  [G]                 [G7]\r\nИ в этот день я хочу поздравить Вас:\r\n[C]                      [G]\r\nУ Вас сегодня день рожденья -\r\n[D]             [G] \r\nТак в добрый час! \r\n\r\n    [G]\r\nИ стол накрыт давно,\r\n[C]                 [G] \r\nСегодня к Вам придут друзья,\r\n    [C]             [G] \r\nПридут друзья друзей,\r\n   [C]            [G] \r\nКоторым всё равно -\r\n            [D]              [G] \r\nК Вам можно или к Вам нельзя.\r\n\r\n[D]                       [G]\r\nИ будет много выпито вина\r\n     [G7]            [C] \r\nЗа праздничным столом, \r\nИ мальчик у окна напьется пьян:\r\n           [G]         [C]          [G]\r\nВ том не его вина, и он не хулиган,\r\n             [D]         [G]   [C]\r\nОн просто с Вами незнаком. \r\n\r\n    [G]\r\nИ кто-то вдруг решит,\r\n[C]                     [G] \r\nЧто девочка напротив так мила\r\n         [D]    [H7]    [Em] \r\nИ он давно хотел такой.\r\n           [C]          [G] \r\nИ, чтоб беседу поддержать,\r\n         [C]          [G] \r\nОна не станет возражать,\r\n         [C] \r\nНо скоро ей домой бежать,\r\n  [D]               [G] [G7] [C] \r\nИ он махнет рукой. \r\n\r\n   [G]\r\nИ будет много слов\r\n[C]               [G] \r\nО дисках и джинсах,\r\n       [C]          [G]  [H7] [Em]\r\nИ о погоде в небесах,\r\n        [A]      [D]             [G]\r\nА на часах уж за полночь давно. \r\n       [C]          [G]\r\nИ опустел Ваш дом,\r\n        [Em] [A]                  [Em]\r\nИ за окном уже мерещится рассвет.\r\n[D]         [G] \r\nДрузей уж нет -\r\n     [C]          [G] \r\nДрузья ушли давно,\r\n         [C]          [G] \r\nЛишь одиночество одно\r\n        [D]          [C] \r\nЗабыто Вами на столе,\r\n           [D]         [G] \r\nКак будто пачка сигарет. \r\n\r\n           [C]\r\nСпешу поздравить Вас,\r\n           [G] \r\nСпешу поздравить Вас -\r\n          [C]                          [G] [C]\r\nСегодня стали Вы на целый год старей...', 3, 42, 6),
(193, 18, 'Наш дом (Live)', '[G]\r\nГоды летят стрелою,\r\n  [Hm]\r\nСкоро и мы с тобою\r\n [G7]       [E7]       [Am] [D7]\r\nРазом из города уйдем.\r\n  [G]\r\nГде-то в лесу дремучем\r\n[Hm]\r\nИли на горной круче,\r\n [G7]     [E7]          [Am] [D7]\r\nСами себе построим дом.\r\n\r\n    [C]      [D]     [G]       [E7]\r\n   Там вокруг такая тишина,\r\n   [Am]     [D]              [G]  [E7]\r\n   Что вовек не снилась нам,\r\n   [Am]   [D]         [G]              [E7]\r\n   И за этой тишиной, как за стеной,\r\n   [C]       [D]             [G]\r\n   Хватит места нам с тобой.\r\n\r\nДвери покрепче справим,\r\nРядом на цепь посадим\r\nВосемь больших голодных псов.\r\nЧтобы они не спали,\r\nК дому не подпускали\r\nГоре, врагов и дураков.\r\n\r\n   Там вокруг такая тишина,\r\n   Что вовек не снилась нам,\r\n   И за этой тишиной, как за стеной,\r\n   Хватит места нам с тобой.\r\n\r\nРядом с парадной дверью\r\nНадо вкопать скамейку,\r\nА перед ней тенистый пруд.\r\nЧтобы, присев однажды,\r\nСмог бы подумать каждый,\r\nНужен ли он кому-то тут?\r\n\r\n   Там вокруг такая тишина,\r\n   Что вовек не снилась нам,\r\n   И за этой тишиной, как за стеной,\r\n   Хватит места нам с тобой.', 3, 24, 7),
(194, 18, 'Я сюда ещё вернусь (Live)', '[C]           [Am]\r\nКто может знать? \r\n[F]          [G]         [C]\r\nМожет там, а может тут,\r\n[C]            [Am]\r\nНас будут ждать \r\n[F]          [G]              [C]\r\nТак, как нас нигде не ждут.\r\n      [F]   [C]   [G]       [Dm]  [G]          [C]   [C7]\r\nНо зовет нас путь, подгоняя ночи тень,\r\n[F] [E]           [Am]    [F]         [G]            [C]\r\nЯ сюда еще вернусь, мне бы только выбрать день. \r\n\r\nПусть ты не хотел,\r\nНо все промчалось, как в кино -\r\nТам ты не допел,\r\nА тут не выпито вино.\r\nНо зовет нас путь, подгоняя ночи тень,\r\nЯ сюда еще вернусь, мне бы только выбрать день.\r\n\r\nИ как, как будет жаль,\r\nЕсли мне не хватит вдруг\r\nМест, где я побывал,\r\nИ ваших глаз, и ваших рук.\r\nНо зовет нас путь, подгоняя ночи тень,\r\nЯ сюда еще вернусь, мне бы только выбрать день.', 4, 57, 8),
(195, 18, 'Когда мы сойдем с ума (Live)', '[G]                    [C]                  [G] [C]\r\nЯ теряю с улыбкой, ты ищешь в тоске - не беда.\r\n       [G]                    [C]                  [G] [C]\r\nВремя быстро уходит сквозь пальцы - на то и вода.\r\n     [Em]                 [A7]\r\nТы еще видишь сны, а я вижу бетон,\r\n        [C]                    [A7]\r\nМы всю жизнь говорим, и всю жизнь не о том,\r\n        [C]       [Am7]          [D]        [D7]     [G] [C]\r\nЗнаешь, близится день, когда все мы сойдём с ума.\r\n\r\nОна ходит на срочную службу, он ходит с бубей.\r\nОн богат, как султан, а у ней денег нет, хоть убей.\r\nОна копит на жвачку, а он - на дома,\r\nНо кончается век, на исходе зима,\r\nИ настанет тот день - они оба сойдут с ума.\r\n\r\nЕсть предел, за которым вода превращается в лёд.\r\nЕсли все стены в ружьях - поверь, хоть одно, да пальнет.\r\nТы закроешь глаза и откроешь глаза,\r\nИ ты можешь быть против и можешь быть за,\r\nПриближая тот день, когда все мы сойдём с ума.\r\n\r\nМы живём так давно, что мы можем уже не спешить.\r\nИ не важно, кто жил, чтобы петь, а кто пел, чтобы жить.\r\nИ мы, сидя на троне над кучей дерьма,\r\nНаливаем друг другу дурного вина,\r\nОтмечая тот день, когда все мы сойдём с ума...\r\nОтмечая тот день, когда все мы сойдём с ума...\r\n     [C]       [Am7]          [D]        [D7]     [Em]\r\nОтмечая тот день, когда все мы сойдём с ума.\r\n     [C]       [Am7]          [D]        [D7]     [G] [C]\r\nОтмечая тот день, когда все мы сойдём с ума.\r\n    [D7]    [G]  [C] [G]\r\nСойдём с ума...', 3, 30, 2),
(196, 18, 'Однажды мир прогнётся под нас (Live)', '[Em]         [D]        [C]\r\nВот море молодых колышат супербасы\r\n      [H7]                         [Em]\r\nМне триста лет, я выполз из тьмы.\r\n                [D]                [C]\r\nОни торчат под рейв и чем-то пудрят носы -\r\n [H7]                  [Em]\r\nОни не такие, как мы.\r\n [Am]\r\nИ я не горю желаньем лезть в чужой монастырь,\r\n                              [H7]\r\nЯ видел эту жизнь без прикрас,\r\n     [Em]           [D]            [A]        [C]\r\nНе стоит прогибаться под изменчивый мир,\r\n        [H7]                       [Em]\r\nПусть лучше он прогнётся под нас.\r\n    [H7]                       [Em]\r\nОднажды он прогнётся под нас.\r\n\r\nОдин мой друг - он стоил двух, он ждать не привык\r\nБыл каждый день последним из дней.\r\nОн пробовал на прочность этот мир каждый миг -\r\nМир оказался прочней\r\nНу что же, спи спокойно, позабытый кумир,\r\nТы брал свои вершины не раз.\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\n\r\nДругой держался русла и теченье ловил,\r\nПодальше от крутых берегов.\r\nОн был, как все, и плыл, как все, и вот он приплыл -\r\nНи дома, ни друзей, ни врагов.\r\nИ жизнь его похожа на фруктовый кефир -\r\nВидал я и такое не раз.\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\n\r\nПусть старая джинса давно затёрта до дыр,\r\nПускай хрипит раздолбанный бас -\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\nОднажды он прогнётся под нас.', 3, 11, 9);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(197, 18, 'Спускаясь к великой реке (Live)', '[F#m]\r\nКрестики-нолики, фантики?\r\n  [G#]             [C#m] \r\nСтали теперь солдатики,\r\n  [F#]             [Hm] \r\nСтали теперь служивые,\r\n [G#]             [C#7] \r\nКаждому вышел срок.\r\n   [F#m] \r\nС вечера спорили-ссорились,\r\n[G#]            [C#m] \r\nА поутру построились,\r\n[F#]           [Hm] \r\nА поутру прицелились,\r\n [G#]                [C#7] \r\nКаждый нажал на курок. \r\n\r\n        [F#m]       [C#]      [D]\r\n   Спускаясь к великой реке,\r\n        [A]       [D]       [A]        [C#7] \r\n   Мы все оставляем следы на песке.\r\n      [F#m]        [C#]         [D]\r\n   И лодка скользит в темноте.\r\n     [A]      [D]        [A]       [C#7] \r\n   А нам остаются круги на воде. \r\n\r\nСабельки, пулечки, пушечки, \r\nВыбритые макушечки. \r\nЦепкие лапы Родины \r\nДа письмецо семье. \r\nХолмики, крестики-нолики, \r\nГде вы теперь соколики? \r\nГде вы теперь служивые, \r\nСпите в какой земле? \r\n\r\n   Спускаясь к великой реке, \r\n   Мы все оставляем следы на песке. \r\n   И лодка скользит в темноте, \r\n   А нам остаются круги на воде.\r\n   \r\n        [G#m]       [D#]      [E]\r\n   Спускаясь к великой реке,\r\n        [H]       [E]       [H]        [D#7] \r\n   Мы все оставляем следы на песке.\r\n      [G#m]        [D#]         [E]\r\n   И лодка скользит в темноте,\r\n      [H]      [E]        [H]       [D#7] \r\n   А нам остаются круги на воде.', 3, 23, 10),
(198, 18, 'Я дам тебе знать (Live)', '[E]  [H7]                   [E]  [E7]\r\nКогда солдаты придут с победой домой,\r\n           [A]   [Am]              [E]  [C#]\r\nКогда мы сможем гордиться страной.\r\n       [F#7]            [C7]       [E]          [C#7]\r\nКогда летним днем закружит снег в моем окне,\r\n             [F#7] [H7]                  [E] [H7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n\r\nКогда в столице не станет уличных дам,\r\nНе будут бить ни по лицам, ни по паспортам,\r\nКогда для всех вождей мавзолей поставят на луне,\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n\r\n           [E]        [H7]                [E]  [E7]\r\nКогда морской прибой превратится в отбой,\r\n           [A]              [Am]                [E]  [C#]\r\nКогда за мной и тобой придет архангел с трубой,\r\n       [F#7]           [C7]        [E]              [C#7]\r\nКогда наша жизнь привидится мне в кошмарном сне,\r\n             [F#7] [H7]                  [E] [C#7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n             [F#7] [H7]                  [E] [C#7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n             [F#7] [H7]                  [E]\r\nЯ дам тебе знать и ты вернешься ко мне.', 2, 28, 11),
(199, 18, 'Он был старше её (Live)', '[Em]\r\nОн был старше ее. Она была хороша,\r\nВ ее маленьком теле гостила душа,\r\n        [Am]                       [H7]           [Em]\r\nОни ходили вдвоем, они не ссорились по мелочам.\r\nИ все вокруг говорили: чем не муж и жена?\r\nИ лишь одна ерунда его сводила с ума -\r\n         [Am]           [H7]               [Em]\r\nОн любил ее, она любила летать по ночам.\r\n          [E7]\r\n        Он страдал, если за окном темно,\r\n                                    [Am]\r\n        Он не спал, на ночь запирал окно,\r\n                                       [H7]\r\n        Он рыдал, пил на кухне горький чай,\r\n                                     [Em]\r\n        В час, когда она летала по ночам.\r\n        [E7]\r\n        А потом, по утру, она клялась,\r\n                                    [Am]\r\n        Что вчера это был последний раз,\r\n                                       [H7]\r\n        Он прощал, но ночью за окном темно,\r\n                          [Em]\r\n        И она улетала все равно. \r\n\r\nА он дарил ей розы, покупал ей духи,\r\nПосвящал ей песни, читал ей стихи,\r\nОн хватался за нитку, как последний дурак.\r\nОн боялся, что когда-нибудь под полной луной,\r\nОна забудет дорогу домой,\r\nИ однажды ночью вышло именно так. \r\n\r\nОн страдал, если за окном темно, \r\nОн не спал, на ночь запирал окно, \r\nОн рыдал, пил на кухне горький чай, \r\nВ час, когда она летала по ночам. \r\nА потом, поутру она клялась, \r\nЧто вчера это был последний раз, \r\nОн прощал, но ночью за окном темно, \r\nИ она улетала все равно. \r\n\r\nИ три дня и три ночи он не спал и не ел,\r\nОн сидел у окна и на небо глядел,\r\nОн твердил ее имя, выходил встречать на карниз.\r\nА когда покатилась на убыль луна,\r\nОн шагнул из окна, как шагала она,\r\nОн взлетел, как взлетала она, но не вверх, а вниз. \r\n\r\nОн страдал, если за окном темно,\r\nОн не спал, на ночь запирал окно,\r\nОн рыдал, пил на кухне горький чай,\r\nВ час, когда она летала по ночам.\r\nА потом, поутру она клялась,\r\nЧто вчера это был последний раз,\r\nОн прощал, но ночью за окном темно,\r\nИ она улетала все равно.', 3, 22, 12),
(200, 18, 'Проводница (Live)', '[D]                     [G]\r\nКогда над планетой этой стелется ночь,\r\n       [D]                    [G]\r\nИ человечество отходит ко сну,\r\n      [D]                   [G]\r\nОна уже на посту, готова людям помочь\r\n        [D]               [G]\r\nИ провожает на покой луну.\r\n       [D]                    [G]\r\nОна стоит королевой, машет ручкою левой.\r\n         [D]              [G]\r\nВ синем кителе она хороша -\r\n    [D]               [G]\r\nЕе важное дело, ее нежное тело\r\n     [D]                [G]\r\nИ до ужаса большая душа.\r\n\r\n   [A]\r\n   Если ты веришь в чудо,\r\n          [G]\r\n   Если ставишь на свою звезду,\r\n           [A]\r\n   Ты во что бы то ни стало познакомишься с ней,\r\n             [G]\r\n   А также все, что я имею в виду,\r\n              [Em]\r\n   Какой это кайф, кайф, кайф, кайф!\r\n          [Hm]\r\n   Проводница! Проводница! Проводница! Проводница!\r\n          [D]\r\n   Проводница! Проводница! Проводница! Проводница!\r\n\r\nОфициант, как юла, стирает пыль со стола,\r\nКогда она идет в вагон-ресторан.\r\nЕе дед по мамаше был Дерсу Узала,\r\nЕе прадед был Сусанин Иван.\r\nОна проводит тебя по скалистым горам\r\nИ не оступится на горной тропе,\r\nОна нальет тебе чай в стакан,\r\nА потом уйдет в свое купе.\r\n\r\n   Если ты веришь в чудо,\r\n   Если ставишь на свою звезду,\r\n   Ты во что бы то ни стало познакомишься с ней,\r\n   А также все, что я имею в виду,\r\n   Какой это кайф, кайф, кайф, кайф!\r\n   Проводница! Проводница! Проводница! Проводница!\r\n   Проводница! Проводница! Проводница! Проводница!', 3, 16, 13),
(201, 18, 'Он играет на похоронах и танцах (Live)', '[Em]\r\nОн играет на похоронах и танцах,\r\n[F]         [H]\r\nВсе зовут - там и тут.\r\n[Em]\r\nИ ни там, ни тут не может он остаться,\r\n[F]          [H]\r\nСнова ждут там и тут.\r\n[F]                        [Em]\r\nИ вновь смычок рождает звук,\r\n[F]                         [H]\r\nСто новых свадеб, сто разлук.\r\n[Em]\r\nОн играет на похоронах и танцах,\r\n[F]                   [H]      [Em]\r\nВся наша жизнь - одно из двух.\r\n[D7]                      [G]\r\nКогда стучится в дом беда, не плачь,\r\n[H]                          [Em]\r\nМы здесь с тобой не навсегда.\r\n[D7]                        [G]\r\nЧто б ни случилось, никогда не плачь,\r\n[H]                   [Em]\r\nИграй, и горе не беда.\r\n\r\nИ когда-нибудь совсем не там, где надо,\r\nВыйдет срок, прозвенит звонок.\r\nИ я вспомню тех, кто шел со мною рядом,\r\nТо, что смог и не смог.\r\nНичто не вечно под луной,\r\nЯ упаду на шар земной.\r\nПусть не будет комиссаров в пыльных шлемах,\r\nПусть он сыграет надо мной.\r\n\r\nОн играет на похоронах и танцах,\r\nВсе зовут там и тут.\r\nИ ни там, ни тут не может он остаться,\r\nСнова ждут там и тут.\r\nИ вновь смычок рождает звук.\r\nСто новых свадеб, сто разлук.\r\nОн играет на похоронах и танцах,\r\nВся наша жизнь - одно из двух.', 3, 45, 14),
(202, 18, 'Старая песня о главном (Live)', '[C]            [G6] [C]             [G6]\r\nЕсли все не так и на сердце мрак,\r\n[C]           [E7]      [F]   [A7] \r\nЕсли душу гложет печаль,\r\n [Dm]          [A7]     [Dm7]         [A7]\r\nПоезжай, дружок, к Ленинским горам\r\n[D]                 [D7]     [G]   [G7] \r\nИ вглядись в бескрайнюю даль.\r\n [C]             [G6]  [C]            [G6]\r\nПусть перед тобой ляжет город твой,\r\n [C]         [E7]       [F] [A7] \r\nГород голубых площадей\r\n[Dm]    [Fm] [C]       [A7]\r\nИ боевой и трудовой\r\n  [D]      [G7]        [Gm] [A7] \r\nСлавы советских людей.\r\n[Dm]    [Fm] [C]       [A7]\r\nИ Боевой и Трудовой\r\n  [D]      [G7]        [C]  [G] \r\nСлавы советских людей.\r\n\r\n    [C] [G6]  [C] [G6] [C]         [A]    [Dm] [A7]\r\n   Тихо, тихо плещет Москва-река,\r\n     [Dm]  [A7]  [Dm] [A7]  [D]       [D7]      [G]     [G7]\r\n   Спит портниха, спит руководство ЦК на дачах,\r\n    [C]     [E7] [Am] [C7]   [F]       [A7]        [Dm] [A7] \r\n   Пусть на башнях звезды горят в облаках.\r\n     [Dm]        [Fm]    [C]        [A7]\r\n   Сладко ты спишь, черный малыш,\r\n      [D]        [G7]        [Gm] [A7] \r\n   В добрых еврейских руках,\r\n     [Dm]        [Fm]    [C]        [A7]\r\n   Сладко ты спишь, черный малыш,\r\n       [D]       [G7]        [C]  [G] \r\n   В крепких советских руках.\r\n\r\nЗдесь одни друзья, здесь грустить нельзя. \r\nСколько с ними песен ни пой,\r\nЕсли уж один скажет тебе "Да", \r\nЗначит, скажет "Да" другой, и третий. \r\nЛишь отдай приказ, встанут в тот же час, \r\nОтгремев, закончат бои,\r\nВ зной и в пургу бьют по врагу, \r\nА иногда по своим,\r\nВ зной и в пургу бьют по врагу, \r\nНо иногда по своим.\r\n\r\n   Сладко-сладко плещет Москва-река.\r\n   Спят солдаты, спят по баракам зека на нарах, \r\n   Выше крыши дремлет пилот в облаках.\r\n   Тихо ты спишь, черный малыш, \r\n   В добрых еврейских руках,\r\n   Сладко ты спишь, черный малыш, \r\n   В длинных советских руках.', 5, 17, 15),
(203, 18, 'Эпоха большой нелюбви (Live)', '[Hm7]\r\nКогда стемнеет не по закону\r\nДо срока и до поры,\r\n   [Em]\r\nЯ выключу свет, и псом бездомным\r\n[F#7]\r\nВыползу из конуры.\r\n    [Hm7]\r\nНе бойся меня в этот сумрачный вечер,\r\nИмя свое назови -\r\n  [Em]             [Hm7]\r\nЯ очень ценю случайные встречи\r\n    [F#7]               [Hm] [A] [G] [Hm7]\r\nВ эпоху большой нелюбви.\r\n\r\nТебе совсем не надо стараться\r\nДержать неприступный взгляд -\r\nТы тоже устала от всех отбиваться,\r\nА я не клиент, а брат.\r\nНадеюсь, ты примешь мое предложенье -\r\nМы выпьем и поговорим.\r\nЯ очень ценю тепло отношений\r\nВ эпоху большой нелюбви.\r\n\r\nТы все еще думаешь - я тебя клею,\r\nНо это - твои дела.\r\nПоверь, что мне уже стало теплее\r\nПохоже, и ты ожила.\r\nА все, что было, зачтется однажды,\r\nКаждый получит свои -\r\nВсе семь миллиардов растерянных граждан\r\nЭпохи большой нелюбви.\r\n\r\n[C#m-5]\r\n              [Hm6]\r\nБольшой нелюбви\r\n[C#m-5] [Hm-5]\r\n              [Hm6]\r\nБольшой нелюбви\r\n[A] [G]\r\n              [Hm]\r\nБольшой нелюбви', 3, 29, 3),
(204, 18, 'Странные дни (Live)', '[Dm7]\r\nЭто было давно - не вспомнить наверняка:\r\nТогда еще читали книги и боялись ЦК,\r\nТогда не знали слова «киллер» и «прокладки «O-Би» -\r\nОдин студент одной студентке объяснялся в любви.\r\n\r\n             [Dm7]           [C]           [H]       [B]\r\n   Он ей сказал: «Я вижу образ твой, рисуя цветы,\r\n             [Dm7]           [C]           [H]       [B]\r\n   Ведь у меня на сердце двое - Джимми Хендрикс и ты,\r\n             [Dm7]           [C]           [H]       [B]\r\n   И помни - я всегда с тобою, где бы ты ни была,\r\n                 [Dm7]                       [F]\r\n   Поскольку, beautiful people - all you need - is love!»\r\n\r\n         [Dm7]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n         [Dm]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n         [Dm7]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n         [Dm]      [C] [H] [C] [C#]\r\n      Странные дни...\r\n\r\nОна сказала: «Ты прикольный и хипповый чувак,\r\nНо моя мама говорит - с тобою что-то не так.\r\nВ Стране Советов у тебя нет никаких перспектив,\r\nТак что прости - я побежала на комсомольский актив».\r\n\r\n   А он кричал: «Придёт свобода для советских битлов,\r\n   Портреты лысого урода поснимают с домов,\r\n   Еще чуть-чуть переждать - и наше солнце взойдёт!»\r\n   Пока товарищ в чём-то штатском не зашил ему рот.\r\n\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...\r\n\r\nС тех пор прошла тыща лет, сменили цвет времена,\r\nВокруг совсем другие лица и другая страна.\r\nНо, проходя по Тверской, я вспоминаю их вновь -\r\nГде тот студент и та студентка, и где та любовь?\r\n\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...\r\n      Странные дни...', 3, 47, 16),
(205, 18, 'Дай мне руку, душа моя (Live)', '[Dm7]                [Ddim]\r\nОна сегодня не пойдет в кино\r\n[A7]                     [Dm7]\r\nНи с ним, и даже не с ним\r\n      [Dm7/c]             [Ddim]\r\nЗа окном темно, она глядит в окно -\r\n[A7]               [Dm7]\r\nВечер тает, как дым.\r\n\r\n   [Cm]                 [Cm7]\r\n   Ни катастроф, ни удач впереди,\r\n   [Cdim]                [H]\r\n   А в общем, все ничего.\r\n   [Gm]                      [Dm7]\r\n   И мужиков вокруг хоть пруд пруди\r\n   [Ddim]             [A7] [Ddim]           [A7]\r\n   И все хотят одного, все хотят одного.\r\n\r\nОна слишком горда, чтобы не верить в успех,\r\nНо быстро катятся дни.\r\nОна так хочет, чтобы все, как у всех,\r\nНо чтоб, при этом, не так, как они.\r\n\r\n   Она свободна, как и была,\r\n   Она умеет говорить слово «нет».\r\n   Но все больнее заедают дела\r\n   И уже не шестнадцать лет, уже не шестнадцать лет...\r\n\r\n      [B]          [C]     [Am7] [Dm7]\r\n      И жизнь такая упрямая -\r\n      [Gm]     [Gm7]      [A7]      [Dm7]\r\n      Всё решает за неё и за них.\r\n      [B]        [C]       [F]\r\n      Дай мне руку, душа моя,\r\n           [Gm7]                [A7]\r\n      У меня хватит сил на двоих.\r\n\r\n      Жизнь такая упрямая - \r\n      Всё решает за неё и за них.\r\n      Дай мне руку, душа моя,\r\n      У меня хватит сил на двоих.\r\n\r\n      [Dm7]\r\nНа двоих...', 3, 31, 17),
(206, 18, 'Музыка под снегом (Live)', '[Hm]\r\nВ летнем парке зима,\r\n                   [H7] \r\nВ летнем парке концерт.\r\n[G]                 [F#m] \r\nВсе начнется вот-вот,\r\n                    [Em]\r\nЖаль, что зрителей нет,\r\n\r\n   [C]            [Hm]\r\n   И оркестр укрыт снегом -\r\n   [C]                [Hm] \r\n   Словно вата, глухим снегом,\r\n   [C]             [Hm]        [C7] \r\n   И соната слышна едва-едва... \r\n\r\nГолос скрипки звенит, \r\nКак стекло о стекло, \r\nИ трубу не отнять \r\nОт заснеженных губ...\r\n\r\n   А в каждой ноте поет лето, \r\n   И с собою зовет лето, \r\n   И соната слышна едва-едва... \r\n\r\n      [A]                  [D]\r\n      То взлетает, как стая\r\n                  [F#7]\r\n      Оттаявших птиц,\r\n      [A]               [D] \r\n      То ложится под ноги,\r\n                      [F#7] \r\n      Послушно, как снег,\r\n                [Em]\r\n      Ни для кого...\r\n\r\nИ восторг в их глазах\r\nНам вовек не понять, \r\nИм уже не помочь, \r\nИ приходится лгать.\r\n\r\n   И я опять прохожу мимо, \r\n   Прохожу, и гляжу мимо, \r\n   И соната слышна едва-едва...', 4, 51, 18),
(207, 19, 'Однажды мир прогнётся под нас', '[Em]         [D]        [C]\r\nВот море молодых колышат супербасы\r\n      [H7]                         [Em]\r\nМне триста лет, я выполз из тьмы.\r\n                [D]                [C]\r\nОни торчат под рейв и чем-то пудрят носы -\r\n [H7]                  [Em]\r\nОни не такие, как мы.\r\n [Am]\r\nИ я не горю желаньем лезть в чужой монастырь,\r\n                              [H7]\r\nЯ видел эту жизнь без прикрас,\r\n     [Em]           [D]            [A]        [C]\r\nНе стоит прогибаться под изменчивый мир,\r\n        [H7]                       [Em]\r\nПусть лучше он прогнётся под нас.\r\n    [H7]                       [Em]\r\nОднажды он прогнётся под нас.\r\n\r\nОдин мой друг - он стоил двух, он ждать не привык\r\nБыл каждый день последним из дней.\r\nОн пробовал на прочность этот мир каждый миг -\r\nМир оказался прочней\r\nНу что же, спи спокойно, позабытый кумир,\r\nТы брал свои вершины не раз.\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\n\r\nДругой держался русла и теченье ловил,\r\nПодальше от крутых берегов.\r\nОн был, как все, и плыл, как все, и вот он приплыл -\r\nНи дома, ни друзей, ни врагов.\r\nИ жизнь его похожа на фруктовый кефир -\r\nВидал я и такое не раз.\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\n\r\nПусть старая джинса давно затёрта до дыр,\r\nПускай хрипит раздолбанный бас -\r\nНе стоит прогибаться под изменчивый мир,\r\nПусть лучше он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\nОднажды он прогнётся под нас.\r\nОднажды он прогнётся под нас.', 3, 15, 1),
(208, 19, 'Мой друг (Лучше всех играет блюз)', '[C#m7]\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОн на взводе -\r\nНе подходи,\r\nОн уходит\r\nВсегда один.\r\n\r\n         [A7]\r\n   Но зато мой друг\r\n                       [C#m7]\r\n   Лучше всех играет блюз,\r\n           [A7]\r\n   Круче всех вокруг\r\n                    [C#m7]\r\n   Он один играет блюз.\r\n\r\nОн не знает\r\nУмных слов -\r\nОн считает\r\nВас за козлов,\r\nДаже в морге\r\nОн будет играть -\r\nНа восторги\r\nЕму плевать.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nНочь - на выдох,\r\nДень - на вдох,\r\nКто не выжил,\r\nТот и сдох.\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.', 4, 9, 2),
(209, 19, 'Картонные крылья любви', '[Am7]\r\nОпять холода.\r\n   [H7] \r\nЗима на года,\r\n[Dm]         [E7]     [Am] \r\nИ ангелы к югу летят.\r\n     [Am7] \r\nНам завтра в полет.\r\n   [H7] \r\nТебе на восход,\r\n    [Dm]        [E7]         [F]   [E7] \r\nА мне, по всему, - на закат.\r\n\r\n            [Dm]\r\n   Но я сорвусь с земли, словно пес с цепи,\r\n           [Am] \r\n   И поднимусь к облакам.\r\n           [B] \r\n   И я войду в облака.\r\n                                       [E7] \r\n   Моя страна далека, но я найду тебя там.\r\n   [Dm7]            [F]  [E7] \r\n   О, картонные крылья -\r\n                  [Am] \r\n   Это крылья любви. \r\n\r\nВода и весло, \r\nСвобода и зло. \r\nЧто делать и кто виноват? \r\nВсе это пройдет. \r\nЛети на восход, \r\nА я, так и быть, на закат.\r\n\r\n   Но я сорвусь с земли, словно пес с цепи, \r\n   И поднимусь к облакам. \r\n   И я войду в облака. \r\n   Моя страна далека, но я найду тебя там. \r\n   О, картонные крылья...\r\n\r\n   Но я сорвусь с земли, словно пес с цепи, \r\n   И поднимусь к облакам. \r\n   И я войду в облака. \r\n   Моя страна далека, но я найду тебя там. \r\n   О, картонные крылья - \r\n   Это крылья любви.', 4, 29, 3),
(210, 19, 'Когда я был большим', '[A7]\r\nКогда я был большим, я не боялся машин,\r\nМой папа - снежный барс, покоритель вершин,\r\n         [G7]       [D7]           [A7] \r\nИ с девяти до пяти я работал героем. \r\nЯ вылетал из окна, лишь только цель видна, \r\nВыпивал по два баллона молодого вина\r\n    [G7]                  [D7]                [A7]\r\nИ учил Брюса Ли кордебалету и хождению строем \r\n\r\n            [D]\r\n   Я видел цель вдали, имел жену Натали, \r\n   Ходил на край Земли, и Сальвадор Дали\r\n         [H7]                                  [E7] \r\n   Никогда не торговался, покупая у меня картины.\r\n          [D] \r\n   И я летал по ночам, напоминая сыча, \r\n   Сочинил "ча-ча-ча" и лечил Ильича\r\n   [H7]                 [E7]          [A] \r\n   От простуды, геморроя и скарлатины. \r\n\r\nКогда я был большим, я проглотил аршин - \r\nМеня смотрел Чумак, но ничего не решил, \r\nИ я потом сто лет подряд не проходил в ворота. \r\nЯ изобрел рассвет, придумал группу "Секрет", \r\nНарисовал на стене Б.Г. то, чего нет, - \r\nС меня писали портрет Архимед и Нино Рота \r\n\r\n   И я ходил по домам очаровательных дам, \r\n   Со мною жил Моше Даян и Садам -\r\n   Мы принимали "Агдам" и зимой, и летом. \r\n   Но только как-то раз беседа не задалась, \r\n   И тогда один другому взял и высадил глаз, \r\n   Но никогда потом не вспоминал об этом. \r\n\r\nКогда я был большим, я не курил анаши - \r\nЯ покупал гашиш в конторе Чана Кай Ши, \r\nИ не тужил, и сладко жил, но все-таки помер. \r\nМеня несли на руках ну все, кому не лень, \r\nИ по планете был объявлен нерабочий день, \r\nИ Владислав Третьяк в знак печали сменил свой номер. \r\n\r\n   И каждый колокол в стране потом звонил по мне -\r\n   Мое имя написали на Великой Стене, \r\n   Моей жене подарили Магадан и остров Вуду. \r\n   Но с той поры прошло уже две тысячи лет, \r\n   И я опять пришел на этот белый свет, \r\n   Но боюсь, что таким большим уже больше не буду.', 3, 8, 4),
(211, 19, 'Спускаясь к великой реке', '[F#m]\r\nКрестики-нолики, фантики?\r\n  [G#]             [C#m] \r\nСтали теперь солдатики,\r\n  [F#]             [Hm] \r\nСтали теперь служивые,\r\n [G#]             [C#7] \r\nКаждому вышел срок.\r\n   [F#m] \r\nС вечера спорили-ссорились,\r\n[G#]            [C#m] \r\nА поутру построились,\r\n[F#]           [Hm] \r\nА поутру прицелились,\r\n [G#]                [C#7] \r\nКаждый нажал на курок. \r\n\r\n        [F#m]       [C#]      [D]\r\n   Спускаясь к великой реке,\r\n        [A]       [D]       [A]        [C#7] \r\n   Мы все оставляем следы на песке.\r\n      [F#m]        [C#]         [D]\r\n   И лодка скользит в темноте.\r\n     [A]      [D]        [A]       [C#7] \r\n   А нам остаются круги на воде. \r\n\r\nСабельки, пулечки, пушечки, \r\nВыбритые макушечки. \r\nЦепкие лапы Родины \r\nДа письмецо семье. \r\nХолмики, крестики-нолики, \r\nГде вы теперь соколики? \r\nГде вы теперь служивые, \r\nСпите в какой земле? \r\n\r\n   Спускаясь к великой реке, \r\n   Мы все оставляем следы на песке. \r\n   И лодка скользит в темноте, \r\n   А нам остаются круги на воде.\r\n   \r\n        [G#m]       [D#]      [E]\r\n   Спускаясь к великой реке,\r\n        [H]       [E]       [H]        [D#7] \r\n   Мы все оставляем следы на песке.\r\n      [G#m]        [D#]         [E]\r\n   И лодка скользит в темноте,\r\n      [H]      [E]        [H]       [D#7] \r\n   А нам остаются круги на воде.', 3, 39, 5),
(212, 19, 'Он был старше её', '[Em]\r\nОн был старше ее. Она была хороша,\r\nВ ее маленьком теле гостила душа,\r\n        [Am]                       [H7]           [Em]\r\nОни ходили вдвоем, они не ссорились по мелочам.\r\nИ все вокруг говорили: чем не муж и жена?\r\nИ лишь одна ерунда его сводила с ума -\r\n         [Am]           [H7]               [Em]\r\nОн любил ее, она любила летать по ночам.\r\n          [E7]\r\n        Он страдал, если за окном темно,\r\n                                    [Am]\r\n        Он не спал, на ночь запирал окно,\r\n                                       [H7]\r\n        Он рыдал, пил на кухне горький чай,\r\n                                     [Em]\r\n        В час, когда она летала по ночам.\r\n        [E7]\r\n        А потом, по утру, она клялась,\r\n                                    [Am]\r\n        Что вчера это был последний раз,\r\n                                       [H7]\r\n        Он прощал, но ночью за окном темно,\r\n                          [Em]\r\n        И она улетала все равно. \r\n\r\nА он дарил ей розы, покупал ей духи,\r\nПосвящал ей песни, читал ей стихи,\r\nОн хватался за нитку, как последний дурак.\r\nОн боялся, что когда-нибудь под полной луной,\r\nОна забудет дорогу домой,\r\nИ однажды ночью вышло именно так. \r\n\r\nОн страдал, если за окном темно, \r\nОн не спал, на ночь запирал окно, \r\nОн рыдал, пил на кухне горький чай, \r\nВ час, когда она летала по ночам. \r\nА потом, поутру она клялась, \r\nЧто вчера это был последний раз, \r\nОн прощал, но ночью за окном темно, \r\nИ она улетала все равно. \r\n\r\nИ три дня и три ночи он не спал и не ел,\r\nОн сидел у окна и на небо глядел,\r\nОн твердил ее имя, выходил встречать на карниз.\r\nА когда покатилась на убыль луна,\r\nОн шагнул из окна, как шагала она,\r\nОн взлетел, как взлетала она, но не вверх, а вниз. \r\n\r\nОн страдал, если за окном темно,\r\nОн не спал, на ночь запирал окно,\r\nОн рыдал, пил на кухне горький чай,\r\nВ час, когда она летала по ночам.\r\nА потом, поутру она клялась,\r\nЧто вчера это был последний раз,\r\nОн прощал, но ночью за окном темно,\r\nИ она улетала все равно.', 3, 38, 6),
(213, 19, 'Я дам тебе знать', '[E]  [H7]                   [E]  [E7]\r\nКогда солдаты придут с победой домой,\r\n           [A]   [Am]              [E]  [C#]\r\nКогда мы сможем гордиться страной.\r\n       [F#7]            [C7]       [E]          [C#7]\r\nКогда летним днем закружит снег в моем окне,\r\n             [F#7] [H7]                  [E] [H7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n\r\nКогда в столице не станет уличных дам,\r\nНе будут бить ни по лицам, ни по паспортам,\r\nКогда для всех вождей мавзолей поставят на луне,\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n\r\n           [E]        [H7]                [E]  [E7]\r\nКогда морской прибой превратится в отбой,\r\n           [A]              [Am]                [E]  [C#]\r\nКогда за мной и тобой придет архангел с трубой,\r\n       [F#7]           [C7]        [E]              [C#7]\r\nКогда наша жизнь привидится мне в кошмарном сне,\r\n             [F#7] [H7]                  [E] [C#7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n             [F#7] [H7]                  [E] [C#7]\r\nЯ дам тебе знать и ты вернешься ко мне.\r\n             [F#7] [H7]                  [E]\r\nЯ дам тебе знать и ты вернешься ко мне.', 2, 34, 7),
(214, 19, 'Проводница', '[D]                     [G]\r\nКогда над планетой этой стелется ночь,\r\n       [D]                    [G]\r\nИ человечество отходит ко сну,\r\n      [D]                   [G]\r\nОна уже на посту, готова людям помочь\r\n        [D]               [G]\r\nИ провожает на покой луну.\r\n       [D]                    [G]\r\nОна стоит королевой, машет ручкою левой.\r\n         [D]              [G]\r\nВ синем кителе она хороша -\r\n    [D]               [G]\r\nЕе важное дело, ее нежное тело\r\n     [D]                [G]\r\nИ до ужаса большая душа.\r\n\r\n   [A]\r\n   Если ты веришь в чудо,\r\n          [G]\r\n   Если ставишь на свою звезду,\r\n           [A]\r\n   Ты во что бы то ни стало познакомишься с ней,\r\n             [G]\r\n   А также все, что я имею в виду,\r\n              [Em]\r\n   Какой это кайф, кайф, кайф, кайф!\r\n          [Hm]\r\n   Проводница! Проводница! Проводница! Проводница!\r\n          [D]\r\n   Проводница! Проводница! Проводница! Проводница!\r\n\r\nОфициант, как юла, стирает пыль со стола,\r\nКогда она идет в вагон-ресторан.\r\nЕе дед по мамаше был Дерсу Узала,\r\nЕе прадед был Сусанин Иван.\r\nОна проводит тебя по скалистым горам\r\nИ не оступится на горной тропе,\r\nОна нальет тебе чай в стакан,\r\nА потом уйдет в свое купе.\r\n\r\n   Если ты веришь в чудо,\r\n   Если ставишь на свою звезду,\r\n   Ты во что бы то ни стало познакомишься с ней,\r\n   А также все, что я имею в виду,\r\n   Какой это кайф, кайф, кайф, кайф!\r\n   Проводница! Проводница! Проводница! Проводница!\r\n   Проводница! Проводница! Проводница! Проводница!', 2, 58, 8),
(215, 19, 'Он играет на похоронах и танцах', '[Em]\r\nОн играет на похоронах и танцах,\r\n[F]         [H]\r\nВсе зовут - там и тут.\r\n[Em]\r\nИ ни там, ни тут не может он остаться,\r\n[F]          [H]\r\nСнова ждут там и тут.\r\n[F]                        [Em]\r\nИ вновь смычок рождает звук,\r\n[F]                         [H]\r\nСто новых свадеб, сто разлук.\r\n[Em]\r\nОн играет на похоронах и танцах,\r\n[F]                   [H]      [Em]\r\nВся наша жизнь - одно из двух.\r\n[D7]                      [G]\r\nКогда стучится в дом беда, не плачь,\r\n[H]                          [Em]\r\nМы здесь с тобой не навсегда.\r\n[D7]                        [G]\r\nЧто б ни случилось, никогда не плачь,\r\n[H]                   [Em]\r\nИграй, и горе не беда.\r\n\r\nИ когда-нибудь совсем не там, где надо,\r\nВыйдет срок, прозвенит звонок.\r\nИ я вспомню тех, кто шел со мною рядом,\r\nТо, что смог и не смог.\r\nНичто не вечно под луной,\r\nЯ упаду на шар земной.\r\nПусть не будет комиссаров в пыльных шлемах,\r\nПусть он сыграет надо мной.\r\n\r\nОн играет на похоронах и танцах,\r\nВсе зовут там и тут.\r\nИ ни там, ни тут не может он остаться,\r\nСнова ждут там и тут.\r\nИ вновь смычок рождает звук.\r\nСто новых свадеб, сто разлук.\r\nОн играет на похоронах и танцах,\r\nВся наша жизнь - одно из двух.', 4, 0, 9),
(216, 19, 'Шанхай блюз', '[A]      [C#7] \r\nДавным-давно, \r\n[F#m]              [Em6]   [A7] \r\nКогда нам было все равно, \r\n     [D7]          [H7]\r\nЧто пить, с кем жить,\r\n     [A]        [F#7]               [Hm] \r\nКак быть, и время проходило Hi-Fi - \r\n[F7]        [E7]     [A]  [Hm] [E7] \r\nМы пели Блюз-Шанхай \r\n\r\nКогда свет, свет побед \r\nПрошлых лет сказал тебе "привет", \r\nНу что ж, пускай... \r\nТы голову не опускай и вспомни, \r\nВспомни Блюз-Шанхай. \r\n\r\nСоберем старый хор, \r\nИ возьмем любимый ля-мажор. \r\nТогда года -\r\nНе беда. А не веришь - ты мне сам подыграй \r\nВсе тот же Блюз-Шанхай. \r\n\r\nА потом, за столом, \r\nО былом, и о том, и о сем, \r\nМы споем. И нальем, \r\nИ снова нальем, пусть это будет не чай - \r\nПомянем Блюз Шанхай.\r\n\r\nШанхай блюз... Шанхай блюз...\r\nШанхай блюз... Шанхай блюз...', 3, 40, 10),
(217, 19, 'По дороге в Непал', '[D]\r\nТам, где встретились Труба и Сайгон,\r\nПорвалась связь времен.\r\nМы читали все, мы слышали звон,\r\nМы трубили подъем.\r\n[G]\r\nКто остался, помахали рукой,\r\n                 [F] [G] [F] [G] [G#]\r\nИ отряд поскакал. \r\n[A]\r\nЭто было бесконечной весной\r\n               [D]\r\nПо дороге в Непал.\r\n\r\nГоворят, по нам стреляли не раз,\r\nНо мы шли как один,\r\nНе сводя своих восторженных глаз,\r\nС озаренных вершин.\r\nПравда, кто-то возвратился домой,\r\nКто-то просто пропал.\r\nЭто было бесконечной весной\r\nПо дороге в Непал.\r\n\r\n   [A]\r\n   На Тибет дорога прямо,\r\n   [B]\r\n   Слева спонсор, справа лама,\r\n   [A]                   [G]   [F] [G] [F] [G] [G#]\r\n   Одинокий, одинокий путь. \r\n   [A]\r\n   Мимо древнего Икстлана,\r\n   [B]\r\n   От "Агдама" до баяна\r\n   [A]                        [G]   [F] [G] [F] [G] [F]\r\n   Напиши мне, мама, как-нибудь\r\n                  [D]\r\n   По дороге в Непал.\r\n\r\nПо обочинам горели огни,\r\nМы спешили на свет.\r\nВ сотый раз тогда казалось, что мы\r\nОбрели свой Тибет.\r\nИ на радостях еще по одной.\r\nКто-то пел, кто-то спал. \r\nЭто было бесконечной весной\r\nПо дороге в Непал.\r\n\r\nТам, где встретились Труба и Сайгон,\r\nНикого больше нет.\r\nТам сегодня зеленеет "Дирол",\r\nТам зацвел "Блендамед".\r\nИ давно забыты вещие сны\r\nОт начала начал \r\nТой, казалось, бесконечной весны\r\nПо дороге в Непал.\r\n\r\n   На Тибет дорога прямо,\r\n   Слева спонсор, справа лама,\r\n   Одинокий, одинокий путь. \r\n   Мимо древнего Икстлана,\r\n   От "Агдама" до баяна\r\n   Напиши мне, мама, как-нибудь\r\n   По дороге в Непал.', 4, 53, 11),
(218, 19, 'Дорога в небо', '[G]               [Em]   [G]                [Em]\r\nСтолько лет сражений, столько лет тревог -\r\n[C]                 [D]           [G]\r\nЯ не знал, что уйти будет легко.\r\n              [Em]  [G]                 [Em]\r\nНас зовут в окопы, скоро третий звонок -\r\n[C]               [D]           [G] [G7]\r\nИ только мы от них уже далеко.\r\n\r\n    [C]  [D]              [G]              [C]\r\n   Там, где находится южный край Земли,\r\n    [Am7]  [D7]                  [G]   [G7]\r\n   Там край, где уже не свернуть.\r\n    [C] [D]             [G]            [Em]\r\n   Там у причала стоят мои корабли -\r\n   [C]              [D7]                 [G]   [Em] [G] [Em]\r\n   В назначенный день мы тронемся в путь.\r\n\r\n\r\nМы выходим из круга, мы выходим на свет -\r\nЭто знак, что команда уже собралась.\r\nМы узнаем друг друга после долгих лет\r\nПо улыбке и по цвету глаз.\r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят мои корабли -\r\n   В назначенный день мы тронемся в путь.\r\n\r\n      [Hm]        [C]                [Hm]\r\n      Дорога в небо лежит по прямой,\r\n                [C]               [Hm]\r\n      Дорога в небо - дорога домой,\r\n                [C]                [D]\r\n      Дорога в небо - и все позади,\r\n                 [D7]\r\n      И только свет на пути. \r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят мои корабли -\r\n   В назначенный день мы тронемся в путь.\r\n\r\n   Там, где находится южный край земли,\r\n   Там край, где уже не свернуть.\r\n   Там у причала стоят твои корабли -\r\n   В назначенный день ты тронешься в путь.', 4, 25, 12),
(219, 19, 'Лифт', '[C]\r\nЛифт идёт почти бесшумно,\r\n[Em]\r\nОн идёт ужасно быстро,\r\n[Am]\r\nОт земли летит до неба\r\n[G]                [G#]\r\nИ от неба до земли.\r\n[Am]\r\nУ него в пути бывают\r\n[Am/g]\r\nТри-четыре остановки\r\n[Am/f#]\r\nИ на каждой остановке \r\n[Am/f]              [Em]\r\nОн задержится на миг.\r\n\r\n[Em] [Gm] [Hm] [F] [Em] [Gm] [Hm] [F]\r\n\r\nКак на первой остановке\r\nПахнет ёлкой новогодней\r\nДети водят хороводы\r\nИ дерутся во дворе.\r\nПахнет радостью открытий,\r\nПахнет страхом наказаний,\r\nПахнет каплями от кашля,\r\nПахнет маминым пальто.\r\n\r\nНа второй этаж взлетаешь,\r\nБез усилий, словно птица,\r\nИ твое предназначенье \r\nДля тебя - как дважды два.\r\nВ голове вино и ветер,\r\nНад тобой кружатся феи,\r\nИ хранит твоя подушка\r\nЛёгкий запах их духов.\r\n\r\nИ ты ещё глядишь на небо,\r\nГде вчера кружили феи,\r\nА они уже не феи -\r\nИх делишки к сентябрю.\r\nПахнет сеном, а не маем,\r\nПахнет чьим-то урожаем,\r\nУ соседа снова праздник - \r\nВас впервые не зовут.\r\n\r\nДальше - всё ещё быстрее,\r\nВпереди - этаж последний.\r\nПахнет пылью и больницей,\r\nИ тоской, и тишиной.\r\nТам неярко светит лампа\r\nТам стоит ведро и швабра,\r\nТанцовщицы сняли шали\r\nИ с лица стирают грим.', 4, 10, 13),
(220, 19, 'Старая песня о главном', '[C]            [G6] [C]             [G6]\r\nЕсли все не так и на сердце мрак,\r\n[C]           [E7]      [F]   [A7] \r\nЕсли душу гложет печаль,\r\n [Dm]          [A7]     [Dm7]         [A7]\r\nПоезжай, дружок, к Ленинским горам\r\n[D]                 [D7]     [G]   [G7] \r\nИ вглядись в бескрайнюю даль.\r\n [C]             [G6]  [C]            [G6]\r\nПусть перед тобой ляжет город твой,\r\n [C]         [E7]       [F] [A7] \r\nГород голубых площадей\r\n[Dm]    [Fm] [C]       [A7]\r\nИ боевой и трудовой\r\n  [D]      [G7]        [Gm] [A7] \r\nСлавы советских людей.\r\n[Dm]    [Fm] [C]       [A7]\r\nИ Боевой и Трудовой\r\n  [D]      [G7]        [C]  [G] \r\nСлавы советских людей.\r\n\r\n    [C] [G6]  [C] [G6] [C]         [A]    [Dm] [A7]\r\n   Тихо, тихо плещет Москва-река,\r\n     [Dm]  [A7]  [Dm] [A7]  [D]       [D7]      [G]     [G7]\r\n   Спит портниха, спит руководство ЦК на дачах,\r\n    [C]     [E7] [Am] [C7]   [F]       [A7]        [Dm] [A7] \r\n   Пусть на башнях звезды горят в облаках.\r\n     [Dm]        [Fm]    [C]        [A7]\r\n   Сладко ты спишь, черный малыш,\r\n      [D]        [G7]        [Gm] [A7] \r\n   В добрых еврейских руках,\r\n     [Dm]        [Fm]    [C]        [A7]\r\n   Сладко ты спишь, черный малыш,\r\n       [D]       [G7]        [C]  [G] \r\n   В крепких советских руках.\r\n\r\nЗдесь одни друзья, здесь грустить нельзя. \r\nСколько с ними песен ни пой,\r\nЕсли уж один скажет тебе "Да", \r\nЗначит, скажет "Да" другой, и третий. \r\nЛишь отдай приказ, встанут в тот же час, \r\nОтгремев, закончат бои,\r\nВ зной и в пургу бьют по врагу, \r\nА иногда по своим,\r\nВ зной и в пургу бьют по врагу, \r\nНо иногда по своим.\r\n\r\n   Сладко-сладко плещет Москва-река.\r\n   Спят солдаты, спят по баракам зека на нарах, \r\n   Выше крыши дремлет пилот в облаках.\r\n   Тихо ты спишь, черный малыш, \r\n   В добрых еврейских руках,\r\n   Сладко ты спишь, черный малыш, \r\n   В длинных советских руках.', 4, 10, 14),
(221, 19, 'Эпоха большой нелюбви', '[Hm7]\r\nКогда стемнеет не по закону\r\nДо срока и до поры,\r\n   [Em]\r\nЯ выключу свет, и псом бездомным\r\n[F#7]\r\nВыползу из конуры.\r\n    [Hm7]\r\nНе бойся меня в этот сумрачный вечер,\r\nИмя свое назови -\r\n  [Em]             [Hm7]\r\nЯ очень ценю случайные встречи\r\n    [F#7]               [Hm] [A] [G] [Hm7]\r\nВ эпоху большой нелюбви.\r\n\r\nТебе совсем не надо стараться\r\nДержать неприступный взгляд -\r\nТы тоже устала от всех отбиваться,\r\nА я не клиент, а брат.\r\nНадеюсь, ты примешь мое предложенье -\r\nМы выпьем и поговорим.\r\nЯ очень ценю тепло отношений\r\nВ эпоху большой нелюбви.\r\n\r\nТы все еще думаешь - я тебя клею,\r\nНо это - твои дела.\r\nПоверь, что мне уже стало теплее\r\nПохоже, и ты ожила.\r\nА все, что было, зачтется однажды,\r\nКаждый получит свои -\r\nВсе семь миллиардов растерянных граждан\r\nЭпохи большой нелюбви.\r\n\r\n[C#m-5]\r\n              [Hm6]\r\nБольшой нелюбви\r\n[C#m-5] [Hm-5]\r\n              [Hm6]\r\nБольшой нелюбви\r\n[A] [G]\r\n              [Hm]\r\nБольшой нелюбви', 3, 45, 15),
(222, 20, 'Утренний Ангел Пустых Бутылок', '[Dm]\r\nУтренний ангел пустых бутылок\r\n     [Em7]\r\nОн слаб, он слегка не в себе\r\n    [Dm]\r\nОн дышит мне чем-то вчерашним в затылок\r\n     [G]\r\nОн крайне не склонен к борьбе\r\n\r\n        [Gm]\r\n   Он смотрит печально, как я просыпаюсь\r\n                        [F]\r\n   В сумерках буднего дня\r\n   [Gm]\r\n   Утренний ангел пустых бутылок\r\n   [Bm7]           [Dm]\r\n   Не покидай меня...\r\n\r\nВедь я все чаще с утра сомневаюсь\r\nЧто там, за окном, - Земля\r\nИ нашу убогую шхуну качает\r\nА в ней – только ты да я\r\n\r\n        [Gm]\r\n      И я боюсь, что придет в движенье\r\n                          [Dm]\r\n      Вчерашний табачный дым\r\n         [Gm]\r\n      И ты растаешь в то же мгновенье\r\n      [Bm7]            [Dm]\r\n      И я останусь один...\r\n\r\n            [B]\r\n         И хочется верить, что есть еще порох\r\n         [Ddim]               [E]  [G#m]\r\n         И, что запал не остыл\r\n         [B]\r\n         Пока я слышу неслышный шорох\r\n            [D]\r\n         Твоих перепончатых крыл\r\n\r\n         Куда бы мы ни брели с тобою\r\n         Я – первый, ты – чуть позади\r\n         Всегда и повсюду нас было двое\r\n         Пожалуйста, не уходи\r\n\r\nМой бедный бледный ночной товарищ,\r\nКогда протрубит беда,\r\nВозможно, ты меня и оставишь,\r\nА я тебя – никогда\r\n\r\n      И если вдруг тебе станет худо,\r\n      Хотя, куда уж еще, -\r\n      Не уходи, будь со мною всюду,\r\n      Держись за мое плечо\r\n\r\n[Dm]\r\nУтренний ангел пустых бутылок...', 5, 24, 1),
(223, 20, 'Иногда Я Пою', 'Иногда я пою,\r\nИногда я читаю,\r\nИногда я не сплю,\r\nИногда забываю \r\n\r\n        [A]\r\n   Забываю любить,\r\n        [A/g] \r\n   Забываю встречаться,\r\n        [D] \r\n   Забываю ходить,\r\n   [F]          [A] \r\n   Забываю смеяться. \r\n\r\nИногда я курю,\r\nИногда я танцую,\r\nИногда говорю, \r\nНикогда не рисую. \r\n\r\n   Никогда не торчу, \r\n   Никогда не ломаюсь, \r\n   Никогда не стучу, \r\n   Никогда не ругаюсь. \r\n\r\nИногда в никуда,\r\nВ никуда ниоткуда,\r\nА оттуда сюда,\r\nА сюда от верблюда. \r\n\r\n       [A]\r\n   Это я о себе,\r\n        [A/g] \r\n   О себе о родимом,\r\n        [D] \r\n   Я сижу на трубе, \r\n   [F]              [H]\r\n   Между небом и дымом \r\n                  [D]\r\n   Между небом и дымом\r\n                 [A] [D] [E]\r\n   Я сижу на трубе\r\n        [D]        [A] [D] [E]\r\n   Я сижу на трубе\r\n        [D]        [A] [D] [E]\r\n   Я сижу на трубе\r\n           [D]      [A]\r\n   Между небом и дымом...', 3, 2, 2),
(224, 20, 'Вверх', '[D+7]\r\nВверх!\r\n            [Hm]\r\nОт земных оков\r\n[Bm]          [D+7] [D7]\r\nМы уходим вверх\r\n          [G]\r\nВыше облаков.\r\n[Gm]           [D+7] [Hm] [Em]\r\nБлиже к небесам –\r\n [A]        [B] [A]\r\nТише голоса.\r\n\r\nВверх!\r\nВ горные моря\r\nЯкорь гнет к земле -\r\nК черту якоря!\r\nВетру на крыло,\r\nВ синее стекло.\r\n\r\n     [G]            [A]             [D]       [D/c#] [Hm] [Em] [A]\r\n   Сколько слов и сколько дел ты бросил в пустоту\r\n     [G]            [A]             [D]       [D/c#] [Hm] [Gm] [A]\r\n   Слышишь, нас опять зовут подняться в высоту\r\n\r\nВверх!\r\nНе смотри назад\r\nНас уносит вверх\r\nЧто же ты не рад?\r\nВоздух свеж и чист\r\nЖизнь как белый лист\r\n\r\n   Сколько слов и сколько дел ты бросил в пустоту\r\n   Слышишь, нас опять зовут подняться в высоту\r\n\r\nВверх!\r\nНе смотри назад\r\nМы всплываем вверх,\r\nЧто же ты не рад?\r\nВоздух свеж и чист,\r\nЖизнь как белый лист,\r\nЧистый белый лист.', 5, 31, 3),
(225, 20, 'Место Где Свет', '[E]                                                  [G#m]\r\nЭтот город застрял во вранье, как "Челюскин" во льдах -\r\n      [F#m]                [F#m7]               [H] \r\nПогрузившийся в ад и частично восставший из ада.\r\n     [E]                                   [G#m]\r\nНаше общее детство прошло на одних букварях,\r\n      [F#m]           [H]                 [E]   [E9] [E]\r\nОт того никому ничего объяснять и не надо.\r\n\r\n           [G#7]                                    [C#m]\r\n   Что же мы всё кричим невпопад и молчим не про то,\r\n             [F#7]                                [H]   [H7]\r\n   И все считаем чужое, и ходим, как пони, по кругу?\r\n          [E]                                            [C#] [C#7]\r\n   Вы не поняли, сэр, - я совсем не прошусь к вам за стол,\r\n            [F#m]                  [H]                        [E]\r\n   Мне вот только казалось - нам есть что поведать друг другу. \r\n\r\n                   [A]\r\n      Место, где свет\r\n                 [H]                            [E]\r\n      Было так близко, что можно коснуться рукой,\r\n                  [A]\r\n      Но кто я такой,\r\n                [H]                [G#7]\r\n      Чтоб оборвать хрустальную нить -\r\n               [C#m] \r\n      Не сохранить,\r\n                      [C#m6]\r\n      Прошло столько лет,\r\n                    [F#m]\r\n      И нас больше нет\r\n      [H]              [A]  [H] [E] \r\n      В месте, где свет...\r\n\r\nЭтот город застрял в межсезонье, как рыба в сети - \r\nСтрелки все по нулям, и не больше не меньше,\r\nМы почти научились смеяться, но как ни верти - \r\nЧто-то стало с глазами когда-то загадочных женщин.\r\n\r\n   Хочешь, я расскажу тебе сказку про злую метель,\r\n   Про тропический зной, про полярную вьюгу?\r\n   Вы не поняли, мисс, - я совсем не прошусь к вам в постель,\r\n   Мне вот только казалось - нам есть, что поведать друг другу. \r\n\r\n      Место, где свет\r\n      Было так близко, что можно коснуться рукой,\r\n      Но кто я такой,\r\n      Чтоб оборвать хрустальную нить - \r\n      Не сохранить, \r\n      Прошло столько лет,\r\n      И нас больше нет \r\n      В месте, где свет...\r\n\r\nМне никто не указ, да и сам я себе не указ - \r\nДоверяю лишь левой руке, маршруты рисуя.\r\nНу а тот, кто - указ, он не больно-то помнит про нас,\r\nДа и мы поминаем его в беде или всуе.\r\n\r\n   Что казалось бы проще - вот Бог, вот порог,\r\n   Что же снова ты смотришь в пустынное небо с испугом?\r\n   Вы не поняли, Лорд, - я отнюдь не прошусь к вам в чертог,\r\n   Мне лишь только казалось - нам есть, что поведать друг другу.', 4, 29, 4),
(226, 20, 'Крылья и Небо', '[Dm7]  [Dm7/c]  [Dm7/h] [Dm7/b]\r\nОна однажды жила,\r\n  [Dm7]  [Dm7/c]  [Dm7/h] [Dm7/b]\r\nОна сходила с ума,\r\n          [B]    [G]             [Dm7]  [Dm7/c]  [Dm7/h] [Dm7/b] \r\nА ты был рядом, но долго не шёл.\r\n  [Dm7]  [Dm7/c]  [Dm7/h] [Dm7/b]\r\nОна звонила тебе,\r\n  [Dm7]  [Dm7/c]  [Dm7/h] [Dm7/b]\r\nОна хотела детей\r\n       [B]   [G]             [Dm7] [B] [G] [Dm7]\r\nИ говорила, что все хорошо.\r\n\r\nПоследний поезд метро.\r\nИ ей уже все равно,\r\nКуда он едет, куда он идёт.\r\nОна сходила с ума,\r\nОна стреляла сама,\r\nЕё никто нигде больше не ждёт. \r\n\r\n [F]                  [E]\r\nДай ей всё, что ты можешь ей дать,\r\n [B]                    [E]\r\nДай ей всё, что не в силах отнять,\r\n [F]    [G]          [Dm7]\r\nДай ей крылья и небо. \r\n [F]                  [E]\r\nДай ей всё, что ты можешь ей дать,\r\n [C]                    [D]\r\nДай ей всё, что не в силах отнять,\r\n [B]    [A] [G#] [G]       [E]   [D#] [Dm7]\r\nДай ей   крылья и небо.', 6, 16, 5),
(227, 20, 'Меня Заказали', '[Am]\r\nМеня заказали сегодня к обеду\r\nМашину подали и я уже еду\r\n            [Dm]\r\nНамеченным курсом увидеться с вами\r\n            [F]    [E]              [Am]\r\nРебята со вкусом, ребята с деньгами.\r\n\r\nМеня ожидают везде и повсюду\r\nМеня предлагают, как главное блюдо\r\nВ финале концерта просчитанный вызов:\r\nПосле десерта, перед стриптизом.\r\n\r\nМеня заказали и все без обмана\r\nВ торжественном зале накрыта поляна\r\nБокалы и дамы, улыбки и тосты\r\nПод "Все очень просто", под "Солнечный остров"\r\n\r\n             [Hm]\r\nБоксеры от злости не чувствуют боли\r\nМне хочется костью встать у них в горле\r\n                [Em]\r\nНо кость проглотили, мала была, каюсь\r\n            [G]   [F#]       [Hm]\r\nИ счет оплатили, и я улыбаюсь\r\n\r\nМеня заказали, на вечер купили\r\nВсего облизали и чуть не убили\r\nСпасло только чудо, самая малость\r\nМеня не доели и что-то осталось', 2, 12, 6),
(228, 20, 'Не надо Так', '[E7]\r\nТы думаешь, что я исчез – не надо так\r\n    [C#m]                             [E7]\r\nТы думаешь, что я подлец – не надо так\r\n    [A]                                [F#7]\r\nТы думаешь, что мне конец – не надо так\r\n  [A]                [F#] [H]           [E7]\r\nА я добрался до небес – мне надо так\r\n\r\nТы думаешь, что я запил – не надо так\r\nТы думаешь, что я копил – не надо так\r\nТы думаешь, с ума сошел – не надо так\r\nА я в другую дверь зашёл – такой пустяк\r\n\r\nТы думаешь, попал в беду – не надо так\r\nТы думаешь, найдут в пруду – не надо так\r\nТы думаешь, друзья сдадут – не надо так\r\nА мне наскучил твой уют – такой пустяк\r\n\r\nТы думаешь, что я звонил – не надо так\r\nТы думаешь, посуду бил – не надо так\r\nТы думаешь, совсем пропал – не надо так\r\nА я в другие сны попал – хорош пустяк', 3, 7, 7),
(229, 20, 'Оставь Меня', '[G]\r\nЯ всегда был вольный стрелок,\r\n[Am]\r\nИ свободен и одинок,\r\n [C]                   [D]\r\nКак же вышло так? Какой я был дурак,\r\n    [C]                  [D]\r\nПустив тебя на свой порог!\r\n\r\nТы смотришь на меня, как удав,\r\nИ, может быть, я где-то не прав,\r\nНо ты подходишь ближе и я прекрасно вижу,\r\nЧто я уже в твоих зубах... \r\n\r\n      [G]\r\n   Оставь меня,\r\n        [Em]            [C]           [D] \r\n   Не ставь меня в музей своих побед.\r\n      [G]\r\n   Оставь меня,\r\n         [Em]             [C]              [D]\r\n   Представь меня, как то, чего здесь нет.\r\n\r\n          [C]\r\n      Не надо театральных речей,\r\n         [D]\r\n      Горячих рук и влажных очей,\r\n          [C]\r\n      Давно пора понять, что масть нельзя менять,\r\n           [D]\r\n      Прости, но я по жизни ничей. \r\n\r\nТы следуешь за мной по пятам,\r\nНе спрятаться ни тут и ни там,\r\nИ, как я ни темню, мы десять раз на дню\r\nВстречаемся по разным местам.\r\n\r\nНо если я желаю уйти,\r\nТо лучше не стоять на пути.\r\nЯ бросил берега, меня несет река,\r\nИ в эту реку не войти. \r\n\r\n   Оставь меня,\r\n   Не ставь меня в музей своих побед.\r\n   Оставь меня,\r\n   Представь меня, как то, чего здесь нет.\r\n\r\n      Не надо театральных речей,\r\n      Горячих рук и влажных очей,\r\n      Давно пора понять, что масть нельзя менять,\r\n      Прости, но я по жизни ничей.', 4, 20, 8);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(230, 20, 'Мы Расходимся по Домам', '[E] [H] [E] [H] [E] [H] [E] [H]\r\n         [E]\r\nВ жизни подвигу мало места,\r\n          [F#]                [Fm]\r\nНо много мест для дурных идей...\r\n       [E]\r\nОн придумал себе принцессу\r\n     [H]\r\nИ отнес свое сердце ей.\r\n                       [H/A*]\r\nИ, конечно, ей лестно было,\r\n       [E]       [H]     [A]\r\nЧто такого с ума свела,\r\n     [F#]\r\nНо она его не любила,\r\n      [H7]             [E]\r\nНе любила - и все дела. \r\n\r\n[E] [H]\r\n        [E]\r\nОна держала его на стальном поводке,\r\n        [F#]                  [Fm]\r\nНо не ближе известных границ.\r\n       [E]\r\nЕй совсем был не нужен журавль в руке,\r\n        [H]\r\nЕй вполне хватало синиц.\r\n                       [H/A]\r\nИ пока он понял, что нечего ждать,\r\n     [E]           [H]     [A]\r\nПрошло слишком много лет.\r\n      [F#]\r\nДаже если время вернется вспять - \r\n        [H7]            [E]\r\nВсе равно, моста уже нет.\r\n         [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]          [H]        [C#m]    [H/A]\r\nТени движутся прямо к нам.\r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам. \r\n        [E]\r\nВ этой жизни не много смысла\r\n       [F#]             [Fm]\r\nИ в основе, увы, печаль.\r\n      [E]\r\nИ никто не падал с карниза,\r\n      [H]\r\nИ никто не летал по ночам.\r\n                     [H/A]\r\nИ никто даже послан не был - \r\n          [E]         [H]      [A]\r\nНочь, звонок, разговор пустой...\r\n       [F#]             [F#m]\r\nПросто умер ангел и где-то в небе\r\n       [H7]               [E]\r\nСтало меньше одной звездой. \r\n        [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]        [H]      [C#m] [H/A]\r\nТени движутся прямо к нам. \r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам. \r\n\r\nsolo: \r\n[E] [F#] [Fm] [E] [H] [H/A]\r\n[E] [H] [A] [F#] [H7] [E]\r\n        [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]        [H]      [C#m] [H/A]\r\nТени движутся прямо к нам. \r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам. \r\n        [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]        [H]      [C#m] [H/A]\r\nТени движутся прямо к нам. \r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам.', 3, 50, 9),
(231, 20, 'Рыбак Рыбака', '[E7]\r\nВсе в этом мире не ново,\r\nВ гору не закатится шар\r\nДоктор в каждом видит больного,\r\nПожарный всюду видит пожар.\r\n [A7]\r\nЛетчик видит синее небо,\r\nПограничник видит врага,\r\n   [H7]\r\nСтранник видит край, где он не был\r\n   [E7]\r\nИ только рыбак – рыбака\r\n\r\nПьющий видит все, что не пили,\r\nКошка всюду чует мышей,\r\nОперу мерещится киллер,\r\nКиллер в каждом видит мишень.\r\nАдвокат в каждом видит клиента,\r\nПрокурор в каждом видит ЗеКа,\r\nЭлектрик видит синюю ленту,\r\nИ только рыбак – рыбака.\r\n\r\nИстина в вине, вино в магазине,\r\nУ магазина вертится пьянь.\r\nЯнь всю ночь мечтает об Ине,\r\nИню всюду видится Янь.\r\nСталин всюду видит измену,\r\nЛенин видит пленум ЦК,\r\nТрагик видит новую сцену\r\nИ только рыбак – рыбака', 2, 21, 10),
(232, 20, 'Звезды Не Ездят в Метро', '[Dm]\r\nСерый рассвет, серый проспект -\r\n [B]\r\nНочью прошла гроза.\r\n [Gm]              [A]                 [Dm]\r\nМокрый асфальт, город продрог со сна.\r\nВ серой толпе сама по себе,\r\n [B]\r\nПолуприкрыв глаза,\r\n  [Gm]              [A]    [Dm] [B] [Dm]\r\nСнова в метро спешит она. \r\n\r\nТесный перрон, синий вагон,\r\nЖёлтый подземный свет,\r\nЧёрный тоннель, поезд летит во тьму...\r\nВ сумке на дне сложен вдвойне\r\nСмятый заветный билет - \r\nЗавтра она идет на концерт к нему. \r\n\r\n   [A]\r\n   Ниточка дней все не кончается,\r\n         [Dm]               [B]\r\n   Мы - бусы на ней, мы бьёмся, как рыбы в стекло.\r\n   [A]\r\n   Встретиться с ней не получается -\r\n     [Gm]      [A]           [B] \r\n   Звёзды не ездят в метро. \r\n\r\nНочь, тишина, лопнет струна,\r\nКак натянутый нерв.\r\nОн дома один и снова ночь без сна.\r\nОн всех послал, он так устал\r\nОт этих накрашенных стерв,\r\nОн помнит, что где-то в метро - она. \r\n\r\n   Ниточка дней все не кончается,\r\n   Мы - бусы на ней, мы бьёмся, как рыбы в стекло.\r\n   Встретиться с ней не получается - \r\n   Звёзды не ездят в метро.', 6, 38, 11),
(233, 21, 'Время Пробует Меня на Зуб', '[Em]       [D]                [A]\r\nПрижмись к стене, задержи дыхание, выключи свет.\r\n[Em]       [D]                [A]\r\nЯ - черная кошка в комнате, которой нет.\r\n      [Em]       [D]                [A]\r\nЯ пол-жизни потратил, примеряя чужие лица,\r\n  [Em]       [D]                [A]\r\nЗнаешь, похоже нам уже никуда не скрыться.\r\n    [Em]      [D]          [A]\r\nКогда я улыбаюсь, я похож на труп.\r\n[Em]\r\nЭто время пробует меня на зуб.\r\n\r\nЯ уходил под воду, я камнем взлетал в небеса,\r\nЯ купил себе вечность, не хватило всего пол-часа.\r\nОт звонка до звонка спасите тела и души,\r\nЗнаешь, похоже у этих стен есть не только глаза и уши.\r\nТебя поздравляют, тебе снова добавили срок,\r\nОн пока еще смотрит, он даже не взвел курок.\r\n\r\n   [A]\r\n   Улыбайся, даже если ты в ловушке,\r\n   Даже если ты на мушке...\r\n   [C]\r\n   Время пробует меня на зуб.\r\n                   [Em]   [D] [A]\r\n   Не упусти совй шанс. \r\n\r\nВ центральной газете написано, кто ты такой...\r\nНа стене в туалете написано, кто ты такой...\r\nВ твоём Интернете подробно написано, кто ты такой...\r\nКаждый на свете узнает, кто ты такой...\r\n\r\nВремя пробует тебя на зуб - кто ты такой...\r\nЭто время пробует тебя на зуб - кто ты такой...\r\nВремя пробует тебя на зуб - кто ты такой...\r\nЭто время пробует тебя на зуб - кто ты такой...', 1, 39, 1),
(234, 21, 'Круги на Воде', '[A6]                    [A7]\r\nГод за годом видится мне,\r\n[D]         [Dm]            [A+7]\r\nЭта жизнь, эта смерть и эта любовь.\r\n   [A7]                     [Dm7]\r\nИ только лишь круги на воде\r\n    [C#m]          [Hm]         [E7]\r\nНа темной воде. Я смотрю и вижу.\r\n  [A]                 [A7]\r\nВновь, шаги в пустоте,\r\n            [D]              [Dm] [A6]\r\nКруги на воде. Круги на воде.\r\n\r\nМожешь осмотреться вокруг,\r\nВидеть вверх и видеть вниз и по сторонам.\r\nНо где твои родные, мой друг?\r\nПусто вокруг, все ушли, оставив\r\nНам шаги в пустоте,\r\nКруги на воде. Круги на воде.\r\n\r\n   [F#m]\r\n   Закатай меня в асфальт своей любви,\r\n                                  [E7]\r\n   Где догорают огни и осыпается небо.\r\n         [F#m]\r\n   Пронеси меня стрелой сквозь длинный серый строй\r\n                                             [E7]\r\n   Душ, испепеленных тобой, туда, где я еще не был.\r\n\r\nЗдравствуй, город съехавших крыш,\r\nЭтот бег, эта гарь и эта печаль\r\nНекуда бежать - ты молчишь,\r\nСнова молчишь, видишь как уходят\r\nВдаль шаги в пустоте,\r\nКруги на воде. Круги на воде.\r\nШаги в пустоте,\r\nКруги на воде. Круги на воде...', 5, 52, 2),
(235, 21, 'Кто из Них Я', '[Em]\r\nОдин решил, что лучше быть первым, \r\nДругой решил, что будет вторым, \r\nЕще один берег свои нервы \r\nИ не пошел ни с тем, ни с другим. \r\n[Am]\r\nОдин решил что лучше быть честным,\r\nДругой решил, что проще украсть,\r\n[Em] \r\nА третий знал и время, и место, \r\nКуда все это может упасть \r\n\r\n         [C]\r\n   And around, and around, \r\n   And up, and down\r\n       [D] \r\n   We go, go again.\r\n   [C]                [H7]\r\n   И всех пока еще носит земля,\r\n     [A]          [H7]             [Em] \r\n   И я уже не знаю, кто из них я. \r\n\r\nОдин решил, что лучше быть вместе, \r\nДругой решил, что в кайф одному, \r\nЕще один все рвался к невесте, \r\nНо попадал все время в тюрьму. \r\nОдин пошел за правдою к Богу, \r\nДругой решил, что и так хорошо, \r\nА третий шел такою дорогой, \r\nЧто Бог искал его, и не нашел. \r\n\r\n   And around, and around, \r\n   And up, and down \r\n   We go, go again... \r\n   И всех пока еще носит земля, \r\n   И я уже не знаю, кто из них я. \r\n\r\nОдин решил, что лучше быть первым, \r\nДругой решил, что будет вторым \r\nОдин решил, что лучше быть первым, \r\nДругой решил, что будет вторым... \r\n\r\nОдин решил, что лучше быть первым, \r\nДругой решил, что будет вторым \r\nОдин решил, что лучше быть первым, \r\nДругой решил, что будет вторым...', 3, 36, 3),
(236, 21, 'Дип Пепл Ин Рок', '[Dm]\r\nОн поет свои песни, которым сто лет, \r\nЗабывает слова, ложится на пол, \r\nДостает портсигар, забивает косяк \r\nИ глядит в потолок - там немое кино. \r\n\r\n              [F]\r\n   В нем "Битлы", и война, лица старых друзей,\r\n       [C]                 [G] \r\n   Пионерский салют и советский народ,\r\n         [F]\r\n   Он похож на царя первобытных зверей,\r\n        [C]                        [B] \r\n   Он один пережил ледниковый период. \r\n\r\nВек откинул копыта, хоть толком не прожит, \r\nВсе что плыть помогало - отныне на дне. \r\nЭто только гитары с годами дороже, \r\nГитаристы с годами теряют в цене. \r\n\r\n   Он не слышит слова, он не видит ухмылки, \r\n   Есть любимые звуки, остальное - мираж, \r\n   Его жизнь выпускает шасси и закрылки \r\n   И идет неспеша на последний вираж \r\n\r\nОн живет, под собою не чуя земли, \r\nИ его не волнуют ни против, ни за, \r\nЕго дом, как дредноут, сидит на мели \r\nИ обвисшие постеры - как паруса. \r\n\r\n   Он заснет в новый год без снов и без сил, \r\n   И во сне он услышит в прихожей звонок - \r\n   Джимми Пейдж принесет ему батл текилы \r\n   И виниловый новый "Дип Пёпл Ин Рок"\r\n\r\n                 [Dm]   [F] [Gm] [B] [Gm]\r\n"Deep Purple in Rock"...\r\n                 [Dm]   [F] [Gm] [B] [Gm]\r\n"Deep Purple in Rock"...', 3, 13, 4),
(237, 21, 'Эти Реки Никуда Не Текут', '[Am]                                   [Am7]\r\nЭти реки никуда не текут, они забыли про море...\r\n     [Dm7]                                  [Am]  [Am7] \r\nЭти реки никуда не текут, они забыли про море.\r\n           [E7]\r\nВ них не вьется трава, их не тревожит весло,\r\n[D7] \r\nВода застыла в них, словно стекло,\r\n           [Am7]                [E7]               [Am7] \r\nМне очень жаль, мама, но эти реки никуда не текут. \r\n\r\nЭти птицы никуда не летят, они забыли про небо... \r\nЭти птицы никуда не летят, они забыли про небо. \r\nЕсли жить по рассчету и наверняка, \r\nТо крылья усыхают и врастают в бока, \r\nМне очень жаль, мама, но эти птицы никуда не летят. \r\n\r\n     [Am]                [Dm7]                  [Am]\r\nЭти люди никуда не спешат, они забыли про время...\r\n     [Dm]                                     [Am] \r\nЭти люди никуда не спешат, они забыли про время.\r\n[E7] \r\nКогда звонит последний звонок,\r\n [D7] \r\nПоздно считать, что ты смог, что не смог,\r\n           [Am7]                [E7]                [Am7] \r\nМне очень жаль, мама, но эти люди никуда не спешат. \r\n\r\nЭти реки никуда не текут, они забыли про море. \r\nЭти птицы никуда не летят, они забыли про небо. \r\nЭти люди никуда не спешат, они забыли про время. \r\nМне очень жаль, мама, но эти реки никуда не текут.', 3, 41, 5),
(238, 21, 'По Барабану', '[E7]\r\nПо барабану играю день и ночь до утра... \r\nПо барабану такая жизнь, такая игра.\r\n [A7] \r\nНе по карману Багамы, БМВ и хай-фай\r\n          [E7]                                    [G] [D] [F] [C] [E] [H] \r\nНо это - по барабану, не унывай, давай, наливай! \r\n\r\nМаги, шаманы из южных слаборазвитых стран \r\nСпьяну, с дурману придумали большой барабан. \r\nНе перестану им петь осанну ночью и днем \r\nВсе в мире по барабану, гори оно зеленым огнем! \r\n\r\n           [H]\r\n   И если завтра погаснет небесный свет,\r\n           [A] \r\n   То никаких причин для паники нет!\r\n           [G] \r\n   И мы сидим, пьем с барабаном вдвоем,\r\n          [F#]         [F]  [E7]\r\n   И не идем, и не ждем. \r\n\r\nВсем по стакану - гуляй себе с утра до темна! \r\nПо... по... по... по... по барабану живет и процветает страна, \r\nСмотрит рекламу, отъехав головою в экран. \r\nПо барабану! Пока не отберут барабан. \r\nПока не отберут барабан...', 3, 33, 6),
(239, 21, 'Не Дай Мне Упасть', '[A]            [Amaj7]         [C#m7] \r\nБудь рядом со мной, не дай мне упасть...\r\n   [Gm6]             [F#]                [Hsus2] \r\nДорога темна и тревожна, и ночь опустилась в поля,\r\n    [E7]                                 [A]\r\nИ звуки застыли, и спит и не дышит земля...\r\n[D]               [A]  [D]             [F#m7 ]\r\nБудь рядом со мной, не дай мне упасть... \r\n\r\nОкликни меня, и я обернусь, \r\nПоверь мне, никто не заметит, что нас больше нет за столом. \r\nОстанься со мной, и я никогда не вернусь... \r\nБудь рядом со мной, не дай мне упасть... \r\n\r\n        [C#7]\r\n   Ты слышишь сигнал -\r\n        [F#m]      [F#m7]      [H7] \r\n   Это ветер пропел в камышах,\r\n                                              [E] [E7] \r\n   Ты ни мне ни себе не простишь несделанный шаг. \r\n\r\nСмотри на меня, и я буду жив, \r\nИ день будет долог и светел, и город расстает вдали. \r\nЛишь только дорога и свет от небес и земли... \r\nБудь рядом со мной, не дай мне упасть, \r\nБудь рядом со мной, не дай мне упасть...', 2, 29, 7),
(240, 21, 'К Малой Бронной', '[E]\r\nМожно уже успокоиться -\r\n [G#m] \r\nЗа поворотом мой дом,\r\n  [A]             [E]                 [F#m] \r\nСтарая улица, грустная-грустная сказка\r\n                  [H] \r\nСо счастливым концом. \r\n\r\nГоды сложив с километрами, \r\nЯ завершаю свой путь. \r\nСнова сегодня случайно я спас этот мир \r\nИ могу отдохнуть. \r\n\r\n     [E]        [A]        [F#m]\r\n   Вновь ветерок над моей головой\r\n          [C#m]          [A]\r\n   Гонит листья по наклонной\r\n     [E]        [A]         [F#m] \r\n   Вновь я живой возвращаюсь домой\r\n             [C#m] \r\n   К Малой Бронной\r\n             [D]     [A] [H] [E] \r\n   К Малой Бронной \r\n\r\nЗдесь ничего не кончается, \r\nСколько раз - не сосчитать - \r\nЯ уходил, чтоб вернуться, и не возвращался, \r\nИ рождался опять. \r\n\r\nПраздники и поражения, \r\nТе, что застыли в годах, \r\nЖизни кружение, - все это лишь отражения \r\nВ Патриарших прудах. \r\n\r\n   Вновь ветерок над моей головой\r\n   Гонит листья по наклонной\r\n   Вновь я живой возвращаюсь домой\r\n   К Малой Бронной\r\n   К Малой Бронной', 4, 56, 8),
(241, 21, 'Прости Сегодня за Вчера', '[G]\r\nПрости сегодня за вчера,\r\n[D7]           [G]  [G7]\r\nЯ плохой солдат.\r\n           [C7]                 \r\nЯ громче всех кричал "ура",   \r\n[A7]       [D7]    [G]              \r\nНо повернул назад.            \r\n                              \r\n          [H7]                  \r\n   Я потерял ружье и флаг,    \r\n            [Em]                \r\n   Такие скверные дела.\r\n             [A7]\r\n   Вокруг меня ликует враг,\r\n              [C7]\r\n   А я в чем мама родила.\r\n             [Em]\r\n   Прости меня, моя любовь,\r\n   [A7]        [D7]          [G]  [F#7+5]\r\n   Прости сегодня за вчера.\r\n\r\nПрости сегодня за вчера,\r\nВчера попал я в плен.\r\nМеня пытали до утра\r\nИ я пропал совсем.\r\n\r\n   Я шел ко дну, но нету дна.\r\n   Я потерял остатки сна\r\n   И камнем на душе вина.\r\n   Ты горько плачешь у окна,\r\n   Прости меня, моя любовь,\r\n   Прости сегодня за вчера.\r\n\r\nЯ завтра разобью врагов,\r\nВерну угасший пыл.\r\nПрости меня, моя любовь,\r\nК тебе я сутки плыл.\r\n\r\n   И я скажу тебе, привет!\r\n   Ты улыбнешься, нам пора.\r\n   И как всегда любви волна\r\n   Качать нас будет до утра.\r\n   Прости меня, моя любовь,\r\n   Прости сегодня за вчера.', 2, 52, 9),
(242, 21, 'Не Повод для Слез', '[C]               [F]             [C]\r\nНе всем интересно, что я имею в виду\r\n     [Am]                            [G]\r\nНо всем интересно с кем и куда я иду,\r\n[Am]               [E+]                [Am7]                  [D]\r\nИ если быть окончательно точным и сузить этот круг проблем,\r\n                                [G]\r\nТо не всем интересно куда, но всем интересно - с кем. \r\n\r\nИ, как не верти - все мы пошли от коров,\r\nИ в каждом стаде по сорок тысяч голов\r\nИ пока одни идущие вместе идут целовать президента,\r\nДругие идущие вместе валят с футбола мочить мусоров.\r\n\r\n         [C]              [F]              [C]                  [F]\r\n   И не надо ругать пустыню за зной и рыбу за отсутствие меха,\r\n                                [G]\r\n   Не надо лошадь кормить углём и запрягать паровоз\r\n     [C]           [F]                                   [C]   [C/h]\r\n   И если все смеются до слёз - это не причина для смеха\r\n   [Am]       [Am/g]   [D7/f#]         [G]                    [C]  [Am] [C] [Am]\r\n   И если всем приказано плакать - это не повод для слёз.\r\n\r\nВсё то, что покажут тебе - определено\r\nНо я слыхал, что бывает другое кино.\r\nИ я не пойму - откуда у нас так много смешных юмористов -\r\nСтрана хохочет с утра до ночи, а мне, хоть убей, не смешно.\r\n\r\nТы можешь плыть по течению, не думать вообще ни о чём,\r\nИли бороться с течением, его раздвигая плечом.\r\nА я плыл и плыву не за и не против, а туда, куда собирался,\r\nМне, может быть, труднее и проще, но течение тут не при чём.\r\n\r\n   И не надо ругать пустыню за зной и рыбу за отсутствие меха,\r\n   Не надо лошадь кормить углём и запрягать паровоз\r\n   И если все смеются до слёз - это не причина для смеха\r\n   И если всем приказано плакать - это не повод для слёз.', 3, 23, 10),
(243, 21, 'Сакура-Катана-Сакэ', '[E]               [E+7]\r\nЯ пришел к тебе с приветом\r\n       [A]                  [A7]\r\nРассказать, что солнце встало,\r\n      [E]           [E+7]\r\nЧто оно горячим светом\r\n [E7]\r\nЖарит как печь.\r\n\r\n          [A]          [Gdim]\r\n   На вопросы нет ответов,\r\n           [E]     [E+7]     [C#m]\r\n   Можешь думать, что попало,\r\n         [F#]\r\n   Но меня прибил сушняк\r\n      [H7]\r\n   И негде прилечь.\r\n\r\nМы с Серегой самураем,\r\nТретий год как мир спасаем.\r\nСна себя лишаем,\r\nОт темна до темна.\r\n\r\n   Я пробился сквозь кордоны,\r\n   Я убил и съел дракона,\r\n   И по случаю такому\r\n   Даже выпил вина.\r\n\r\n       [E]          [E7]       [A]\r\n      Сакура - Катана - Сакэ,\r\n       [E]          [E7]       [A]\r\n      Сакура - Катана - Сакэ,\r\n       [E]          [E7]       [A]  [Gdim]\r\n      Сакура - Катана - Сакэ,\r\n       [E]          [E7]       [E]\r\n      Сакура - Катана - Сакэ.\r\n\r\nУтро красит нежным светом\r\nВпрочем, стоит ли об этом?\r\nЯ спешу к тебе с приветом,\r\nПивом звеня.\r\n\r\n   Выпьем, бедная подружка\r\n   Где моя большая кружка?\r\n   Что же ты, моя старушка,\r\n   Снова пьешь без меня?\r\n\r\n      Сакура - Катана - Сакэ,\r\n      Сакура - Катана - Сакэ,\r\n      Сакура - Катана - Сакэ,\r\n      Сакура - Катана - Сакэ.', 4, 18, 11),
(244, 21, 'То, Что Люди Поют по Дороге Домой', '[G]                 [Cm6]\r\nДули ветры и последние метры\r\n                   [G] [G7] [G6] [G+]\r\nМне давались с трудом,\r\n      [G]              [Cm6]\r\nНо дорога кончается там,\r\n                [G]  [G7] [G6] [G+]\r\nГде начинается дом.\r\n\r\n         [Am]                [D]\r\n   И когда путь уже за спиной\r\n        [G]       [G/f#]      [Em]\r\n   Улыбнется тебе дом родной.\r\n         [Am]             [Cm]              [G]   [G7] [G6] [G+]\r\n   От того люди часто поют по дороге домой.\r\n\r\nМой мотор тарахтит и гудит,\r\nМой бензин на нуле,\r\nНо машина летит и летит,\r\nПараллельно земле.\r\n\r\n   Между небом и этой землей,\r\n   Я иду по короткой прямой,\r\n   И пою, то что люди поют по дороге домой.\r\n\r\n[Em]             [Em+7]\r\nЕсли вдруг когда-нибудь,\r\n      [Em7]             [Em6]\r\nТы решишь, что твой окончен путь,\r\n       [Am]\r\nНе спеши -\r\n      [D]                   [G]  [G/f#] [Em]\r\nВедь мы еще не спели с тобой.\r\n      [Am]\r\nНе допели то,\r\n           [D]               [G]  [G7] [G6] [G+]\r\nЧто люди поют по дороге домой.', 3, 33, 12),
(245, 22, 'Моцартиана (Live)', 'Моцартиана (Live)', 5, 22, 1),
(246, 22, 'Три окна (Live)', '[Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nЯ забыл о бурях и о громе,\r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nМне теперь дороже тишина, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A]\r\nИ живу я в старом-старом доме,\r\n   [Hm]            [E7]        [A] \r\nИз него выходят три окна. \r\n\r\nПервое окно выходит в поле, \r\nВ поле наших самых лучших лет, \r\nВ этом поле не бывает боли, \r\nИ любой вопрос находит свой ответ. \r\n   [Hm]            [E7]    [C#m]\r\n   Там и днем и ночью солнце светит, \r\n   [Hm]            [E7]           [F#m] \r\n   Летом и зимой цветет земля, \r\n   [Hm]            [E7]        [A]  [Asus4] [A] [Asus2] [A] \r\n   Не взрослея, там играют дети, \r\n   [Hm]            [E7]        [A] \r\n   И один из них - наверно я. \r\n\r\nА окно второе вышло к лесу, \r\nТемный лес поднялся до небес, \r\nИ от солнца лес создал завесу, \r\nОт вопросов скрыл ответы лес. \r\n\r\n   И жизнь идет там по лесным законам,\r\n   И я пугался каждого куста, \r\n   Проходя по тропкам незнакомым, \r\n   В час, когда спускалась темнота. \r\n\r\nТретье окно выходит к океану, \r\nРовным ветром дышит океан, \r\nА за ним диковинные страны, \r\nИ никто не видел этих стран. \r\n\r\n   Словно вечность, океан огромен, \r\n   И сильна спокойствием волна, \r\n   И когда мне тесно в старом доме - \r\n   Я сажусь у третьего окна. \r\n\r\nПревратится в воду рек - Снег, \r\nСтанет облаком седым - Дым, \r\nСтанет домом твой родной Дом, \r\nИз руин воздвигнут вам Храм. \r\n\r\nДолжен кончиться любой - Бой, \r\nПобедит, сомненья нет, - Свет, \r\nЯ возьму букет цветов - Слов, \r\nИ раздам моим друзьям - Вам.', 6, 8, 2),
(247, 22, 'Мы расходимся по домам (Live)', '[E] [H] [E] [H] [E] [H] [E] [H]\r\n         [E]\r\nВ жизни подвигу мало места,\r\n          [F#]                [Fm]\r\nНо много мест для дурных идей...\r\n       [E]\r\nОн придумал себе принцессу\r\n     [H]\r\nИ отнес свое сердце ей.\r\n                       [H/A*]\r\nИ, конечно, ей лестно было,\r\n       [E]       [H]     [A]\r\nЧто такого с ума свела,\r\n     [F#]\r\nНо она его не любила,\r\n      [H7]             [E]\r\nНе любила - и все дела. \r\n\r\n[E] [H]\r\n        [E]\r\nОна держала его на стальном поводке,\r\n        [F#]                  [Fm]\r\nНо не ближе известных границ.\r\n       [E]\r\nЕй совсем был не нужен журавль в руке,\r\n        [H]\r\nЕй вполне хватало синиц.\r\n                       [H/A]\r\nИ пока он понял, что нечего ждать,\r\n     [E]           [H]     [A]\r\nПрошло слишком много лет.\r\n      [F#]\r\nДаже если время вернется вспять - \r\n        [H7]            [E]\r\nВсе равно, моста уже нет.\r\n         [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]          [H]        [C#m]    [H/A]\r\nТени движутся прямо к нам.\r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам. \r\n        [E]\r\nВ этой жизни не много смысла\r\n       [F#]             [Fm]\r\nИ в основе, увы, печаль.\r\n      [E]\r\nИ никто не падал с карниза,\r\n      [H]\r\nИ никто не летал по ночам.\r\n                     [H/A]\r\nИ никто даже послан не был - \r\n          [E]         [H]      [A]\r\nНочь, звонок, разговор пустой...\r\n       [F#]             [F#m]\r\nПросто умер ангел и где-то в небе\r\n       [H7]               [E]\r\nСтало меньше одной звездой. \r\n        [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]        [H]      [C#m] [H/A]\r\nТени движутся прямо к нам. \r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам. \r\n\r\nsolo: \r\n[E] [F#] [Fm] [E] [H] [H/A]\r\n[E] [H] [A] [F#] [H7] [E]\r\n        [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]        [H]      [C#m] [H/A]\r\nТени движутся прямо к нам. \r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам. \r\n        [A]\r\nСолнце ниже, длиннее тени,\r\n       [E]        [H]      [C#m] [H/A]\r\nТени движутся прямо к нам. \r\n     [F#]\r\nЗабывая цветы на сцене,\r\n       [F#m]          [C#m]\r\nМы расходимся по домам.', 4, 2, 3),
(248, 22, 'Снег (Live)', '[A]    [A/g]           [F#7]\r\nСнег. Город почти ослеп.\r\n  [Hm]    [Hm/a]           [E7]\r\nСвет. Красок на свете нет,\r\n[C#7]                 [Dmaj7]\r\nЕсть только белый цвет.\r\n [Hm7]    [C#m7]\r\nГород твой,\r\n  [F#7]     [Dmaj7]\r\nСловно корабль,\r\n  [Hm]      [Hm/a]     [E]   [E+]\r\nЛьдами захвачен в плен.\r\n\r\nЯ знаю один секрет:\r\nСнег скоро сойдет на нет -\r\nУ снега короткий век.\r\nГород твой, \r\nСолнцем согрет,\r\nПоплывет по весенней воде.\r\n\r\n [A] [A/g]          [F#7]\r\nНо я не могу понять:\r\n  [Hm] [Hm/a]                 [E7]\r\nКто дарит нам столько тепла,\r\n  [C#7]           [Dmaj7]\r\nЧтобы растаял снег?\r\n  [Hm7]        [C#m7]\r\nСто долгих дней \r\n  [F#7]         [Dmaj7]\r\nСнег был сильней\r\n     [Hm]         [Hm/a]\r\nИ исчез без следа\r\n         [E]  [E+]        [F]  [G] [A] [F] [G] [A]\r\nЛишь за пять теплых дней...', 3, 11, 4),
(249, 22, 'Ночь (Live)', '[Dm]                             [A7] [B]\r\nНочь - чёрная река длиной на века,\r\n            [A7]     [B]      [Dm]\r\nСмотри, как эта река широка:\r\n                            [A7] [B]\r\nЕсли берега принять за рассвет,\r\n          [A7]       [B]      [Gm]\r\nТо будто дальнего берега нет,\r\n        [Am]         [Gm]\r\nИ переправа непроста,\r\n           [F]           [B]\r\nИ нет ни брода, ни моста, \r\nЛишь только лодка в два весла... \r\n\r\nЯ утро берегу на том берегу,\r\nНо до него я доплыть не могу: \r\nЛодка в два весла меня бы спасла,\r\nВот только весла вода унесла,\r\nИ нас снесло к большой воде,\r\nИ нам не видно в темноте,\r\nЧто берега уже не те...', 4, 42, 5),
(250, 22, 'Он был старше её (Live)', '[Em]\r\nОн был старше ее. Она была хороша,\r\nВ ее маленьком теле гостила душа,\r\n        [Am]                       [H7]           [Em]\r\nОни ходили вдвоем, они не ссорились по мелочам.\r\nИ все вокруг говорили: чем не муж и жена?\r\nИ лишь одна ерунда его сводила с ума -\r\n         [Am]           [H7]               [Em]\r\nОн любил ее, она любила летать по ночам.\r\n          [E7]\r\n        Он страдал, если за окном темно,\r\n                                    [Am]\r\n        Он не спал, на ночь запирал окно,\r\n                                       [H7]\r\n        Он рыдал, пил на кухне горький чай,\r\n                                     [Em]\r\n        В час, когда она летала по ночам.\r\n        [E7]\r\n        А потом, по утру, она клялась,\r\n                                    [Am]\r\n        Что вчера это был последний раз,\r\n                                       [H7]\r\n        Он прощал, но ночью за окном темно,\r\n                          [Em]\r\n        И она улетала все равно. \r\n\r\nА он дарил ей розы, покупал ей духи,\r\nПосвящал ей песни, читал ей стихи,\r\nОн хватался за нитку, как последний дурак.\r\nОн боялся, что когда-нибудь под полной луной,\r\nОна забудет дорогу домой,\r\nИ однажды ночью вышло именно так. \r\n\r\nОн страдал, если за окном темно, \r\nОн не спал, на ночь запирал окно, \r\nОн рыдал, пил на кухне горький чай, \r\nВ час, когда она летала по ночам. \r\nА потом, поутру она клялась, \r\nЧто вчера это был последний раз, \r\nОн прощал, но ночью за окном темно, \r\nИ она улетала все равно. \r\n\r\nИ три дня и три ночи он не спал и не ел,\r\nОн сидел у окна и на небо глядел,\r\nОн твердил ее имя, выходил встречать на карниз.\r\nА когда покатилась на убыль луна,\r\nОн шагнул из окна, как шагала она,\r\nОн взлетел, как взлетала она, но не вверх, а вниз. \r\n\r\nОн страдал, если за окном темно,\r\nОн не спал, на ночь запирал окно,\r\nОн рыдал, пил на кухне горький чай,\r\nВ час, когда она летала по ночам.\r\nА потом, поутру она клялась,\r\nЧто вчера это был последний раз,\r\nОн прощал, но ночью за окном темно,\r\nИ она улетала все равно.', 4, 16, 6),
(251, 22, 'Колыбельная (Live)', '[D]    [F#m]    [Hm]   [F#m]\r\nСпи малыш, пока зима -\r\n[Em7]     [A7]     [D]\r\nВек не быть зиме.\r\n         [F#m]   [Hm]     [F#m]\r\nКрепко спи, покуда мгла\r\n[Em7]           [A]  [Asus4] [A]\r\nБродит по Земле.\r\n\r\n   [Hm]      [F#7]    [G]      [H7]\r\n   Чёрный Конь копытом бьёт,\r\n   [G]        [Gm]        [F#m] [A7]\r\n   Бледный конь - за ним.\r\n   [D]        [F#]     [G]       [H7]\r\n   Будь же ты от всех невзгод\r\n   [Em7]   [A]      [D]  [D6] [D] [G] [G9] [G] [D] [Dsus4] [D] [A] [A6] [A] [D]\r\n   Господом храним.\r\n\r\nБудь же ты от бурь и бед\r\nГосподом храним.\r\nБудет день, и будет свет,\r\nИ надежда с ним.\r\n\r\n   Долетит Благая Весть,\r\n   Только верь и жди.\r\n   Иисус еще не здесь,\r\n   Но уже в пути.', 2, 57, 7),
(252, 22, 'Шанхай-блюз (Live)', '[A]      [C#7] \r\nДавным-давно, \r\n[F#m]              [Em6]   [A7] \r\nКогда нам было все равно, \r\n     [D7]          [H7]\r\nЧто пить, с кем жить,\r\n     [A]        [F#7]               [Hm] \r\nКак быть, и время проходило Hi-Fi - \r\n[F7]        [E7]     [A]  [Hm] [E7] \r\nМы пели Блюз-Шанхай \r\n\r\nКогда свет, свет побед \r\nПрошлых лет сказал тебе "привет", \r\nНу что ж, пускай... \r\nТы голову не опускай и вспомни, \r\nВспомни Блюз-Шанхай. \r\n\r\nСоберем старый хор, \r\nИ возьмем любимый ля-мажор. \r\nТогда года -\r\nНе беда. А не веришь - ты мне сам подыграй \r\nВсе тот же Блюз-Шанхай. \r\n\r\nА потом, за столом, \r\nО былом, и о том, и о сем, \r\nМы споем. И нальем, \r\nИ снова нальем, пусть это будет не чай - \r\nПомянем Блюз Шанхай.\r\n\r\nШанхай блюз... Шанхай блюз...\r\nШанхай блюз... Шанхай блюз...', 6, 48, 8),
(253, 22, 'Преслиана (Live)', 'Преслиана (Live)', 9, 4, 9),
(254, 22, 'Он играет на похоронах и танцах (Live)', '[Em]\r\nОн играет на похоронах и танцах,\r\n[F]         [H]\r\nВсе зовут - там и тут.\r\n[Em]\r\nИ ни там, ни тут не может он остаться,\r\n[F]          [H]\r\nСнова ждут там и тут.\r\n[F]                        [Em]\r\nИ вновь смычок рождает звук,\r\n[F]                         [H]\r\nСто новых свадеб, сто разлук.\r\n[Em]\r\nОн играет на похоронах и танцах,\r\n[F]                   [H]      [Em]\r\nВся наша жизнь - одно из двух.\r\n[D7]                      [G]\r\nКогда стучится в дом беда, не плачь,\r\n[H]                          [Em]\r\nМы здесь с тобой не навсегда.\r\n[D7]                        [G]\r\nЧто б ни случилось, никогда не плачь,\r\n[H]                   [Em]\r\nИграй, и горе не беда.\r\n\r\nИ когда-нибудь совсем не там, где надо,\r\nВыйдет срок, прозвенит звонок.\r\nИ я вспомню тех, кто шел со мною рядом,\r\nТо, что смог и не смог.\r\nНичто не вечно под луной,\r\nЯ упаду на шар земной.\r\nПусть не будет комиссаров в пыльных шлемах,\r\nПусть он сыграет надо мной.\r\n\r\nОн играет на похоронах и танцах,\r\nВсе зовут там и тут.\r\nИ ни там, ни тут не может он остаться,\r\nСнова ждут там и тут.\r\nИ вновь смычок рождает звук.\r\nСто новых свадеб, сто разлук.\r\nОн играет на похоронах и танцах,\r\nВся наша жизнь - одно из двух.', 4, 0, 10),
(255, 22, 'Круги на воде (Live)', '[A6]                    [A7]\r\nГод за годом видится мне,\r\n[D]         [Dm]            [A+7]\r\nЭта жизнь, эта смерть и эта любовь.\r\n   [A7]                     [Dm7]\r\nИ только лишь круги на воде\r\n    [C#m]          [Hm]         [E7]\r\nНа темной воде. Я смотрю и вижу.\r\n  [A]                 [A7]\r\nВновь, шаги в пустоте,\r\n            [D]              [Dm] [A6]\r\nКруги на воде. Круги на воде.\r\n\r\nМожешь осмотреться вокруг,\r\nВидеть вверх и видеть вниз и по сторонам.\r\nНо где твои родные, мой друг?\r\nПусто вокруг, все ушли, оставив\r\nНам шаги в пустоте,\r\nКруги на воде. Круги на воде.\r\n\r\n   [F#m]\r\n   Закатай меня в асфальт своей любви,\r\n                                  [E7]\r\n   Где догорают огни и осыпается небо.\r\n         [F#m]\r\n   Пронеси меня стрелой сквозь длинный серый строй\r\n                                             [E7]\r\n   Душ, испепеленных тобой, туда, где я еще не был.\r\n\r\nЗдравствуй, город съехавших крыш,\r\nЭтот бег, эта гарь и эта печаль\r\nНекуда бежать - ты молчишь,\r\nСнова молчишь, видишь как уходят\r\nВдаль шаги в пустоте,\r\nКруги на воде. Круги на воде.\r\nШаги в пустоте,\r\nКруги на воде. Круги на воде...', 5, 10, 11),
(256, 22, 'Музыка под снегом (Live)', '[Hm]\r\nВ летнем парке зима,\r\n                   [H7] \r\nВ летнем парке концерт.\r\n[G]                 [F#m] \r\nВсе начнется вот-вот,\r\n                    [Em]\r\nЖаль, что зрителей нет,\r\n\r\n   [C]            [Hm]\r\n   И оркестр укрыт снегом -\r\n   [C]                [Hm] \r\n   Словно вата, глухим снегом,\r\n   [C]             [Hm]        [C7] \r\n   И соната слышна едва-едва... \r\n\r\nГолос скрипки звенит, \r\nКак стекло о стекло, \r\nИ трубу не отнять \r\nОт заснеженных губ...\r\n\r\n   А в каждой ноте поет лето, \r\n   И с собою зовет лето, \r\n   И соната слышна едва-едва... \r\n\r\n      [A]                  [D]\r\n      То взлетает, как стая\r\n                  [F#7]\r\n      Оттаявших птиц,\r\n      [A]               [D] \r\n      То ложится под ноги,\r\n                      [F#7] \r\n      Послушно, как снег,\r\n                [Em]\r\n      Ни для кого...\r\n\r\nИ восторг в их глазах\r\nНам вовек не понять, \r\nИм уже не помочь, \r\nИ приходится лгать.\r\n\r\n   И я опять прохожу мимо, \r\n   Прохожу, и гляжу мимо, \r\n   И соната слышна едва-едва...', 4, 39, 12),
(257, 22, 'Место, где свет (Live)', '[E]                                                  [G#m]\r\nЭтот город застрял во вранье, как "Челюскин" во льдах -\r\n      [F#m]                [F#m7]               [H] \r\nПогрузившийся в ад и частично восставший из ада.\r\n     [E]                                   [G#m]\r\nНаше общее детство прошло на одних букварях,\r\n      [F#m]           [H]                 [E]   [E9] [E]\r\nОт того никому ничего объяснять и не надо.\r\n\r\n           [G#7]                                    [C#m]\r\n   Что же мы всё кричим невпопад и молчим не про то,\r\n             [F#7]                                [H]   [H7]\r\n   И все считаем чужое, и ходим, как пони, по кругу?\r\n          [E]                                            [C#] [C#7]\r\n   Вы не поняли, сэр, - я совсем не прошусь к вам за стол,\r\n            [F#m]                  [H]                        [E]\r\n   Мне вот только казалось - нам есть что поведать друг другу. \r\n\r\n                   [A]\r\n      Место, где свет\r\n                 [H]                            [E]\r\n      Было так близко, что можно коснуться рукой,\r\n                  [A]\r\n      Но кто я такой,\r\n                [H]                [G#7]\r\n      Чтоб оборвать хрустальную нить -\r\n               [C#m] \r\n      Не сохранить,\r\n                      [C#m6]\r\n      Прошло столько лет,\r\n                    [F#m]\r\n      И нас больше нет\r\n      [H]              [A]  [H] [E] \r\n      В месте, где свет...\r\n\r\nЭтот город застрял в межсезонье, как рыба в сети - \r\nСтрелки все по нулям, и не больше не меньше,\r\nМы почти научились смеяться, но как ни верти - \r\nЧто-то стало с глазами когда-то загадочных женщин.\r\n\r\n   Хочешь, я расскажу тебе сказку про злую метель,\r\n   Про тропический зной, про полярную вьюгу?\r\n   Вы не поняли, мисс, - я совсем не прошусь к вам в постель,\r\n   Мне вот только казалось - нам есть, что поведать друг другу. \r\n\r\n      Место, где свет\r\n      Было так близко, что можно коснуться рукой,\r\n      Но кто я такой,\r\n      Чтоб оборвать хрустальную нить - \r\n      Не сохранить, \r\n      Прошло столько лет,\r\n      И нас больше нет \r\n      В месте, где свет...\r\n\r\nМне никто не указ, да и сам я себе не указ - \r\nДоверяю лишь левой руке, маршруты рисуя.\r\nНу а тот, кто - указ, он не больно-то помнит про нас,\r\nДа и мы поминаем его в беде или всуе.\r\n\r\n   Что казалось бы проще - вот Бог, вот порог,\r\n   Что же снова ты смотришь в пустынное небо с испугом?\r\n   Вы не поняли, Лорд, - я отнюдь не прошусь к вам в чертог,\r\n   Мне лишь только казалось - нам есть, что поведать друг другу.', 4, 41, 13),
(258, 22, 'Мой друг (Лучше всех играет блюз) [Live]', '[C#m7]\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОн на взводе -\r\nНе подходи,\r\nОн уходит\r\nВсегда один.\r\n\r\n         [A7]\r\n   Но зато мой друг\r\n                       [C#m7]\r\n   Лучше всех играет блюз,\r\n           [A7]\r\n   Круче всех вокруг\r\n                    [C#m7]\r\n   Он один играет блюз.\r\n\r\nОн не знает\r\nУмных слов -\r\nОн считает\r\nВас за козлов,\r\nДаже в морге\r\nОн будет играть -\r\nНа восторги\r\nЕму плевать.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nНочь - на выдох,\r\nДень - на вдох,\r\nКто не выжил,\r\nТот и сдох.\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.\r\n\r\nПоднят ворот,\r\nПуст карман -\r\nОн не молод\r\nИ вечно пьян,\r\nОбреченно\r\nЛетит душа\r\nОт саксофона -\r\nДо ножа.\r\n\r\n   Но зато мой друг\r\n   Лучше всех играет блюз,\r\n   Круче всех вокруг\r\n   Он один играет блюз.', 4, 47, 14),
(259, 22, 'Поворот (Live)', '[A]                      [F#]             [F#7]\r\nМы себе давали слово - не сходить с пути прямого\r\n [Hm]              [A]      [E]\r\nНо, так уж суждено! м-м-м...\r\n[A]                        [F#]         [F#7]\r\nИ уж если откровенно - всех пугают перемены,\r\n [Hm]                [A]      [E]\r\nНо, тут уж все равно, м-м-м...\r\n\r\n    [Hm]             [E]\r\n   Вот, новый поворот\r\n              [C#m]               [F#7]\r\n   И мотор ревет, что он нам несет\r\n                   [Hm]             [Dm]\r\n   Пропасть или взлет, омут или брод\r\n               [A]                  [F#7]\r\n   Ты не разберешь, пока не повернешь...\r\n    [Hm]             [E]\r\n   Вот, новый поворот\r\n              [C#m]               [F#7]\r\n   И мотор ревет, что он нам несет\r\n                   [Hm]             [Dm]\r\n   Пропасть или взлет, омут или брод\r\n               [A]                  [E]\r\n   Ты не разберешь, пока не повернешь...\r\n\r\nИ пугаться нет причины - если вы еще мужчины,\r\nВы кое в чем сильны...\r\nВыезжайте за ворота, и не бойтесь поворота,\r\nПусть добрым будет путь.\r\n\r\n   Вот, новый поворот\r\n   И мотор ревет, что он нам несет\r\n   Пропасть или взлет, омут или брод\r\n   Ты не разберешь, пока не повернешь...\r\n   Вот, новый поворот\r\n   И мотор ревет, что он нам несет\r\n   Пропасть или взлет, омут или брод\r\n   Ты не разберешь, пока не повернешь...', 5, 8, 15),
(260, 22, 'Свеча (Live)', '[Am]        [G]            [C]         [E7/B]\r\nБывают дни, когда опустишь руки, \r\n[Dm7]           [G7]              [C]     [Bm7] [Em7]\r\nИ нет ни слов, ни музыки, ни сил.\r\n[Am]          [G]                [C]      [E7/B] \r\nВ такие дни я был с собой в разлуке \r\n[Dm7]         [G7]            [C]\r\nИ никого помочь мне не просил.\r\n[Gm]           [A7]            [Dm]  [Dm/C]\r\nИ я хотел идти куда попало, \r\n[Bb]            [E7]                [Am] [Am/B] [Am/C]\r\nЗакрыть свой дом и не найти ключа.\r\n[A/C#] [Dm7]       [G7]         [C]     [A/C#] \r\n Но верил я: не все еще пропало, \r\n     [Dm7]   \r\nПока не меркнет свет,\r\n   [G7]        [C]   [A/C#]\r\nПока горит свеча.\r\n[Dm7]         [G7]          [C]      [A/C#] \r\nНо верил я: не все еще пропало,\r\n   [Dm7]\r\nПока не меркнет свет,\r\n [G7]            [C] [Em7] [Dm7]\r\nПока горит свеча.\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [G/F] [E7/B] [Am] [E7/B] [Am]\r\nИ спеть меня никто не мог заставить:\r\nМолчание - начало всех начал. \r\nНо если песней плечи мне расправить,\r\nКак трудно будет сделать так, чтоб я молчал!\r\nИ пусть сегодня дней осталось мало \r\nИ выпал снег, и кровь не горяча, \r\nЯ в сотый раз опять начну сначала, \r\nПока не меркнет свет,\r\nПока горит свеча!\r\n[G] [E7] [Am] [Am/G] [Dm7] [G] [E7] [Am] [A/C#] [Dm7] [G7] [C] [F] [B] [E7] [Am] [Am/G] [Fmaj7] [Asus2]', 4, 32, 16),
(261, 23, 'Полный Контакт', '[Em]\r\nЭтот город пахнет тем же, что и сто лет назад, \r\nЗдесь на каждый рассвет уже отписан закат, \r\nСвинья не выдаст, бог не съест \r\nПоскольку здесь на всех живых уже поставили крест\r\n[G]\r\nВ моём телевизоре что-то не так\r\n[F#]            [F]                  [Em]\r\nДостали танцы, иду на полный контакт \r\n\r\nПока ещё держится мода говорить невпопад, \r\nНо это свобода ухода от там, где едят, \r\nДозволено в "Бентли" разъезжать по тюрьме \r\nПо пояс в баксах, по горло в дерьме \r\nУ власти добрый проницательный взгляд \r\nВчера разминка, завтра полный контакт \r\n\r\n   [D]        [C]\r\n   А над тобой\r\n   [D]        [C] \r\n   Небо стеной\r\n   [G]        [D]      [Am]\r\n   Небу никто не указ\r\n   [D]          [C]\r\n   Как не кричи\r\n   [D]        [C] \r\n   Небо молчит\r\n   [G]         [D]       [Am]\r\n   Небу нет дела до нас\r\n                          [Em]\r\n   Отсутствует полный контакт \r\n\r\nЗдесь не знают, что делать как и сто лет назад, \r\nЗато любая собака скажет тебе, кто виноват \r\nЗдесь не придется бороться за тождество лиц \r\nЗдесь отличают инородцев по оттенку ресниц, \r\nСтремленье двигаться строем - генетический факт \r\nСлова не катят, остался полный контакт. \r\n\r\n   А над тобой\r\n   Небо стеной\r\n   Небу никто не указ\r\n   Как не кричи\r\n   Небо молчит\r\n   Небу нет дела до нас...\r\n\r\n   А над тобой\r\n   Небо стеной\r\n   Небу никто не указ\r\n   Как не кричи\r\n   Небо молчит\r\n   Небу нет дела до нас\r\n   Отсутствует полный контакт', 4, 29, 1),
(262, 23, 'Улетай', '[D]\r\nУлетай\r\n      [D-]            [D] \r\nЭтот город уже обречён,\r\n       [D-5add11]            [Hm7]\r\nВсе гуляют и никто ни при чём,\r\n            [Em]            [A]\r\nИ только "что почём" на умах,\r\n\r\n       [D]\r\n   Улетай\r\n         [D-]                      [D] \r\n   За весельем часто прячется страх,\r\n         [D-5add11]               [Hm7]\r\n   И неправда заблудилась в словах,\r\n               [G]\r\n   И слишком много папах\r\n        [B]                    [D]\r\n   И мигалок на больших головах. \r\n\r\n              [Hm]                        [F#m7]\r\n      На рассветном небе ждёт твоя звезда\r\n            [Hm]                           [A]\r\n      Если ты там не был, значит, нам туда,\r\n            [G]\r\n      Этот порт не для нас\r\n      [D]              [F#7]\r\n      Есть только "здесь и сейчас"\r\n         [E7]    [G]                 [D]    [A]\r\n      И ты, который рождён побеждать. \r\n\r\nУлетай \r\nОт промозглой московской зимы, \r\nОт ползущей с востока войны \r\nОт чужой вины на плечах, \r\n\r\n   Улетай\r\n   "От винта!" и винты запоют, \r\n   Выбрать якорь дело пары минут, \r\n   Кто решился тот прав, \r\n   Даже если неправ в мелочах.\r\n\r\n      На рассветном небе ждёт твоя звезда\r\n      Если ты там не был, значит, нам туда,\r\n      Этот порт не для нас\r\n      Есть только "здесь и сейчас"\r\n      И ты, который рождён побеждать.', 3, 34, 2),
(263, 23, 'Старый Самолёт', '[Em7]\r\nА я сегодня не могу летать, \r\nА я наверно свой мотор сломал,\r\n[A7]        [A/g]         [A/f#]  [A/g]\r\nМеня пытались в цепи заковать\r\n[A7]        [A/g]         [A/f#]  [A/g]\r\nЯ всех подальше от себя послал\r\n \r\nА мне разбавили бензин водой, \r\nИ у меня замотан скотчем винт, \r\nИ нету дыма над моей трубой \r\nИ на хвосте мой флаг похож на бинт \r\n\r\n       [Em7]\r\n   Я старый самолёт\r\n   Я толстый самолёт\r\n       [A7]\r\n   Я джамбо, лабамбо...\r\n\r\nА я шестой десяток разменял,\r\nМенты забрали у меня права \r\nМой экипаж уже как год слинял, \r\nАх мама, мама, ты была права\r\n\r\nИ я стою как одинокий пёс \r\nИ вою, вою, вою на луну, \r\nХочу чтоб кто-нибудь меня увёз \r\nИз грязи в князи, из зимы в весну\r\n\r\n   Я старый самолёт\r\n   Я толстый самолёт\r\n   Я джамбо, лабамбо...', 3, 54, 3),
(264, 23, 'То, Чего Больше Нет', '[Dsus4]             [D] \r\nОн всё время бежал то туда, то оттуда\r\n [Dsus4]             [D] \r\nКак будто ждал какого-то чуда\r\n      [G]\r\nИ глаза его глядели туда, где ничего нет.\r\n        [Dsus4]             [D] \r\nНо когда он на сцене, застыв на минутку\r\n       [Dsus4]             [D] \r\nПодносил к губам золотую дудку\r\n      [G]              [F]                 [C]\r\nСтановилось ясно, зачем он пришёл на свет\r\n\r\n          [Dsus4]             [D] \r\n   Он работал по клубам, он спал в понедельник\r\n           [Dsus4]             [D] \r\n   Не хватало любви, не хватало денег,\r\n           [G]\r\n   Он засыпал и просыпался один, хотя играл как бог.\r\n         [Dsus4]             [D] \r\n   Это раньше птичек манило искусство,\r\n        [Dsus4]             [D] \r\n   А теперь они всё чаще там, где капуста\r\n          [G]          [F]              [Em]\r\n   А не драные джинсы и пустой кошелёк \r\n\r\n         [D#]                              [D#-]\r\n      Я точно помню, что всё это было зимой,\r\n               [Fm]                            [Cm]\r\n      И падал мокрый снег, и рано зажигали свет.\r\n            [D#]                         [D#-]\r\n      Я не помню точно, с кем это было - с тобою или со мной,\r\n          [Fm]                              [G#]\r\n      И стоит ли помнить то, чего больше нет\r\n                   [Am] [D7] [G] [Am] [D7] [G]\r\n      Чего больше нет \r\n\r\nВремя вечно приносит недобрые вести, \r\nА мы всё бежим и бежим на месте \r\nИ сами себе твердим - ещё чуть-чуть и вот-вот. \r\nОн хлебал в перерывах дешёвое пиво, \r\nА душа его бродила по краю обрыва, \r\nЗамирая от дальнего эха божественных нот.\r\n\r\n   Он ещё забивал на субботу работу, \r\n   Ещё занимал бабло до субботы, \r\n   Он ещё не знал, что это уже не вернуть. \r\n   Он ещё жевал бутерброды с парашей, \r\n   Ещё набирал какой-то Наташе \r\n   А душа его уже собиралась в путь. \r\n\r\n      Я точно помню, что всё это было зимой,\r\n      И падал мокрый снег, и рано зажигали свет.\r\n      Я не помню точно, с кем это было - с тобою или со мной,\r\n      И стоит ли помнить то, чего больше нет\r\n      Чего больше нет\r\n\r\n   И под утро, когда сцена была пустая\r\n   Он играл один, уже почти взлетая, \r\n   И земной его путь оборвался, как скверный сон. \r\n   И Всевышний был к нему благосклонен \r\n   Недолго держал его на перроне \r\n   И с почётом провёл в самый лучший вагон. \r\n\r\n      [D#] [D#-] [Fm] [Cm]\r\n            [D#]                         [D#-]\r\n      Я не помню точно, с кем это было - с тобою или со мной,\r\n          [Fm]                              [G#]\r\n      И стоит ли помнить то, чего больше нет\r\n                   [Cm] [F7] [B] [Cm] [F7] [B]\r\n      Чего больше нет', 4, 54, 4),
(265, 23, 'Слива', '[D]\r\nС самых юных лет я узнал секрет, как снискать успех.\r\nНи минуты я не потратил зря всё стремился вверх.\r\n              [F]                                 [E]\r\nЯ бродил в горах, побеждая страх, грыз гранит наук,\r\n              [A7]                                     [D]\r\nНо момент настал, я на вершине встал и посмотрел вокруг.\r\n\r\n      [D7]\r\n   В ниве зацветает слива, в небесах поют орлы, \r\n   Плавно и неторопливо мы спускаемся с горы. \r\n      [F]                                              [E]\r\n   Здравствуй, плата за старанье, здравствуй, результат труда.\r\n    [F]        [G]       [A7]              [D]\r\n   Видишь в позе ожиданья встали стада. \r\n\r\nЯ был полон сил, я вперёд спешил, не смыкая глаз. \r\nЯ пахал весь день, побеждая лень, как в последний раз. \r\nЯ тонул в волне, я горел в огне, я хлебнул беды. \r\nНо это всё вчера, а теперь пора собирать плоды.\r\n\r\n   В ниве зацветает слива, в небесах поют орлы, \r\n   Плавно и неторопливо мы спускаемся с горы. \r\n   Здравствуй, плата за старанье, здравствуй, результат труда.\r\n   Видишь в позе ожиданья встали стада. \r\n\r\n   В ниве зацветает слива, в небесах поют орлы, \r\n   Плавно и неторопливо мы спускаемся с горы...', 5, 6, 5);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(266, 23, 'Пой', '[Em9]\r\nОн приходит в место, где ему должно петься, \r\nМесто занято, он стоит по соседству,\r\n          [C7]\r\nВ три ручья из глаз тишина,\r\n        [Em] \r\nВремя сладко шепчет новые сказки, \r\nИ, прикрыв ушами свиные глазки,\r\n          [C7]\r\nСпит большая, как кит, страна,\r\n    [Am] \r\nУлетела птичка, уснула рыбка, \r\nСохранилась привычка считать улыбкой\r\n        [F# ]\r\nЭтот странный оскал на лице,\r\n    [Am] \r\nИ уже под уклон понеслась дорога, \r\nСколько там осталось спроси у Бога,\r\n       [Em] \r\nБог живёт на другом конце. \r\n\r\n             [G]\r\n   И только маленький мальчик, не затоптанный строем,\r\n                        [Am]\r\n   Не знающий слова "страх"\r\n          [G] \r\n   Очень хочет быть новым последним героем\r\n                          [ Am] \r\n   С красивой гитарой в руках. \r\n   Запрокинута вверх голова,\r\n   [D]\r\n   Он не дышит, он слышит слова,\r\n   [D7]\r\n   Он не дышит, он слышит слова:\r\n\r\n               [G]                    [G/h]    [Em]\r\n      "Только помни, ты будешь один, и на самом краю,\r\n              [Am] \r\n      Только помни, что правда всегда победит,\r\n           [C] \r\n      Даже если погибнет в бою,\r\n           [G]             [G/h] [Em] \r\n      Береги каждый день, пока ты живой,\r\n           [Am]                    [D7]\r\n      И пока твой ангел с тобой,\r\n       [Em] \r\n      Пой." \r\n\r\nЭти бедные бледные божьи созданья \r\nИз Эдемского сада до конца мирозданья \r\nВыгнанные взашей \r\nРазмножались и жили в любви и печали \r\nИ кругами кружили, и с годами мельчали \r\nИ смельчали до серых мышей. \r\nОни кричат о свободе, но любят палку, \r\nТак что после кнута и пряник не жалко \r\nСабантуй от поста до поста. \r\nВ головах у них пусто, на душе у них чисто, \r\nИм стругают новых фанерных артистов \r\nИз отделочного листа. \r\n\r\n   И только маленький мальчик,\r\n   Не затоптанный строем. \r\n   Не знающий слова "страх"\r\n   Очень хочет быть новым последним героем \r\n   С красивой гитарой в руках.\r\n   Высоко запрокинута вверх голова, \r\n   Он не дышит, он слышит слова, \r\n   Он не дышит, он слышит слова: \r\n\r\n      "Только помни, ты будешь один, и на самом краю, \r\n      Только помни, что правда всегда победит, \r\n      Даже если погибнет в бою, \r\n      Береги каждый день, пока ты живой, \r\n      И пока твой ангел с тобой, \r\n      Пой."', 6, 2, 6),
(267, 23, 'Ночь за Твоим Плечом', '[Gm]  \r\nЭтой ночью всё непрочно\r\n[D7]                   [Gm]   [D7]\r\nНе идут слова и счёт неточен\r\n [Gm]  \r\nТы гадаешь, ты не знаешь\r\n[D7]                     [Gm]   [D7]\r\nОтчего ты так боишься ночи \r\n\r\nЛюди - тени, двери - стены, \r\nИ уходят в никуда дороги \r\nДень не вечен, кончен вечер \r\nБьют часы и полночь на пороге \r\n\r\n       [Gm]   [D7]   [Gm]   [D7]\r\n   Эта ночь за твоим плечом тихо-тихо плачет\r\n           [Gm]                  [D7]             [Gm]   [D7]\r\n   Все замки, что хранят твой дом ничего не значат \r\n\r\nДальше - ближе, выше - ниже \r\nНевидимый снайпер бьёт по цели, \r\nТише, мыши, кот на крыше, \r\nТы бежишь и ты опять в прицеле \r\n\r\n   Эта ночь за твоим плечом тихо-тихо плачет \r\n   Все замки, что хранят твой дом ничего не значат', 3, 27, 7),
(268, 23, 'Простите', '[D]                 [Am7]\r\nПростите, простите насколько хотите, \r\n[G]                     [D]\r\nНасколько готовы простить,\r\n              [Am7]\r\nА если хотите - вы только взгляните\r\n  [G]                     [A7]\r\nВам не о чем будет грустить\r\n  [D]                      [G] \r\nУ нас все новины, элитные вина, и есть чем порадовать слух\r\n[C]            [D]                  [Em] \r\nМне холодно жить в этом мире, мой друг,\r\n[C]            [D]                      [G] \r\nМне холодно жить в этом мире, мой друг. \r\n\r\nМы сказочно рады - у нас гей-парады, \r\nТанцуй, и на всё наплевать \r\nКто там из Ирана с карманным кораном \r\nПридёт, чтоб тебя убивать \r\nРвануло опять не у вас, а напротив - саечку за испуг, \r\nМне холодно жить в этом мире, мой друг, \r\nМне холодно жить в этом мире, мой друг.\r\n\r\nА в армии пушки, побриты макушки \r\nЛизать сапоги дембелей, \r\nКак странно узнать, что иные игрушки \r\nЖивут дольше игравших в них в детстве людей, \r\nСалют генералам, увешанным салом - каждый потянет за двух \r\nМне холодно жить в этом мире, мой друг, \r\nМне холодно жить в этом мире, мой друг.\r\n\r\n               [Cm7]                           [Gm]\r\n   Все мы вышли неведомо из кого и превратились в то, что мы есть,\r\n            [Cm7]                           [Gm]\r\n   Жизнь и раньше не стоила ничего, но ценилась хотя бы честь,\r\n          [A] \r\n   Ты крутой, ты пока на плаву,\r\n           [D]               [D7] [C] [D] [Em] [C] [D] [G]\r\n   Ты не слышишь, как я зову \r\n\r\nРеклама как средство созыва под флаги, \r\nКак мост от земли до небес, \r\nКупи сто рулонов сортирной бумаги - \r\nЕсть шанс получить "Мерседес"\r\nВрубайся, вливайся, соси, улыбайся - ты замкнут в магический круг \r\nМне холодно жить в этом мире, мой друг, \r\nМне холодно жить в этом мире, мой друг.', 4, 7, 8),
(269, 23, 'Новая Весна Тебя Убьёт', '[Bmaj7] \r\nЖил на белом свете,\r\n   [A7]\r\nВсё бродил по краю\r\n     [Dm7]\r\nНазло.\r\n    [Bmaj7] \r\nСтавил всё на ветер,\r\n   [A7]\r\nДумали играю,\r\n     [Dm7]\r\nВезло.\r\n\r\n  [B7]                  [A7]\r\n   Запускал по небу сентября\r\n    [B7]                  [A7]\r\n   Жёлтые листы календаря.\r\n\r\n  [Bmaj7] \r\nСнег сначала тает\r\n[G7sus2]      [A7] \r\nОпускаясь с неба\r\n     [Dm7]\r\nКак дым.\r\n [Bmaj7] \r\nЖалости не знают\r\n[G7sus2]      [A7] \r\nКомандиры снега\r\n     [Dm7]\r\nК своим.\r\n \r\n   И уже всё тише тишина \r\n   Над тобой стеной стоит зима.\r\n\r\n         [Dm]   [Dm/c] [G]\r\n      Замело, светло, белым-бело,\r\n           [Dm]   [Dm/c] [G]\r\n      Унесло весло воды стекло,\r\n      [B]                  [A]\r\n      Не пытайся выбраться на лёд\r\n       [B]                  [A]\r\n      Новая весна тебя убьёт.\r\n \r\nЗа последним краем \r\nСнег беззвучно тает \r\nЗабудь. \r\nБьёт апрель фонтаном \r\nЧтоб тебя обманом \r\nВернуть.\r\n\r\n   В тех краях тебя никто не ждёт, \r\n   Новая весна тебя убьёт. \r\n\r\n      Замело, светло, белым-бело,\r\n      Унесло весло воды стекло,\r\n      Не пытайся выбраться на лёд\r\n      Новая весна тебя убьёт.', 4, 11, 9),
(270, 23, 'Кил - Бил', '[Am]      [C7]\r\nЖил-был Кил-Бил\r\n        [D] \r\nНе был мил Бил\r\n          [F] \r\nНа всё забил Бил\r\n [Am]          [C7]\r\nПил Бил и курил Бил\r\n        [D] \r\nМатом крыл Бил\r\n       [F] \r\nГадом был Бил \r\n\r\n    [C]\r\n   Редкая кобыла не любила Била, \r\n   Только Билу было мало \r\n   У него стояло, как шпала, \r\n   Лишь одна его подставила, \r\n   Нарушила правила, \r\n   Свалила и для Кила-Била шансов не оставила. \r\n\r\nЖил-был Кил-Бил\r\nНе был мил Бил\r\nНа всё забил Бил\r\nПил Бил и курил Бил\r\nМатом крыл Бил\r\nГадом был Бил \r\n\r\n   У попа была собака, он её любил,\r\n   Бил не забыл, отомстил, \r\n   Чуть было не убил, однако. \r\n   Но не тут-то было и кобыла с пылу \r\n   Замочила Била, \r\n   Говорили Билу - добивать надо было. \r\n\r\nЖил-был Кил-Бил\r\nНе был мил Бил\r\nНа всё забил Бил\r\nПил Бил и курил Бил\r\nМатом крыл Бил\r\nГадом был Бил', 3, 33, 10),
(271, 23, 'Небо Напомнит', '[E]\r\nТе, что тебя надули станут, тебе верны. \r\nВыпущенная пуля вернётся с другой стороны.\r\n  [A]\r\nСъехавший с места встанет на место,\r\n [F]\r\nБулка опять превратится в тесто,\r\n   [H7]                  [E]\r\nА небо напомнит, что все перед ним равны. \r\n\r\nДождь упадёт на небо, судья не найдёт вины. \r\nБылью окажется небыль и мухами станут слоны. \r\nКаплей росы окажется иней, \r\nОранжевый цвет превратится в синий, \r\nА небо напомнит, что все перед ним равны. \r\n\r\n         [H7]                                 [C#m]\r\n   И не думай, что мы идём во тьму, где ни сердцу и ни уму\r\n     [A]                               [E]\r\n   Скоро настанет расцвет умов и сердец.\r\n      [F#m]               [H7]                  [E]                    [A]\r\n   И раб, победивший своих господ, сам себе построит тюрьму\r\n                        [H7]                  [E]\r\n   И Красная Шапочка с волком пойдут под венец. \r\n\r\nЧернильница-непроливайка научится проливать \r\nАргентина-Ямайка сыграют со счётом ноль-пять \r\nЦарским мундиром станет рубаха, \r\nВ прах уйдем и выйдем из праха \r\nИ небо нам всем о чём-то напомнит опять. \r\n\r\n   И не думай, что мы идём во тьму, где ни сердцу и ни уму\r\n   Скоро настанет расцвет умов и сердец.\r\n   И раб, победивший своих господ, сам себе построит тюрьму\r\n   И Красная Шапочка с волком пойдут под венец.', 3, 21, 11),
(272, 23, 'Ангел', '[D#]                         [G#m9]\r\nГде ты бродишь, ангел мой, сто четыре дня?\r\n [D#]                  [G#m9]\r\nМожет, ты ушёл домой, позабыв меня?\r\n        [Cm]                             [F]\r\nМожет, ты среди моих друзей, или у врагов,\r\n [G#m]                    [D#]\r\nМожет, загулял и был таков.\r\n \r\nБез тебя мне, ангел мой, можно обойтись, \r\nПросто ты махни рукой или обернись. \r\nМне бы только знать, что ты придёшь всё равно когда, \r\nНу, а если нет, так не беда. \r\n\r\n           [Bm]           [C]\r\n   Мы с тобой похожи, спору нет\r\n          [Fm]            [Fm7]\r\n   Ты совсем как я, небрит и сед,\r\n          [B]                     [D#] [B] [Cm]\r\n   Старый ангел, защищающий от бед.\r\n          [Bm]          [C]\r\n   Нам осталось времени чуть-чуть,\r\n         [Fm]         [Fm7] \r\n   Впереди у нас нелёгкий путь,\r\n          [B]                        [D#] \r\n   Старый ангел, ты не должен обмануть,\r\n          [H7]                       [Cm]\r\n   Старый ангел, ты не должен обмануть. \r\n\r\nМне наверно ангел мой с кем-то изменил, \r\nУдалился на покой, телефон сменил, \r\nВидно мне придётся без тебя доживать свой век \r\nТы же, ангел, тоже человек \r\n\r\n [G#m]                    [D#]\r\nТы же, ангел, тоже человек\r\n [G#m]                    [Cm]\r\nТы же, ангел, тоже человек', 3, 47, 12),
(273, 23, 'Корабли', '[C]\r\nВслед за снегом\r\n       [C7]              [Am] \r\nТы придёшь на край земли\r\n        [C] \r\nВидишь небо\r\n      [C7]        [Am] \r\nА на небе корабли\r\n[Dm]              [Em]\r\nТают в воздухе голубом,\r\n[Dm]           [G]              [C]\r\nНа одном из них теперь мой дом \r\n\r\nРасставанье\r\nПусть уйдут тоска и грусть,\r\nДо свиданья\r\nЭто значит я вернусь\r\nИз далёкого далека \r\nЕсли ветер разгонит облака \r\n\r\n   [D#]            [B7]           [D#]\r\n   Я не знаю, кому задать вопросы\r\n                   [B7]          [D#] \r\n   Я не знаю, кто дарит мне ответы\r\n       [G]          [C]  [E7]             [Am] \r\n   И кто ведёт меня через свет и тьму\r\n      [D7]    [F]   [C] \r\n   Туда, куда иду.\r\n\r\nОставайся \r\nБеззаботной и святой \r\nУлыбайся \r\nВидишь я уже с тобой. \r\nТы увидишь парус мой \r\nТам, где небо сходится с землёй. \r\n\r\n    [E7]             [Am]\r\n   Через свет и тьму\r\n      [D7]    [F]   [C] \r\n   Туда, куда иду.\r\n\r\n [D]\r\nЧерный птичка поет в ночи,\r\n                 [A]               [Hm]\r\nОн сломал свой крыл, не может летать\r\n[A]      [G]    [Gm]\r\nИхний жизнь\r\n  [D]                [A]    [D]\r\nСтал совсем животные дела...\r\n\r\nЧерный птичка опять поёт\r\nОн чинил свой крыл и может летать\r\nИхний жизнь\r\nС тех момент перестал быть животные дела...\r\n\r\n [G]  [Gm]   [D]\r\nЧерный птичк...', 5, 17, 13),
(274, 24, 'Праздник Начинается Сейчас', '[D]\r\nСлухи, словно пули\r\n [F#m]\r\nНовости гнетут\r\n[G]         [A7]            [D]  [D7]\r\nМоре широко раскрытых глаз\r\n[Em]           [A7]\r\nВас опять надули\r\n [D]             [G]\r\nТе, что вас ведут\r\n  [D]           [A7]        [Hm]\r\nПраздник начинается сейчас\r\n  [G]           [A7]        [D]\r\nПраздник начинается сейчас\r\n\r\nМожно окопаться\r\nИ не верить в свет\r\nЯщик вас пугает каждый час\r\nА я устал бояться\r\nСтраха больше нет\r\nПраздник начинается сейчас\r\nПраздник начинается сейчас\r\n\r\nИ твоя дорога\r\nИ твой родимый дом\r\nИ свет, который никогда не гас\r\nИ частичка бога\r\nВсе в тебе самом\r\nПраздник начинается сейчас\r\nПраздник начинается сейчас', 2, 17, 1),
(275, 24, 'Брошенный Богом Мир', 'Dm\r\nЧерви в золоте, тесно в комнате, тесно в городе,\r\n                  [Gm]      [Dm]\r\nМир - большая тюрьма, кутерьма.\r\nЛето в холоде, танцы в холоде. "Кто на проводе?"\r\n              [Gm]      [Dm]\r\nНа проводе тьма, тишина.\r\n\r\n    [F]                  [A7]\r\n   И не склеить осколки,\r\n    [F]                  [A7]\r\n   И не вытравить мрак,\r\n   [Gm]\r\n   Видишь, как плодятся волки\r\n    [A7]\r\n   Из бездомных собак?\r\n   [F]                  [A7]\r\n   Вставь башку в телевизор,\r\n   [F]                  [A7]\r\n   Протри кушетку до дыр,\r\n   [Gm]\r\n   Ты уже посмертно вписан\r\n            [A7]\r\n   В этот брошенный, брошенный,\r\n                    [Dm]\r\n   Брошенный Богом мир.\r\n\r\nБолтом-гаечкой, волком-заячкой. Кем ты был, кем не был -\r\nПойди разберись, обернись.\r\nСтал овечкою, встал со свечкою. Нынче Бог тебе \r\nКак фиговый лист - типа чист.\r\n\r\n   Сомневаться не надо,\r\n   Время вспять не течёт,\r\n   Ровно в полночь день со склада\r\n   Уйдёт со счёта на счёт.\r\n   Но сейчас не об этом,\r\n   Я так хочу, чтобы жил\r\n   Тот, кто бросит лучик света\r\n   В этот брошенный, брошенный,\r\n   Брошенный Богом мир.', 3, 29, 2),
(276, 24, 'Рыбы Поднимаются Вверх по Реке', '[E7]\r\nРыбы поднимаются вверх по реке,\r\nРыбы поднимаются вверх по реке,\r\n                                          [A] [E7]\r\nМоя свобода не поместится в твоём кулаке.\r\n\r\n      [D7]\r\n   Зовут танцевать, а я туда не иду,\r\n   Зовут танцевать, а я туда не иду,\r\n         [H7]\r\n   Я не буду танцевать под чужую дуду.\r\n\r\nИ только рыбы поднимаются вверх по реке,\r\nРыбы поднимаются вверх по реке.\r\nМоя свобода не гуляет на твоём поводке.\r\n\r\n   Есть вещи, с которыми не надо шутить,\r\n   Есть люди, которых невозможно любить,\r\n   Людей вообще нет причины любить.\r\n\r\nИ только рыбы поднимаются вверх по реке...\r\n\r\nРыбы поднимаются вверх по реке.\r\nТолько рыбы поднимаются вверх по реке,\r\nВидишь, рыбы поднимаются вверх по реке,\r\nЭто рыбы поднимаются вверх по реке...\r\n\r\nРыбы поднимаются вверх по реке...', 2, 54, 3),
(277, 24, 'Апокриф', '[E]\r\nВ пурпурных снегах\r\n              [F#m]\r\nПотерян наш след;\r\n                [A]\r\nМы уйдем за дождем,\r\n             [H]\r\nРазбив зеркала. \r\n\r\nНаш город лежит \r\nНа краю тишины;\r\nПолночь, наш друг,\r\nУкажет нам путь; \r\n\r\n                    [C#m]\r\nПо другую сторону дня\r\n      [E]\r\nМы уйдем\r\n                  [H]\r\nВ ту страну, где ветер\r\n               [F#m]\r\nВернет нам глаза;\r\nПо другую сторону дня\r\nМы уйдем\r\nВ этот город,\r\nГде времени нет...', 4, 41, 4),
(278, 24, 'Буги-Вуги на Потолке', '[A7]\r\nНе знаю, как я словчил,\r\nНо школу я проскочил,\r\nЯ в ней не мог усидеть и дня.\r\n        [E7]\r\nЯ никогда никого ничему не учил, -\r\n    [D7]           [A7]\r\nНе надо учить меня.\r\n\r\nЯ раньше срока мужал,\r\nСвои вопросы решал\r\nСам по себе в отдельно взятой стране.\r\nЯ никогда никому и ни в чём не мешал,-\r\nНе надо мешать мне.\r\n\r\n       [D7]\r\n   Когда я ходил по крутым горам,\r\n             [A7]\r\n   Я был не выше самого себя.\r\n       [D7]\r\n   Когда я спускался в долины к вам,\r\n             [A7]\r\n   Я был не ниже самого себя.\r\n             [D7]\r\n   Я знаю, кто я таков, я слышу крик облаков,\r\n           [F]\r\n   Я вижу танцы рыб в далёкой реке.\r\n             [H]\r\n   Скажи, зачем ты вызываешь то врачей, то ментов\r\n   Когда я буги-вуги на потолке?\r\n\r\nЯ не люблю, когда приказ\r\nНапоминает совет,\r\nЯ не люблю когда шаги за спиной,\r\nИ я всегда иду туда,\r\nГде надпись: "Выхода нет", -\r\nНе надо ходить за мной.\r\n\r\n   Когда я бродил по крутым горам,\r\n   Я был не выше самого себя.\r\n   Когда я спускался в долины к вам,\r\n   Я был не ниже самого себя.\r\n   Я знаю, кто я таков,\r\n   Я слышу крик облаков,\r\n   Я вижу танцы в далёкой реке.\r\n   Скажи, зачем ты вызываешь\r\n   То врачей, то ментов\r\n   Когда я буги-вуги на потолке?', 3, 19, 5),
(279, 24, 'Бродяга', '[C#m]\r\nЭта ночь, как чья-то ночь.\r\nЭтот день, как чей-то день.\r\n     [F#m]\r\nЯ устал, я на пороге\r\n   [A]                [G#]\r\nВ вечном поиске знакомых тем.\r\n\r\n    [C#m]\r\nЭто утро чей-то блеф,\r\nЭтот день мое безумье,\r\n[F#m]\r\nЭта леди дама треф\r\n    [C#m]\r\nИз роковой породы оживленных мумий.\r\n\r\n       [C#m]  [G#]\r\n   Бродяга, какая странная масть.\r\n       [C#m]  [G#]\r\n   Бродяга, какое дерзкое призванье.\r\n         [F#m]\r\n   Этот город, город сна,\r\n       [A]               [G#]\r\n   Прибежище глупцов и улиц без названья.\r\n\r\n   Бродяга, это от слова брод.\r\n   Бродяга, но я не вижу брода.\r\n   Я попадаю в оборот,\r\n   Спаси меня, спаси меня, моя природа.\r\n\r\nПростите я случаен здесь,\r\nХотя беру я то что есть.\r\nВсе подчиняю сам велю,\r\nЯ сам себя и ненавижу и люблю.\r\n\r\nЖиву я так же, как жилось.\r\nГонюсь за тем, что не сбылось.\r\nЯ сам себе и враг и друг,\r\nЯ сам себе порок и сам порочный круг.\r\n\r\n   Бродяга, какая странная масть.\r\n   Бродяга, какое дерзкое призванье.\r\n   Этот город, город сна,\r\n   Прибежище глупцов и улиц без названья.\r\n\r\n   Бродяга, это от слова брод.\r\n   Бродяга, но я не вижу брода.\r\n   Я попадаю в оборот,\r\n   Спаси меня, спаси меня, моя природа.\r\n\r\n    [C#m]  [G#]\r\nБродяга...\r\nБродяга...\r\nБродяга...\r\nБродя-а-а-га...', 3, 37, 6),
(280, 24, 'Не Удивляйся', '[Am]\r\nНет, не стану сажать\r\nВозле дома дерево вишни -\r\n           [Em7]\r\nВедь с приходом весны\r\n    [Dm7]                  [С]\r\nВ увяданье цветов, быть может,\r\n         [Dm]                  [E7]\r\nВсем откроется бренность мира.\r\n\r\nГод за годом плывут\r\nКленовые алые листья\r\nПо теченью реки -\r\nУж не там ли, в гавани дальней,\r\nИ находит пристанище осень?..\r\n\r\n           [Dm7]\r\n   Не удивляйся,\r\n   Вспомни, кто ночь за ночью\r\n                          [Em7]\r\n   Являлся к тебе в сновиденьях,\r\n      [Dm7]\r\n   Являлся к тебе\r\n                                 [Em7]\r\n   В сновиденьях, покой твой тревожа.\r\n    [Dm7]                  [E7]\r\n   Помнишь? Так вот, это я.\r\n\r\nОт любовной тоски\r\nХотел я найти избавленье,\r\nНо напрасно - увы,\r\nДаже то, что зовем мы "снами",\r\nНам приносит лишь новые муки...\r\n\r\nЕсли вам предстоит облететь,\r\nОблетайте, покуда я с вами,\r\nДикой сливы цветы,\r\nЧтобы мне в пути не тревожиться,\r\nНе вздыхать о вашей судьбе.\r\n\r\n   Не удивляйся,\r\n   Вспомни, кто ночь за ночью\r\n   Являлся к тебе в сновиденьях,\r\n   Являлся к тебе\r\n   В сновиденьях, покой твой тревожа.\r\n   Помнишь? Так вот, это я.', 5, 4, 7),
(281, 24, 'Я Змея', '[Em]\r\nТы улыбаешься,\r\n   [Hm]\r\nНаверное, ты хочешь пить.\r\n[Em]\r\nЯ наблюдаю,\r\n       [A7]\r\nЯ ничего не хочу говорить. \r\n     [Em]               [H7]\r\nЯ змея, я сохраняю покой.\r\n [A]\r\nСядь ко мне ближе, ты\r\n[C]          [H]      [Em]\r\nУзнаешь, кто я такой. \r\n\r\nЯ знаю тепло камня,\r\nЯ знаю запах и цвет.\r\nНо когда поднимаются птицы,\r\nЯ подолгу гляжу им вслед,\r\nЯ змея; я сохраняю покой.\r\nСядь ко мне ближе, ты\r\nУзнаешь, кто я такой. \r\n\r\nИногда я гоню их прочь;\r\nИногда я хочу им петь.\r\nИногда мне хочется спрятаться в угол,\r\nЗатихнуть и умереть,\r\nНо я змея; и я сохраняю покой.\r\nСядь ко мне ближе, ты\r\nУзнаешь, кто я такой. \r\n\r\nТы улыбаешься,\r\nДолжно быть, ты ждешь ответ -\r\nДай руки; я покажу тебе,\r\nКак живое дерево станет пеплом;\r\nЯ змея; я сохраняю покой.\r\nСмотри на свои ладони - теперь\r\nТы знаешь, кто я такой.', 4, 22, 8),
(282, 24, 'Досуги-Буги', '[Gm]\r\nЯ уволился с работы потому что я устал\r\n[Gm]\r\nЯ совсем не пью вина я хожу в спортивный зал\r\n[C]\r\nНочью я лежу читаю когда все рабочие спят\r\n[Gm]\r\nНочью я кроссворд решаю и я этому так рад\r\n[D]              [C]\r\nНу а на досуге я танцую буги\r\n[D]               [C]                    [Gm]\r\nНа своем досуге я танцую буги танец буги\r\n[D]\r\nДосуги-Буги!\r\n\r\nЯ перестал ругаться матом папирос я не курю\r\nЯ купил фотоаппарат и с ним по городу хожу\r\nНочью я лежу мечтаю у меня есть одна мечта\r\nЧтоб всю жизнь под ногтями оставалась чистота\r\nНу и на досуге в чистоте станцую буги\r\nНа своем досуге я станцую буги танец буги\r\nДосуги-Буги!\r\n\r\nУ меня совсем нет денег не поеду я к жене\r\nВ голове моей идеи я гуляю по траве\r\nНочью дверь я открываю знаю меня здесь не ждет никто\r\nИ никто не отругает если я продам пальто\r\nНу и на досуге без пальто станцую буги\r\nНа своем досуге я станцую буги танец буги\r\nДосуги-Буги!\r\n\r\n[Am]\r\nПерестал я даже бриться а щетина не растет\r\n[Am]\r\nСтал я чистым чистым чистым с той поры как взял расчет\r\n[D]\r\nИ никто мне не мешает нету у меня друзей\r\n[Am]\r\nЖаль что мне не разрешают поселиться жить в музей\r\n[E]                 [D]\r\nТам бы на досуге танцевал я буги танец буги\r\n    [E]                    [D]                   [Am]\r\nПлясал бы на досуге я с чучелами буги танец буги\r\n[E]\r\nДосуги-Буги!', 3, 14, 9),
(283, 24, 'Я Не Сплю с Фотомоделями', '[G7]\r\n      Они идут... Они идут... Они идут... Они идут...\r\n\r\n      [G7]\r\nОни идут... Им скатертью дорога\r\nДвадцать метров - разворот,\r\nОни идут... Идут и видят бога\r\nИ ангелы им смотрят в рот.\r\n\r\nОни идут... Идут сквозь мониторы,\r\nВспышки камер и лучи.\r\nОни идут... Они идут - их очень много,\r\nВ их животах звенят ключи.\r\n\r\n         [D7]                     [C]\r\n   Они идут, и их ничто не остановит -\r\n          [G7]\r\n   Феноменально!\r\n    [B]                  [C]\r\n   Но я не сплю с фотомоделями - это\r\n   [B]                  [C]\r\n   Я не сплю с фотомоделями - это\r\n   [B]                  [C]\r\n   Я не сплю с фотомоделями - это\r\n           [G7]\r\n   Принципиально!\r\n\r\n      Они идут... Они идут... Они идут... Они идут...\r\n\r\nОни идут... Идут под номерами\r\nВ стройной логике чудес\r\nОни идут... Идут с голодными глазами\r\nИм есть нельзя - у них свой вес.\r\n\r\nОни идут... Идут дорогой виртуальной\r\nИ нам их старость не узнать.\r\nОни идут... Ты скажешь - ненормальный!\r\nМне просто с ними страшно спать!\r\n\r\n   Они идут, и их ничто не остановит -\r\n   Феноменально!\r\n   Но я не сплю с фотомоделями - это\r\n   Я не сплю с фотомоделями - это\r\n   Я не сплю с фотомоделями - это\r\n   Принципиально!', 3, 1, 10),
(284, 24, 'Алиса', '[F#m]       [E]         [D]  [C#7]    [F#m]      [E]         [D] [C#7]\r\nАлиса умеет вязать.     Алиса рисует в альбомах.\r\n  [F#m]       [E]         [D]  [C#7]    [F#m]      [E]         [D] [C#7]\r\nАлису в гостях не застать.     Алиса почти всегда дома.\r\n\r\nПрипев:\r\n[F#7]         [Hm]\r\nАх, Алиса, как бы нам встретиться,\r\n [E7]       [A]         [C#7]\r\nКак поболтать обо всем.\r\n[F#7]          [Am]\r\nАх, Алиса, просто не терпится,\r\n[E7]            [A]      [D]      [G#]      [C#7/4]  [C#7]\r\nАх, побыть в доме твоём, с тобою вдвоём...\r\n\r\nАлиса не любит гостей. Алиса одна вечерами.\r\nАлиса сидит на тахте с коробкой конфет и с мечтами.\r\n\r\nПрипев\r\n\r\nА-А-А-Алиса и дня не может прожить без ирисок.\r\nАлиса - она же - дитя. Но лучше всех А-А-Алиса...', 2, 53, 11),
(285, 24, 'Перекресток', '[Dm]  [A7]  [Dm] [B7] [A7] [Dm] [D7] [Gm] [Dm]  [A7]  [Dm] \r\n[Dm]  [A7]                [Dm]\r\nТы ушла рано утром, чуть позже шести. \r\n                      [B7]                  [A7]\r\nТы ушла рано утром, где-то чуть позже шести. \r\n           [Dm]   [D7]                [Gm]\r\nБесшумно оделась, посмотрев на часы. \r\n          [Dm]  [A7]                [Dm]\r\nНа пачке LM''а   нацарапав "прости". \r\n\r\nНа подушке осталась пара длинных волос. \r\nНа подушке осталась пара твоих длинных волос. \r\nИ почти машинально, что ты скажешь - басист, \r\nЯ намотал их на палец, я хотел узнать имя - получилось икс. \r\n\r\nКому жизнь - буги-вуги, а кому - полный бред. \r\nКому жизнь - буги-вуги, ну а мне - полный бред. \r\nНедопитое пиво, недобитый комар, \r\nНедосмотренный сон, незаметный удар. \r\n\r\nЯ искал тебя здесь и там, я думал - свихнусь. \r\nЯ не нашел тебя ни здесь, и не там, я думал - свихнусь. \r\nО гитара, и струны, священный союз, \r\nКогда кидает любовь, начинается блюз. \r\n\r\nТы ушла рано утром, когда я еще спал. \r\nТы ушла рано утром, когда я еще спал. \r\nВечный мой перекресток, где минус, где плюс? \r\nКогда уходит любовь, остается блюз. \r\nКогда уходит любовь, остается блюз.', 3, 52, 12),
(286, 24, 'Что Ты Имела', '[A]\r\nМы познакомились с тобой позапрошлой весной.\r\nУже на следующий день ты привела меня домой.\r\n        [D]\r\nТы говорила мне "Сядь", говорила мне "Встань",\r\n          [A]\r\nПотом, наверное, устала и легла на диван.\r\n         [E]\r\nЯ понял: это намек. Я все ловлю на лету,\r\n        [D]\r\nНо непонятно: что конкретно ты имела в виду?\r\n \r\n            [A]             [F#m]\r\n   Что ты имела? Что ты имела в виду?\r\n            [A]           [E7]\r\n   Что ты имела? Что ты...\r\n \r\nЕще я толком не запомнил твоего лица,\r\nНо мы поехали купили два каких-то кольца.\r\nИграл орган, все пили вино,\r\nТвоя мамаша почему-то назвала меня "сынок".\r\nЯ понял: это намек. Я все ловлю на лету,\r\nНо непонятно: что конкретно ты имела в виду?\r\n\r\n   Что ты имела? Что ты имела в виду?\r\n   Что ты имела? Что ты...\r\n\r\nКога ты думала я сплю, но я-то видел, дружок,\r\nКак ты насыпала мне в суп какой-то порошок.\r\nКакой странный вкус! Темнеет в глазах...\r\nИ ты сказала: "О''кей, до встречи в небесах".\r\nЯ понял: это намек. Я все ловлю на лету,\r\nНо непонятно: что конкретно ты имела в виду?\r\n\r\n   Что ты имела? Что ты имела в виду?\r\n   Что ты имела? Что ты...\r\n\r\nХоть я живу без тебя, прошла немая тоска.\r\nВсе у меня хорошо, прекрасно, как никогда.\r\nЯ тут летаю во мгле, а ты все там на Земле\r\nИ че-то как-то не торопишься на встречу ко мне.\r\nНу ничего, ничего, я подожду,\r\nВедь надо все-таки узнать, что ты имела в виду?\r\n\r\n   Что ты имела? Что ты имела в виду?\r\n   Что ты имела? Что ты...', 2, 37, 13),
(287, 24, 'Скованные Одной Цепью', '[Em]                [C]        [H]\r\nкруговая порука мажет как копоть\r\n    [Em]                [C]        [H]\r\nя беру чью-то руку а чувствую локоть\r\n   [Em]                [C]        [H]\r\nя ищу глаза а чувствую взгляд\r\n      [Em]                [C]        [H]\r\nтам где выше голов находится зад\r\n    [Em]                [C]        [H]\r\nза красным восходом - розовый закат\r\n\r\n   [Em]       [C7]\r\nскованные одной цепью\r\n  [Em]       [C7]\r\nсвязанные одной целью\r\n   [Em]       [C7]\r\nскованные одной цепью\r\n   [Em]       [C7]\r\nсвязанные одной...\r\n\r\nздесь суставы вялы а пространства огромны\r\nздесь составы смяли чтобы сделать колонны\r\nодни слова для кухонь другие для улиц\r\nздесь сброшены орлы ради бройлерных куриц\r\nи я держу равнение даже целуясь\r\nна скованных одной цепью\r\nсвязанных одной целью\r\nскованных одной цепью\r\nсвязанных одной целью...\r\n\r\nможно верить и в отсутствие веры\r\nможно делать и отсутствие дела\r\nнищие молятся молятся на\r\nто что их нищета гарантирована\r\nздесь можно играть про себя на трубе\r\nно как не играй все играешь отбой\r\nи если есть те кто приходит к тебе\r\nнайдутся и те кто придет за тобой\r\n\r\nтакже скованные одной цепью\r\nсвязанные одной целью\r\nскованные одной цепью\r\nсвязанные одной...\r\n\r\nздесь женщины ищут но находят лишь старость\r\nздесь мерилом работы считают усталость\r\nздесь нет негодяев в кабинетах из кожи\r\nздесь первые на последних похожи\r\nи не меньше последних устали быть может\r\nбыть скованными одной цепью\r\nсвязанными одной целью\r\nскованными одной цепью\r\nсвязанными одной целью...\r\n\r\nскованные одной цепью\r\nсвязанные одной цепью\r\nскованные одной цепью\r\nсвязанные одной цепью\r\nскованные...', 3, 31, 14),
(288, 24, 'На Паре Крыл', '[B]           [Gm]\r\nНа паре крыл (И мне бы! И мне бы!)\r\n[D#]            [D#m]\r\nКорабль отплыл в открытое небо.\r\n\r\nА тень видна на рыжей равнине,\r\nИ крик винта - как скрип журавлиный,\r\n\r\n   [G7]               [C]\r\n   А в небе есть и гавань, и флаги,\r\n   [F]            [F7]     [B]           [B+7]\r\n   И штиль, и плеск, и архипелаги.\r\n   [Gm]              [A]\r\n   Счастливый путь, спокойного неба!\r\n   [D#]          [D#m]            [Gm]    [F] [B]\r\n   Когда-нибудь и мне бы, и мне бы!..', 3, 29, 15),
(289, 25, 'Праздник начинается сейчас (Live)', '[D]\r\nСлухи, словно пули\r\n [F#m]\r\nНовости гнетут\r\n[G]         [A7]            [D]  [D7]\r\nМоре широко раскрытых глаз\r\n[Em]           [A7]\r\nВас опять надули\r\n [D]             [G]\r\nТе, что вас ведут\r\n  [D]           [A7]        [Hm]\r\nПраздник начинается сейчас\r\n  [G]           [A7]        [D]\r\nПраздник начинается сейчас\r\n\r\nМожно окопаться\r\nИ не верить в свет\r\nЯщик вас пугает каждый час\r\nА я устал бояться\r\nСтраха больше нет\r\nПраздник начинается сейчас\r\nПраздник начинается сейчас\r\n\r\nИ твоя дорога\r\nИ твой родимый дом\r\nИ свет, который никогда не гас\r\nИ частичка бога\r\nВсе в тебе самом\r\nПраздник начинается сейчас\r\nПраздник начинается сейчас', 2, 15, 1),
(290, 25, 'День рождения (Live)', '[G]\r\nСегодня тёплый день,\r\n[C]                  [G]                 [G7]\r\nИ в этот день я хочу поздравить Вас:\r\n[C]                      [G]\r\nУ Вас сегодня день рожденья -\r\n[D]             [G] \r\nТак в добрый час! \r\n\r\n    [G]\r\nИ стол накрыт давно,\r\n[C]                 [G] \r\nСегодня к Вам придут друзья,\r\n    [C]             [G] \r\nПридут друзья друзей,\r\n   [C]            [G] \r\nКоторым всё равно -\r\n            [D]              [G] \r\nК Вам можно или к Вам нельзя.\r\n\r\n[D]                       [G]\r\nИ будет много выпито вина\r\n     [G7]            [C] \r\nЗа праздничным столом, \r\nИ мальчик у окна напьется пьян:\r\n           [G]         [C]          [G]\r\nВ том не его вина, и он не хулиган,\r\n             [D]         [G]   [C]\r\nОн просто с Вами незнаком. \r\n\r\n    [G]\r\nИ кто-то вдруг решит,\r\n[C]                     [G] \r\nЧто девочка напротив так мила\r\n         [D]    [H7]    [Em] \r\nИ он давно хотел такой.\r\n           [C]          [G] \r\nИ, чтоб беседу поддержать,\r\n         [C]          [G] \r\nОна не станет возражать,\r\n         [C] \r\nНо скоро ей домой бежать,\r\n  [D]               [G] [G7] [C] \r\nИ он махнет рукой. \r\n\r\n   [G]\r\nИ будет много слов\r\n[C]               [G] \r\nО дисках и джинсах,\r\n       [C]          [G]  [H7] [Em]\r\nИ о погоде в небесах,\r\n        [A]      [D]             [G]\r\nА на часах уж за полночь давно. \r\n       [C]          [G]\r\nИ опустел Ваш дом,\r\n        [Em] [A]                  [Em]\r\nИ за окном уже мерещится рассвет.\r\n[D]         [G] \r\nДрузей уж нет -\r\n     [C]          [G] \r\nДрузья ушли давно,\r\n         [C]          [G] \r\nЛишь одиночество одно\r\n        [D]          [C] \r\nЗабыто Вами на столе,\r\n           [D]         [G] \r\nКак будто пачка сигарет. \r\n\r\n           [C]\r\nСпешу поздравить Вас,\r\n           [G] \r\nСпешу поздравить Вас -\r\n          [C]                          [G] [C]\r\nСегодня стали Вы на целый год старей...', 4, 52, 2),
(291, 25, 'Корабли (Live)', '[C]\r\nВслед за снегом\r\n       [C7]              [Am] \r\nТы придёшь на край земли\r\n        [C] \r\nВидишь небо\r\n      [C7]        [Am] \r\nА на небе корабли\r\n[Dm]              [Em]\r\nТают в воздухе голубом,\r\n[Dm]           [G]              [C]\r\nНа одном из них теперь мой дом \r\n\r\nРасставанье\r\nПусть уйдут тоска и грусть,\r\nДо свиданья\r\nЭто значит я вернусь\r\nИз далёкого далека \r\nЕсли ветер разгонит облака \r\n\r\n   [D#]            [B7]           [D#]\r\n   Я не знаю, кому задать вопросы\r\n                   [B7]          [D#] \r\n   Я не знаю, кто дарит мне ответы\r\n       [G]          [C]  [E7]             [Am] \r\n   И кто ведёт меня через свет и тьму\r\n      [D7]    [F]   [C] \r\n   Туда, куда иду.\r\n\r\nОставайся \r\nБеззаботной и святой \r\nУлыбайся \r\nВидишь я уже с тобой. \r\nТы увидишь парус мой \r\nТам, где небо сходится с землёй. \r\n\r\n    [E7]             [Am]\r\n   Через свет и тьму\r\n      [D7]    [F]   [C] \r\n   Туда, куда иду.\r\n\r\n [D]\r\nЧерный птичка поет в ночи,\r\n                 [A]               [Hm]\r\nОн сломал свой крыл, не может летать\r\n[A]      [G]    [Gm]\r\nИхний жизнь\r\n  [D]                [A]    [D]\r\nСтал совсем животные дела...\r\n\r\nЧерный птичка опять поёт\r\nОн чинил свой крыл и может летать\r\nИхний жизнь\r\nС тех момент перестал быть животные дела...\r\n\r\n [G]  [Gm]   [D]\r\nЧерный птичк...', 3, 59, 3),
(292, 25, 'Костёр (Live)', '[Em] [C] [D] [Em]\r\n\r\n  [Em]\r\nВсё отболит, и мудрый говорит:\r\n  [G]                [D]\r\n"Каждый костёр когда-то догорит,\r\n [C]        [Hm]                [Em]\r\nВетер золу  развеет без следа."\r\n [Em]\r\nНо до тех пор, пока огонь горит,\r\n [G]              [D]\r\nКаждый его по-своему хранит,\r\n[C]        [Hm]            [Em]\r\nЕсли беда  и если холода.\r\n\r\n[C] [D] [Em]\r\n\r\nРаз ночь длинна, жгут едва-едва\r\nИ берегут силы и дрова,\r\nЗря не шумят и не портят лес.\r\nНо иногда найдётся вдруг чудак,\r\nЭтот чудак всё сделает не так,\r\nИ его костёр взовьётся до небес.\r\n\r\nПрипев\r\n[C]         [D]        [Em]\r\n Ещё не всё дорешено,\r\n[C]         [D]         [Em]\r\n Ещё не всё разрешено,\r\n[C]         [G]    [Am]\r\n Ещё не все погасли краски дня,\r\n   [C]               [Hm]\r\n Ещё не жаль огня,\r\n                 [Em]\r\n И бог хранит меня.\r\n\r\n\r\nТот был умней, кто свой огонь сберёг,\r\nОн обогреть других уже не мог,\r\nНо без потерь дожил до тёплых дней.\r\nА ты был не прав, ты всё спалил за час,\r\nИ через час большой огонь угас,\r\nНо в этот час стало всем теплей.', 4, 8, 4),
(293, 25, 'Пой (Live)', '[Em9]\r\nОн приходит в место, где ему должно петься, \r\nМесто занято, он стоит по соседству,\r\n          [C7]\r\nВ три ручья из глаз тишина,\r\n        [Em] \r\nВремя сладко шепчет новые сказки, \r\nИ, прикрыв ушами свиные глазки,\r\n          [C7]\r\nСпит большая, как кит, страна,\r\n    [Am] \r\nУлетела птичка, уснула рыбка, \r\nСохранилась привычка считать улыбкой\r\n        [F# ]\r\nЭтот странный оскал на лице,\r\n    [Am] \r\nИ уже под уклон понеслась дорога, \r\nСколько там осталось спроси у Бога,\r\n       [Em] \r\nБог живёт на другом конце. \r\n\r\n             [G]\r\n   И только маленький мальчик, не затоптанный строем,\r\n                        [Am]\r\n   Не знающий слова "страх"\r\n          [G] \r\n   Очень хочет быть новым последним героем\r\n                          [ Am] \r\n   С красивой гитарой в руках. \r\n   Запрокинута вверх голова,\r\n   [D]\r\n   Он не дышит, он слышит слова,\r\n   [D7]\r\n   Он не дышит, он слышит слова:\r\n\r\n               [G]                    [G/h]    [Em]\r\n      "Только помни, ты будешь один, и на самом краю,\r\n              [Am] \r\n      Только помни, что правда всегда победит,\r\n           [C] \r\n      Даже если погибнет в бою,\r\n           [G]             [G/h] [Em] \r\n      Береги каждый день, пока ты живой,\r\n           [Am]                    [D7]\r\n      И пока твой ангел с тобой,\r\n       [Em] \r\n      Пой." \r\n\r\nЭти бедные бледные божьи созданья \r\nИз Эдемского сада до конца мирозданья \r\nВыгнанные взашей \r\nРазмножались и жили в любви и печали \r\nИ кругами кружили, и с годами мельчали \r\nИ смельчали до серых мышей. \r\nОни кричат о свободе, но любят палку, \r\nТак что после кнута и пряник не жалко \r\nСабантуй от поста до поста. \r\nВ головах у них пусто, на душе у них чисто, \r\nИм стругают новых фанерных артистов \r\nИз отделочного листа. \r\n\r\n   И только маленький мальчик,\r\n   Не затоптанный строем. \r\n   Не знающий слова "страх"\r\n   Очень хочет быть новым последним героем \r\n   С красивой гитарой в руках.\r\n   Высоко запрокинута вверх голова, \r\n   Он не дышит, он слышит слова, \r\n   Он не дышит, он слышит слова: \r\n\r\n      "Только помни, ты будешь один, и на самом краю, \r\n      Только помни, что правда всегда победит, \r\n      Даже если погибнет в бою, \r\n      Береги каждый день, пока ты живой, \r\n      И пока твой ангел с тобой, \r\n      Пой."', 6, 28, 5),
(294, 25, 'Кошка, которая гуляет сама по себе (Live)', '[D]\r\nЕсли сто бегунов как один бегут,\r\n     [G]                   [D]\r\nЭто можно назвать так и сяк.\r\nУ лошадей это будет табун,\r\n   [E7]              [A]\r\nУ рыб это будет косяк.\r\n         [G]\r\nЛишь в стаде баран доверяет судьбе,\r\n     [D]                  [G]\r\nЗа что он и прозван скотом,\r\n             [Em]             [Hm]\r\nЛишь только кошка гуляет сама по себе,\r\n   [Em]                [D]\r\nИ лишь по весне с котом.\r\n\r\nДаже волки, далекие братья собак,\r\nВыбирают себе вожака.\r\nДа и стая собак не может никак\r\nБез него обойтись пока.\r\nУ львов и у тигров есть главный в семье,\r\nНа нём и охота и дом,\r\nЛишь только кошка гуляет сама по себе,\r\nИ лишь по весне с котом.\r\n\r\nПерелётные птицы осенней порой\r\nНе летают на юг по одной.\r\nИ олени, гуляя оленьей тропой,\r\nТоже ходят по ней толпой.\r\nДа и люди, что век коротают в борьбе,\r\nПонимают, что легче гуртом,\r\nЛишь только кошка гуляет сама по себе,\r\nИ лишь по весне с котом.', 2, 19, 6),
(295, 25, 'Скворец (Live)', '[Dm]\r\nНикто не шутит с природой \r\n   [G]                       [C]  [Am]\r\nИ дело - дрянь и лету конец. \r\n                          [Dm]\r\nИ только, споря с погодой, \r\n [E]                          [Am]\r\nПоет какой-то глупый скворец \r\n\r\nДрузья давно отсвистели \r\nИ, улетая, звали с собой. \r\nА завтра грянут метели \r\nКому ты будешь нужен зимой? \r\n                                           [Dm]\r\n          А он, чудак, не мог понять куда улетать,\r\n            [G]                    [C]  [Am]\r\n          Зачем его куда-то зовут,\r\n               [Dm]\r\n          Если здесь его дом,\r\n               [Em]                   [Am]\r\n          Его песни, его родина тут?\r\n                 [Dm]                    [Am]\r\n          И кому весной его трель нужна,\r\n                [Dm]                     [Am]\r\n          Ежели весна и без того весна?\r\n                        [Dm]                   [Am]\r\n          И кто сказал, что песне зимой конец?\r\n                        [G]\r\n          Совсем не конец!\r\n                 [Dm]\r\n          Что за глупый скворец,\r\n                 [G]\r\n          Что за глупый скворец,\r\n                 [C]\r\n          Что за глупый скворец!\r\n\r\nА люди прятались в шубы\r\nИ поднимали воротники.\r\nКакой он, все-таки, глупый -\r\nКому теперь нужны смельчаки!\r\nУкрыты снегом аллеи,\r\nИ он не изменил ничего...\r\nБыть может, стало лишь чуть-чуть теплее\r\nОт одинокой песни его...', 4, 13, 7),
(296, 25, 'Он был старше её (Live)', '[Em]\r\nОн был старше ее. Она была хороша,\r\nВ ее маленьком теле гостила душа,\r\n        [Am]                       [H7]           [Em]\r\nОни ходили вдвоем, они не ссорились по мелочам.\r\nИ все вокруг говорили: чем не муж и жена?\r\nИ лишь одна ерунда его сводила с ума -\r\n         [Am]           [H7]               [Em]\r\nОн любил ее, она любила летать по ночам.\r\n          [E7]\r\n        Он страдал, если за окном темно,\r\n                                    [Am]\r\n        Он не спал, на ночь запирал окно,\r\n                                       [H7]\r\n        Он рыдал, пил на кухне горький чай,\r\n                                     [Em]\r\n        В час, когда она летала по ночам.\r\n        [E7]\r\n        А потом, по утру, она клялась,\r\n                                    [Am]\r\n        Что вчера это был последний раз,\r\n                                       [H7]\r\n        Он прощал, но ночью за окном темно,\r\n                          [Em]\r\n        И она улетала все равно. \r\n\r\nА он дарил ей розы, покупал ей духи,\r\nПосвящал ей песни, читал ей стихи,\r\nОн хватался за нитку, как последний дурак.\r\nОн боялся, что когда-нибудь под полной луной,\r\nОна забудет дорогу домой,\r\nИ однажды ночью вышло именно так. \r\n\r\nОн страдал, если за окном темно, \r\nОн не спал, на ночь запирал окно, \r\nОн рыдал, пил на кухне горький чай, \r\nВ час, когда она летала по ночам. \r\nА потом, поутру она клялась, \r\nЧто вчера это был последний раз, \r\nОн прощал, но ночью за окном темно, \r\nИ она улетала все равно. \r\n\r\nИ три дня и три ночи он не спал и не ел,\r\nОн сидел у окна и на небо глядел,\r\nОн твердил ее имя, выходил встречать на карниз.\r\nА когда покатилась на убыль луна,\r\nОн шагнул из окна, как шагала она,\r\nОн взлетел, как взлетала она, но не вверх, а вниз. \r\n\r\nОн страдал, если за окном темно,\r\nОн не спал, на ночь запирал окно,\r\nОн рыдал, пил на кухне горький чай,\r\nВ час, когда она летала по ночам.\r\nА потом, поутру она клялась,\r\nЧто вчера это был последний раз,\r\nОн прощал, но ночью за окном темно,\r\nИ она улетала все равно.', 4, 27, 8),
(297, 25, 'Улетай (Live)', '[D]\r\nУлетай\r\n      [D-]            [D] \r\nЭтот город уже обречён,\r\n       [D-5add11]            [Hm7]\r\nВсе гуляют и никто ни при чём,\r\n            [Em]            [A]\r\nИ только "что почём" на умах,\r\n\r\n       [D]\r\n   Улетай\r\n         [D-]                      [D] \r\n   За весельем часто прячется страх,\r\n         [D-5add11]               [Hm7]\r\n   И неправда заблудилась в словах,\r\n               [G]\r\n   И слишком много папах\r\n        [B]                    [D]\r\n   И мигалок на больших головах. \r\n\r\n              [Hm]                        [F#m7]\r\n      На рассветном небе ждёт твоя звезда\r\n            [Hm]                           [A]\r\n      Если ты там не был, значит, нам туда,\r\n            [G]\r\n      Этот порт не для нас\r\n      [D]              [F#7]\r\n      Есть только "здесь и сейчас"\r\n         [E7]    [G]                 [D]    [A]\r\n      И ты, который рождён побеждать. \r\n\r\nУлетай \r\nОт промозглой московской зимы, \r\nОт ползущей с востока войны \r\nОт чужой вины на плечах, \r\n\r\n   Улетай\r\n   "От винта!" и винты запоют, \r\n   Выбрать якорь дело пары минут, \r\n   Кто решился тот прав, \r\n   Даже если неправ в мелочах.\r\n\r\n      На рассветном небе ждёт твоя звезда\r\n      Если ты там не был, значит, нам туда,\r\n      Этот порт не для нас\r\n      Есть только "здесь и сейчас"\r\n      И ты, который рождён побеждать.', 3, 45, 9),
(298, 25, 'Небо помнит (Live)', '[E]\r\nТе, что тебя надули станут, тебе верны. \r\nВыпущенная пуля вернётся с другой стороны.\r\n  [A]\r\nСъехавший с места встанет на место,\r\n [F]\r\nБулка опять превратится в тесто,\r\n   [H7]                  [E]\r\nА небо напомнит, что все перед ним равны. \r\n\r\nДождь упадёт на небо, судья не найдёт вины. \r\nБылью окажется небыль и мухами станут слоны. \r\nКаплей росы окажется иней, \r\nОранжевый цвет превратится в синий, \r\nА небо напомнит, что все перед ним равны. \r\n\r\n         [H7]                                 [C#m]\r\n   И не думай, что мы идём во тьму, где ни сердцу и ни уму\r\n     [A]                               [E]\r\n   Скоро настанет расцвет умов и сердец.\r\n      [F#m]               [H7]                  [E]                    [A]\r\n   И раб, победивший своих господ, сам себе построит тюрьму\r\n                        [H7]                  [E]\r\n   И Красная Шапочка с волком пойдут под венец. \r\n\r\nЧернильница-непроливайка научится проливать \r\nАргентина-Ямайка сыграют со счётом ноль-пять \r\nЦарским мундиром станет рубаха, \r\nВ прах уйдем и выйдем из праха \r\nИ небо нам всем о чём-то напомнит опять. \r\n\r\n   И не думай, что мы идём во тьму, где ни сердцу и ни уму\r\n   Скоро настанет расцвет умов и сердец.\r\n   И раб, победивший своих господ, сам себе построит тюрьму\r\n   И Красная Шапочка с волком пойдут под венец.', 3, 14, 10),
(299, 25, 'Эти реки никуда не текут (Live)', '[Am]                                   [Am7]\r\nЭти реки никуда не текут, они забыли про море...\r\n     [Dm7]                                  [Am]  [Am7] \r\nЭти реки никуда не текут, они забыли про море.\r\n           [E7]\r\nВ них не вьется трава, их не тревожит весло,\r\n[D7] \r\nВода застыла в них, словно стекло,\r\n           [Am7]                [E7]               [Am7] \r\nМне очень жаль, мама, но эти реки никуда не текут. \r\n\r\nЭти птицы никуда не летят, они забыли про небо... \r\nЭти птицы никуда не летят, они забыли про небо. \r\nЕсли жить по рассчету и наверняка, \r\nТо крылья усыхают и врастают в бока, \r\nМне очень жаль, мама, но эти птицы никуда не летят. \r\n\r\n     [Am]                [Dm7]                  [Am]\r\nЭти люди никуда не спешат, они забыли про время...\r\n     [Dm]                                     [Am] \r\nЭти люди никуда не спешат, они забыли про время.\r\n[E7] \r\nКогда звонит последний звонок,\r\n [D7] \r\nПоздно считать, что ты смог, что не смог,\r\n           [Am7]                [E7]                [Am7] \r\nМне очень жаль, мама, но эти люди никуда не спешат. \r\n\r\nЭти реки никуда не текут, они забыли про море. \r\nЭти птицы никуда не летят, они забыли про небо. \r\nЭти люди никуда не спешат, они забыли про время. \r\nМне очень жаль, мама, но эти реки никуда не текут.', 4, 25, 11),
(300, 25, 'Буги-вуги на потолке (Live)', '[A7]\r\nНе знаю, как я словчил,\r\nНо школу я проскочил,\r\nЯ в ней не мог усидеть и дня.\r\n        [E7]\r\nЯ никогда никого ничему не учил, -\r\n    [D7]           [A7]\r\nНе надо учить меня.\r\n\r\nЯ раньше срока мужал,\r\nСвои вопросы решал\r\nСам по себе в отдельно взятой стране.\r\nЯ никогда никому и ни в чём не мешал,-\r\nНе надо мешать мне.\r\n\r\n       [D7]\r\n   Когда я ходил по крутым горам,\r\n             [A7]\r\n   Я был не выше самого себя.\r\n       [D7]\r\n   Когда я спускался в долины к вам,\r\n             [A7]\r\n   Я был не ниже самого себя.\r\n             [D7]\r\n   Я знаю, кто я таков, я слышу крик облаков,\r\n           [F]\r\n   Я вижу танцы рыб в далёкой реке.\r\n             [H]\r\n   Скажи, зачем ты вызываешь то врачей, то ментов\r\n   Когда я буги-вуги на потолке?\r\n\r\nЯ не люблю, когда приказ\r\nНапоминает совет,\r\nЯ не люблю когда шаги за спиной,\r\nИ я всегда иду туда,\r\nГде надпись: "Выхода нет", -\r\nНе надо ходить за мной.\r\n\r\n   Когда я бродил по крутым горам,\r\n   Я был не выше самого себя.\r\n   Когда я спускался в долины к вам,\r\n   Я был не ниже самого себя.\r\n   Я знаю, кто я таков,\r\n   Я слышу крик облаков,\r\n   Я вижу танцы в далёкой реке.\r\n   Скажи, зачем ты вызываешь\r\n   То врачей, то ментов\r\n   Когда я буги-вуги на потолке?', 3, 28, 12),
(301, 25, 'Брошенный Богом мир (Live)', 'Dm\r\nЧерви в золоте, тесно в комнате, тесно в городе,\r\n                  [Gm]      [Dm]\r\nМир - большая тюрьма, кутерьма.\r\nЛето в холоде, танцы в холоде. "Кто на проводе?"\r\n              [Gm]      [Dm]\r\nНа проводе тьма, тишина.\r\n\r\n    [F]                  [A7]\r\n   И не склеить осколки,\r\n    [F]                  [A7]\r\n   И не вытравить мрак,\r\n   [Gm]\r\n   Видишь, как плодятся волки\r\n    [A7]\r\n   Из бездомных собак?\r\n   [F]                  [A7]\r\n   Вставь башку в телевизор,\r\n   [F]                  [A7]\r\n   Протри кушетку до дыр,\r\n   [Gm]\r\n   Ты уже посмертно вписан\r\n            [A7]\r\n   В этот брошенный, брошенный,\r\n                    [Dm]\r\n   Брошенный Богом мир.\r\n\r\nБолтом-гаечкой, волком-заячкой. Кем ты был, кем не был -\r\nПойди разберись, обернись.\r\nСтал овечкою, встал со свечкою. Нынче Бог тебе \r\nКак фиговый лист - типа чист.\r\n\r\n   Сомневаться не надо,\r\n   Время вспять не течёт,\r\n   Ровно в полночь день со склада\r\n   Уйдёт со счёта на счёт.\r\n   Но сейчас не об этом,\r\n   Я так хочу, чтобы жил\r\n   Тот, кто бросит лучик света\r\n   В этот брошенный, брошенный,\r\n   Брошенный Богом мир.', 3, 35, 13),
(302, 26, 'Поворот', '[A]                      [F#]             [F#7]\r\nМы себе давали слово - не сходить с пути прямого\r\n [Hm]              [A]      [E]\r\nНо, так уж суждено! м-м-м...\r\n[A]                        [F#]         [F#7]\r\nИ уж если откровенно - всех пугают перемены,\r\n [Hm]                [A]      [E]\r\nНо, тут уж все равно, м-м-м...\r\n\r\n    [Hm]             [E]\r\n   Вот, новый поворот\r\n              [C#m]               [F#7]\r\n   И мотор ревет, что он нам несет\r\n                   [Hm]             [Dm]\r\n   Пропасть или взлет, омут или брод\r\n               [A]                  [F#7]\r\n   Ты не разберешь, пока не повернешь...\r\n    [Hm]             [E]\r\n   Вот, новый поворот\r\n              [C#m]               [F#7]\r\n   И мотор ревет, что он нам несет\r\n                   [Hm]             [Dm]\r\n   Пропасть или взлет, омут или брод\r\n               [A]                  [E]\r\n   Ты не разберешь, пока не повернешь...\r\n\r\nИ пугаться нет причины - если вы еще мужчины,\r\nВы кое в чем сильны...\r\nВыезжайте за ворота, и не бойтесь поворота,\r\nПусть добрым будет путь.\r\n\r\n   Вот, новый поворот\r\n   И мотор ревет, что он нам несет\r\n   Пропасть или взлет, омут или брод\r\n   Ты не разберешь, пока не повернешь...\r\n   Вот, новый поворот\r\n   И мотор ревет, что он нам несет\r\n   Пропасть или взлет, омут или брод\r\n   Ты не разберешь, пока не повернешь...', 3, 44, 1);
INSERT INTO `songs` (`id`, `album_id`, `title`, `lyrics`, `durationMinutes`, `durationSeconds`, `position`) VALUES
(303, 26, 'Люди в лодках', '[A]           [F#m]\r\nДолго я шёл берегом реки,\r\n   [D]        [E]          [A]\r\nЯ шел, судьбу свою кляня,\r\n                  [F#m]\r\nИ все надежды были далеки,\r\n    [D]             [E]         [A] [A7]\r\nИ все же утром к морю вышел я.\r\n\r\n     [D]    [E]            [D]       [E]\r\n   И я заметил, что мне легко,\r\n      [D]      [E]              [A]  [A7]\r\n   И мир совсем не так уж плох,\r\n      [D]    [E]            [D]       [E]\r\n   И наша лодка может плыть легко\r\n         [D]  [C#m] [Hm] [F#m]  [Dm7] [E7]       [A]\r\n   Мимо дивных бе-ре - гов   и островов.\r\n\r\nЛюди в лодках, вас несёт река,\r\nРазносит, сносит день за днем.\r\nИ ваших лодок много, и река велика,\r\nИ все вы позабыли где ваш дом.\r\n\r\n   И все же, я заметил, что мне легко,\r\n   И мир совсем не так уж плох,\r\n   И наша лодка может плыть легко\r\n   Мимо дивных берегов и островов.', 3, 35, 2),
(304, 26, 'Ты или я', '[Hm]         [D]       [Ddim]      [F#7]\r\nВсе очень просто. Сказки - обман.\r\n[Hm]          [D]      [Ddim]       [F#7]\r\nСолнечный остров скрылся в туман.\r\n[Em7]       [D]      [Em7]       [D]\r\nЗамков воздушных не носит земля.\r\n[Em]      [Gm]      [Hm]   [F#]\r\nКто-то ошибся - ты или я\r\n\r\nВсе очень просто - нет гор золотых. \r\nПадают звезды в руки других. \r\nНет райской птицы среди воронья.\r\n                        [Hm] [F#] [G]\r\nКто-то ошибся - ты или я \r\n\r\n[Cm]\r\nЛишь только весною тают снега.\r\nИ даже у моря есть берега.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.\r\n\r\nВсе очень просто -\r\nВ сказке обман.\r\nСолнечный остров\r\nСкрылся в туман.\r\nВсех нас согреет\r\nВера одна.\r\nКто-то успеет -\r\nТы или я.', 4, 24, 3),
(305, 26, 'Наш дом', '[G]\r\nГоды летят стрелою,\r\n  [Hm]\r\nСкоро и мы с тобою\r\n [G7]       [E7]       [Am] [D7]\r\nРазом из города уйдем.\r\n  [G]\r\nГде-то в лесу дремучем\r\n[Hm]\r\nИли на горной круче,\r\n [G7]     [E7]          [Am] [D7]\r\nСами себе построим дом.\r\n\r\n    [C]      [D]     [G]       [E7]\r\n   Там вокруг такая тишина,\r\n   [Am]     [D]              [G]  [E7]\r\n   Что вовек не снилась нам,\r\n   [Am]   [D]         [G]              [E7]\r\n   И за этой тишиной, как за стеной,\r\n   [C]       [D]             [G]\r\n   Хватит места нам с тобой.\r\n\r\nДвери покрепче справим,\r\nРядом на цепь посадим\r\nВосемь больших голодных псов.\r\nЧтобы они не спали,\r\nК дому не подпускали\r\nГоре, врагов и дураков.\r\n\r\n   Там вокруг такая тишина,\r\n   Что вовек не снилась нам,\r\n   И за этой тишиной, как за стеной,\r\n   Хватит места нам с тобой.\r\n\r\nРядом с парадной дверью\r\nНадо вкопать скамейку,\r\nА перед ней тенистый пруд.\r\nЧтобы, присев однажды,\r\nСмог бы подумать каждый,\r\nНужен ли он кому-то тут?\r\n\r\n   Там вокруг такая тишина,\r\n   Что вовек не снилась нам,\r\n   И за этой тишиной, как за стеной,\r\n   Хватит места нам с тобой.', 3, 35, 4),
(306, 26, 'Время', '[Hm7]\r\nНам уготовано, мальчик мой,     \r\n [F#m]                            \r\nЛегкое это бремя -              \r\n  [Bm7]                           \r\nДвигаться вдоль по одной прямой,\r\n[Gm]                              \r\nИмя которой Время.              \r\n [F#-9]                           \r\nПамяти с ней не совладать -\r\n[F#7] \r\nЗначит, нам повезло,\r\n[Em] \r\nВремя учит нас забывать\r\n  [F#m]              [Hm7] [F#m] [Bm7] [Gm F#]\r\nВсе - и добро, и зло. \r\n\r\n       [Hm7]\r\n   Встречи, прощанья - какое там,\r\n    [F#m]\r\n   Даже не вспомнить лица,\r\n   [Bm7]\r\n   И только вещи, верные нам,\r\n    [Gm] \r\n   Помнят все до конца...\r\n   [F#-9]                [F#7]\r\n   Помнят все до конца...\r\n\r\n       [D]\r\n      Помнит лодка причал, а весло\r\n       [C] \r\n      Помнит воду реки,\r\n       [Em] \r\n      Помнит бумага перо, а перо\r\n       [A] \r\n      Помнит тепло руки.\r\n        [F#m] \r\n      Стены и двери помнят людей,\r\n       [D] \r\n      Каждого в свой срок.\r\n       [G] \r\n      Помнит дорога ушедших по ней,\r\n       [F#] \r\n      Помнит выстрел курок. \r\n\r\nТолько проносится день за днём -\r\nЗначит, не пробил час, \r\nВещи пока молчат о своём \r\nИ не тревожат нас. \r\nМогут проснуться они летним днём \r\nИли среди зимы, \r\nЧтобы напомнить нам обо всём, \r\nЧто забыли мы...', 4, 14, 5),
(307, 26, 'Морской закон', '[C#m7]            [D#m]\r\nЕсть в море закон, он стар как земля,\r\n    [C#m7]            [D#m]\r\nОткрыт неизвестно где:\r\n[F#]            [A]\r\nЕсли крысы бегут с корабля -\r\n [G#m]\r\nБыть кораблю в беде. \r\n\r\nКрыса всегда крикнет: «Беда!»\r\nА значит есть шанс на успех.\r\nЗа это били крыс иногда, \r\nНо при этом не так чтобы всех. \r\n\r\nНо боцман решил, поскольку был строг, \r\nСерым устроить бой. \r\nИ капитану он дал зарок\r\nВсех перебить до одной.\r\n\r\nИ были матросы против сперва, \r\nНо тот свою линию гнул.\r\nИ кстати из крыс не ушла ни одна, \r\nПоскольку корабль не тонул. \r\n\r\n   [E]                 [H]\r\n   И поднят парус и поднят флаг,\r\n      [C#m]            [G#m] \r\n   Корабль сверкает весь.\r\n   [H]                   [A] \r\n   И под восторженный шепот зевак,\r\n     C#m\r\n   Уходит в далекий рейс. \r\n\r\n   И вахтенный крепко держал штурвал,\r\n   И волны к корме неслись,\r\n   И каждый матрос свое дело знал,\r\n   И не было в трюме крыс. \r\n\r\nНо сутки прочь и стоять невмочь, \r\nА ночью так тянет лечь...\r\nНикто не слышал, как в эту ночь\r\nВ трюме открылась течь. \r\n\r\nИз тех бы крыс хотя бы одну -\r\nИ люди б тогда спаслись.\r\nНо славный корабль пошел ко дну, \r\nОставшись без верных крыс. \r\n\r\n   Набей-ка трубку, налей вина, \r\n   И выпьем, браток, с тобой, \r\n   За тех кто первым кричит: «Беда!»\r\n   Спасая корабль свой.', 3, 53, 6),
(308, 26, 'Марионетки', '[G] \r\nЛица стёрты, краски тусклы,\r\n[Em] \r\nТо ли люди, то ли куклы,\r\n[C] \r\nВзглядa похож на взгляд,\r\n          [G] \r\nА день на день.\r\n\r\n[C]         [D] \r\nЯ устал и, отдыхая,\r\n[G]              [E7] \r\nВ балаган вас приглашаю\r\n[Am]              [D]         [G] \r\nГде куклы так похожи на людей\r\n\r\nАрлекины и пираты,\r\nЦиркачи и акробаты,\r\nИ злодей, чей вид внушает страх,\r\nВолк и заяц, тигры в клетке -\r\nВсе они марионетки\r\nВ ловких и натруженных руках.\r\n\r\nКукол дергают за нитки, \r\nНа лице у них улыбки, \r\nИ играет клоун на трубе, \r\nИ в процессе представленья \r\nСоздается впечатленье, \r\nЧто куклы пляшут сами по себе. \r\n\r\nАх, до чего порой обидно, \r\nЧто хозяина не видно - \r\nВверх и в темноту уходит нить. \r\nА куклы так ему послушны, \r\nИ мы верим простодушно \r\nВ то, что куклы могут говорить. \r\n\r\nНо вот хозяин гасит свечи -\r\nКончен бал, и кончен вечер,\r\nЗасияет месяц в облаках.\r\nКукол снимут с нитки длинной,\r\nИ, засыпав нафталином,\r\nВ виде тряпок сложат в сундуках.', 4, 14, 7),
(309, 26, 'Она идёт по жизни смеясь', '[Am]             [G]      [Am] [G] \r\nОна идет по жизни, смеясь. \r\n[F]           [C]     [F]             [C]\r\nОна легка, как ветер, нигде на свете \r\n[Gm]              [A7]\r\nОна лицом не ударит в грязь. \r\n[Dm]         [Dm7]     [E]                    [Am]\r\nИспытанный способ решать вопросы - как будто их нет: \r\n                              [Fmaj7] [Em] [F] [Em] [F] [C]\r\nВо всем видит солнечный свет! \r\n\r\n[Am] \r\nОна идет по жизни, смеясь.\r\nВстречаясь и прощаясь,\r\nНе огорчаясь,\r\nЧто прощанья легки, а встречи на раз,\r\nИ новые лица\r\nТоропятся слиться\r\nВ расплывчатый круг\r\nКак будто друзей и подруг.\r\n\r\nОна идет по жизни смеясь.\r\nВ гостях она - как дома,\r\nГде все знакомо,\r\nУдача с ней - жизнь удалась.\r\nИ, без исключенья,\r\nВсе с восхищеньем\r\nСмотрят ей в след и не замечают,\r\nКак плачет ночами\r\n[Am]        [G]       [F]       [C]\r\nТа, что идет по жизни смеясь...', 2, 20, 8),
(310, 26, 'Костёр', '[Em] [C] [D] [Em]\r\n\r\n  [Em]\r\nВсё отболит, и мудрый говорит:\r\n  [G]                [D]\r\n"Каждый костёр когда-то догорит,\r\n [C]        [Hm]                [Em]\r\nВетер золу  развеет без следа."\r\n [Em]\r\nНо до тех пор, пока огонь горит,\r\n [G]              [D]\r\nКаждый его по-своему хранит,\r\n[C]        [Hm]            [Em]\r\nЕсли беда  и если холода.\r\n\r\n[C] [D] [Em]\r\n\r\nРаз ночь длинна, жгут едва-едва\r\nИ берегут силы и дрова,\r\nЗря не шумят и не портят лес.\r\nНо иногда найдётся вдруг чудак,\r\nЭтот чудак всё сделает не так,\r\nИ его костёр взовьётся до небес.\r\n\r\nПрипев\r\n[C]         [D]        [Em]\r\n Ещё не всё дорешено,\r\n[C]         [D]         [Em]\r\n Ещё не всё разрешено,\r\n[C]         [G]    [Am]\r\n Ещё не все погасли краски дня,\r\n   [C]               [Hm]\r\n Ещё не жаль огня,\r\n                 [Em]\r\n И бог хранит меня.\r\n\r\n\r\nТот был умней, кто свой огонь сберёг,\r\nОн обогреть других уже не мог,\r\nНо без потерь дожил до тёплых дней.\r\nА ты был не прав, ты всё спалил за час,\r\nИ через час большой огонь угас,\r\nНо в этот час стало всем теплей.', 3, 29, 9),
(311, 26, 'Песня про солдата', '[C]\r\nЯ с детства выбрал верный путь,\r\n[G]                   [C] \r\nРешил, чем буду заниматься,\r\n[F]                    [C] \r\nИ всё никак я не дождусь,\r\n[G]                       [C]\r\nКогда мне стукнет восемнадцать. \r\n\r\nТогда приду в военкомат \r\nИ доложу при всех, как нужно, \r\nЧто я в душе давно солдат \r\nИ пусть меня берут на службу. \r\n\r\nМне форму новую дадут, \r\nНаучат бить из автомата, точно...\r\nКогда по городу пройду - \r\nУмрут от зависти ребята. \r\n\r\nЯ так решил давным-давно, он так решил давным давно,\r\nИ пусть меняет моду мода. \r\nИ огорчает лишь одно - \r\nЧто мне служить всего два года.', 1, 40, 10),
(312, 26, 'Музыка под снегом', '[Hm]\r\nВ летнем парке зима,\r\n                   [H7] \r\nВ летнем парке концерт.\r\n[G]                 [F#m] \r\nВсе начнется вот-вот,\r\n                    [Em]\r\nЖаль, что зрителей нет,\r\n\r\n   [C]            [Hm]\r\n   И оркестр укрыт снегом -\r\n   [C]                [Hm] \r\n   Словно вата, глухим снегом,\r\n   [C]             [Hm]        [C7] \r\n   И соната слышна едва-едва... \r\n\r\nГолос скрипки звенит, \r\nКак стекло о стекло, \r\nИ трубу не отнять \r\nОт заснеженных губ...\r\n\r\n   А в каждой ноте поет лето, \r\n   И с собою зовет лето, \r\n   И соната слышна едва-едва... \r\n\r\n      [A]                  [D]\r\n      То взлетает, как стая\r\n                  [F#7]\r\n      Оттаявших птиц,\r\n      [A]               [D] \r\n      То ложится под ноги,\r\n                      [F#7] \r\n      Послушно, как снег,\r\n                [Em]\r\n      Ни для кого...\r\n\r\nИ восторг в их глазах\r\nНам вовек не понять, \r\nИм уже не помочь, \r\nИ приходится лгать.\r\n\r\n   И я опять прохожу мимо, \r\n   Прохожу, и гляжу мимо, \r\n   И соната слышна едва-едва...', 4, 28, 11),
(313, 26, 'Разговор в поезде', '[Dm] \r\nВагонные споры - последнее дело,\r\n [F] \r\nКогда больше нечего пить.\r\n     [Gm] \r\nНо поезд идет, бутыль опустела,\r\n    [Am]         [Dm] \r\nИ тянет поговорить. \r\n\r\nИ двое сошлись не на страх, а на совесть -\r\nКолеса прогнали сон.\r\nОдин говорил - наша жизнь - это поезд.\r\nДругой говорил - перрон.\r\n\r\n  [B]\r\nОдин утверждал - на пути нашем чисто, \r\n  [F]\r\nДругой возражал - не до жиру.\r\n [Gm] \r\nОдин говорил, мол, мы - машинисты,\r\n [C] \r\nДругой говорил - пассажиры. \r\n\r\nОдин говорил: нам свобода - награда, \r\nМы поезд куда надо ведем. \r\nВторой говорил: задаваться не надо, \r\nКак сядем в него, так и сойдем. \r\n\r\nА первый кричал: нам открыта дорога\r\nНа много, на много лет.\r\nВторой отвечал, что не так уж и много -\r\nВсе дело в цене на билет.\r\n\r\nА первый кричал: куда хотим, туда едем,\r\nИ можем, если надо, свернуть!\r\nВторой отвечал, что поезд проедет\r\nЛишь там, где проложен путь.\r\n\r\nИ оба сошли где-то под Таганрогом,\r\nСреди бескрайних полей,\r\nИ каждый пошел своей дорогой,\r\nА поезд пошел своей.', 2, 20, 12),
(314, 26, 'За тех, кто в море', '[Am]                    [G]\r\nТы помнишь, как всё начиналось -\r\n  [Em]\r\nВсё было впервые и вновь...\r\n      [F]        [Fm]\r\nКак строили лодки, и лодки звались\r\n  [Em]\r\n"Вера", "Надежда", "Любовь"\r\n   [F]                    [G]\r\nКак дружно рубили канаты\r\n    [Em]                [Am]\r\nИ вдаль уходила земля,\r\n   [F]                    [Dsus]\r\nИ волны нам пели, и каждый пятый,\r\n     [Fm]                [G]\r\nКак правило, был у руля.\r\n\r\n    [C]\r\nЯ пью до дна\r\n               [Am]\r\nЗа тех, кто в море\r\n     [Dm]                 [G]\r\nЗа тех, кого любит волна,\r\n     [Dm]           [G]\r\nЗа тех, кому повезёт!\r\n         [C]\r\nИ если цель одна\r\n                    [Am]\r\nИ в радости, и в горе,\r\n      [F]\r\nТо тот, кто не струсил,\r\n    [Dsus]\r\nИ вёсел не бросил,\r\n      [F]      [Fm]     [C]\r\nТот землю свою найдёт.\r\n\r\nНапрасно нас бурей пугали,\r\nВам скажет любой моряк,\r\nЧто бури бояться вам стоит едва ли,\r\nВ сущности, буря - пустяк.\r\nВ буре лишь крепче руки,\r\nИ парус поможет идти.\r\nГораздо трудней не свихнуться со скуки\r\nИ выдержать полный штиль', 3, 31, 13),
(315, 26, 'Синяя птица', '[Am]                                    [E7]\r\nМы в такие шагали дали, что не очень-то и дойдешь.\r\n                                              [Am]\r\nМы в засаде годами ждали, невзирая на снег и дождь.\r\n                                    [A7]            [Dm]\r\nМы в воде ледяной не плачем, и в огне почти не горим -\r\n     [Dm]          [Am]             [E7]           [Am]\r\nМы охотники за удачей, птицей цвета ультрамарин.\r\nМы охотники за удачей, птицей цвета ультрамарин.\r\n\r\nГоворят, что за эти годы синей птицы пропал и след.\r\nЧто в анналах родной природы этой твари в помине нет.\r\nГоворят, что в дальние страны подалась она навсегда -\r\nТолько я заявляю прямо - это полная ерунда.\r\nТолько мы заявляем прямо - это полная ерунда.\r\n\r\nСиней птицы не стало меньше, просто в свете последних дней\r\nСлишком много мужчин и женщин стали сдуру гонять за ней.\r\nИ пришлось ей стать осторожной, чтоб свободу спасти,\r\nИ вот теперь почти невозможно повстречать ее на пути.\r\n\r\nСтала пуганой птица удачи - и не верит чужим рукам,\r\nДа и как же ей быть иначе - браконьеры - и тут, и там.\r\nПодкрадешься - она обманет, и вот уже навсегда ушла,\r\nИ только небо тебя поманит синим взмахом ее крыла.', 2, 15, 14),
(316, 26, 'Кошка', '[D]\r\nЕсли сто бегунов как один бегут,\r\n     [G]                   [D]\r\nЭто можно назвать так и сяк.\r\nУ лошадей это будет табун,\r\n   [E7]              [A]\r\nУ рыб это будет косяк.\r\n         [G]\r\nЛишь в стаде баран доверяет судьбе,\r\n     [D]                  [G]\r\nЗа что он и прозван скотом,\r\n             [Em]             [Hm]\r\nЛишь только кошка гуляет сама по себе,\r\n   [Em]                [D]\r\nИ лишь по весне с котом.\r\n\r\nДаже волки, далекие братья собак,\r\nВыбирают себе вожака.\r\nДа и стая собак не может никак\r\nБез него обойтись пока.\r\nУ львов и у тигров есть главный в семье,\r\nНа нём и охота и дом,\r\nЛишь только кошка гуляет сама по себе,\r\nИ лишь по весне с котом.\r\n\r\nПерелётные птицы осенней порой\r\nНе летают на юг по одной.\r\nИ олени, гуляя оленьей тропой,\r\nТоже ходят по ней толпой.\r\nДа и люди, что век коротают в борьбе,\r\nПонимают, что легче гуртом,\r\nЛишь только кошка гуляет сама по себе,\r\nИ лишь по весне с котом.', 2, 19, 15),
(317, 26, 'Я сюда ещё вернусь', '[C]           [Am]\r\nКто может знать? \r\n[F]          [G]         [C]\r\nМожет там, а может тут,\r\n[C]            [Am]\r\nНас будут ждать \r\n[F]          [G]              [C]\r\nТак, как нас нигде не ждут.\r\n      [F]   [C]   [G]       [Dm]  [G]          [C]   [C7]\r\nНо зовет нас путь, подгоняя ночи тень,\r\n[F] [E]           [Am]    [F]         [G]            [C]\r\nЯ сюда еще вернусь, мне бы только выбрать день. \r\n\r\nПусть ты не хотел,\r\nНо все промчалось, как в кино -\r\nТам ты не допел,\r\nА тут не выпито вино.\r\nНо зовет нас путь, подгоняя ночи тень,\r\nЯ сюда еще вернусь, мне бы только выбрать день.\r\n\r\nИ как, как будет жаль,\r\nЕсли мне не хватит вдруг\r\nМест, где я побывал,\r\nИ ваших глаз, и ваших рук.\r\nНо зовет нас путь, подгоняя ночи тень,\r\nЯ сюда еще вернусь, мне бы только выбрать день.', 5, 14, 16),
(318, 26, 'Скачки', '[A]                          [E]\r\nСнова старт, он взят и нет пути назад,\r\n       [Hm]                      [A]   [E]\r\nИ по кругу кони мчат, почти летят.\r\n      [A]                     [E]\r\nВот опять я опоздал на поворот:\r\n       [Hm]                       [D]  [E]\r\nПодо мною конь чужой и конь не тот.\r\n\r\nОттого-то в скачках наших буйных дней\r\nСтавят все не на людей, а на коней.\r\nОтчего же в этот час, тяжелый час,\r\nНаши кони не всегда находят нас?\r\n\r\n                   [A]\r\n   А всё могло бы быть совсем не так,\r\n                [F#m]\r\n   Если только сам себе не враг,\r\n         [D]         [E]          [A]  [E]\r\n   И не нужно никому чужих саней.\r\n               [A]\r\n   Это был бы сон, волшебный сон,\r\n                   [F#m]\r\n   Каждый был бы просто чемпион,\r\n         [D]          [E]           [A]  [E]\r\n   Если мог бы выбирать себе коней.\r\n\r\nМне всегда во все года с конём везло,\r\nНо везенье непростое ремесло.\r\nИ когда пройдет удача стороной -\r\nНа моём коне окажется другой.\r\n\r\n   А всё могло бы быть совсем не так,\r\n   Если только сам себе не враг,\r\n   И не нужно никому чужих саней.\r\n   Это был бы сон, волшебный сон,\r\n   Каждый был бы просто чемпион,\r\n   Если мог бы выбирать себе коней.', 3, 14, 17),
(319, 26, 'Флюгер', '[Am] \r\nНа крыше стоишь, \r\nКак над землей паришь. \r\n   [F]            [G] \r\nА выше только крыши \r\n         [Am] \r\nИ лишь флюгер выше крыш. \r\nОн сделан везде, \r\nК своей большой беде, \r\n      [F]         [G]            [Am] \r\nИз стрелки и вертушки на гвозде.\r\n\r\n             [D] \r\n   Он так хотел бы остаться твердым, \r\n           [Am] \r\n   Во избежанье дурной молвы, \r\n         [D]           [C]         [D] \r\n   Но вправо-влево крутится, увы. \r\n        [Am]\r\n   Ну где тут честь сберечь? \r\n   Об этом и речь.\r\n      [F]       [G]        [Am]\r\n   Такая неустойчивая вещь. \r\n\r\nВсю ночь до утра \r\nЛомали ветра, \r\nА днем с утра крутить в другую сторону пора. \r\nТо буря, то шквал - \r\nОн так уставал, \r\nЧто путать стороны света начинал. \r\n\r\n   А он все ждал, что настанет время,\r\n   Назначенный час пробьет, \r\n   И в мире станет все наоборот! \r\n   И вскроется суть.\r\n   Он сам когда-нибудь \r\n   Укажет ветру путь, которым дуть.\r\n\r\nНо время пришло, \r\nИ так замело, \r\nЧто флюгер раскачало и со шпиля сорвало. \r\nВ мечтах о добре \r\nПо зимней поре \r\nОн сгинул в январе в чужом дворе. \r\n\r\n   Но только верьте или не верьте,\r\n   А мне известно наверняка, \r\n   Что в городе с тех пор - ни ветерка!.. \r\n   Нехитрый секрет: \r\n   Ведь дуть смысла нет,\r\n   Когда никто не крутится в ответ.', 4, 28, 18),
(320, 26, 'Барьер', '[Em]\r\nТы был из тех, кто рвался в бой.\r\n                                     [Am]             [Em] [H] [D]\r\nИ без помех ты с ходу брал барьер любой.  Барьер любой.\r\n[Em]\r\nЛюбой запрет тебя манил.\r\n                                [Am]           [Em]\r\nИ ты рубил и бил, пока хватало сил, и был собой.\r\n\r\n   [D]                              [C]\r\n   Ты шел как бык на красный свет, ты был герой, сомнений нет.\r\n   [G]                             [F]\r\n   Никто не мог тебя с пути свернуть.\r\n   [D]                        [C]\r\n   Но если все открыть пути, куда идти и с кем идти?\r\n   [G]                             [F]\r\n   И как бы ты тогда нашел свой путь?\r\n               [Em]\r\n   Нашел свой путь...\r\n\r\nИ был пробит последний лед,\r\nИ путь открыт, осталось лишь идти вперед. Идти вперед...\r\nИ тут ты встал, не сделал шаг -\r\nОткрытый путь страшнее был, чем лютый враг и вечный лед.\r\n\r\n   Ты шел как бык на красный свет, ты был герой, сомнений нет.\r\n   Никто не мог тебя с пути свернуть.\r\n   Но если все открыть пути, куда идти и с кем идти?\r\n   И как бы ты тогда нашел свой путь?\r\n   Нашел свой путь...', 4, 16, 19),
(321, 26, 'Опустошение', '[E7]\r\nAn identical look of identical eyes. \r\nAn identical set of identical cries. \r\nAn identical shuffle of identical feet. \r\nAn identical sound of identical beat. \r\nMind devastation... \r\n\r\nAn identical row of identical days. \r\nAn identical age, an unlike is to blame. \r\nAn identical wave of identical hands. \r\nAn identical foe, an identical friend. \r\nMind devastation... \r\n\r\n[G#]\r\n\r\nAn identical circle of identical dreams. \r\nAn identical sense of identical prays. \r\nAn identical rock, an identical punk, \r\nAn identical boot, an identical tank. \r\nMind devastation...', 3, 50, 20);

-- --------------------------------------------------------

--
-- Table structure for table `songs_translations`
--

CREATE TABLE IF NOT EXISTS `songs_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=643 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `songs_translations`
--

INSERT INTO `songs_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'title', 'Миром правит любовь'),
(2, 1, 'en', 'lyrics', 'вава'),
(3, 2, 'en', 'title', NULL),
(4, 2, 'en', 'lyrics', NULL),
(5, 3, 'en', 'title', NULL),
(6, 3, 'en', 'lyrics', NULL),
(7, 4, 'en', 'title', NULL),
(8, 4, 'en', 'lyrics', NULL),
(9, 5, 'en', 'title', 'Избавление'),
(10, 5, 'en', 'lyrics', 'Избавление'),
(11, 6, 'en', 'title', NULL),
(12, 6, 'en', 'lyrics', NULL),
(13, 7, 'en', 'title', 'День Рождения'),
(14, 7, 'en', 'lyrics', 'День Рождения'),
(15, 8, 'en', 'title', 'Посвящение Хорошему Знакомому'),
(16, 8, 'en', 'lyrics', 'Посвящение Хорошему Знакомому'),
(17, 9, 'en', 'title', 'Ты или Я'),
(18, 9, 'en', 'lyrics', 'Ты или Я'),
(19, 10, 'en', 'title', 'авав'),
(20, 10, 'en', 'lyrics', 'авва'),
(21, 11, 'en', 'title', NULL),
(22, 11, 'en', 'lyrics', NULL),
(23, 12, 'en', 'title', NULL),
(24, 12, 'en', 'lyrics', NULL),
(25, 13, 'en', 'title', NULL),
(26, 13, 'en', 'lyrics', NULL),
(27, 14, 'en', 'title', NULL),
(28, 14, 'en', 'lyrics', NULL),
(29, 15, 'en', 'title', NULL),
(30, 15, 'en', 'lyrics', NULL),
(31, 16, 'en', 'title', NULL),
(32, 16, 'en', 'lyrics', NULL),
(33, 17, 'en', 'title', NULL),
(34, 17, 'en', 'lyrics', NULL),
(35, 18, 'en', 'title', NULL),
(36, 18, 'en', 'lyrics', NULL),
(37, 19, 'en', 'title', NULL),
(38, 19, 'en', 'lyrics', NULL),
(39, 20, 'en', 'title', NULL),
(40, 20, 'en', 'lyrics', NULL),
(41, 21, 'en', 'title', NULL),
(42, 21, 'en', 'lyrics', NULL),
(43, 22, 'en', 'title', NULL),
(44, 22, 'en', 'lyrics', NULL),
(45, 23, 'en', 'title', NULL),
(46, 23, 'en', 'lyrics', NULL),
(47, 24, 'en', 'title', NULL),
(48, 24, 'en', 'lyrics', NULL),
(49, 25, 'en', 'title', NULL),
(50, 25, 'en', 'lyrics', NULL),
(51, 26, 'en', 'title', NULL),
(52, 26, 'en', 'lyrics', NULL),
(53, 27, 'en', 'title', NULL),
(54, 27, 'en', 'lyrics', NULL),
(55, 28, 'en', 'title', NULL),
(56, 28, 'en', 'lyrics', NULL),
(57, 29, 'en', 'title', NULL),
(58, 29, 'en', 'lyrics', NULL),
(59, 30, 'en', 'title', NULL),
(60, 30, 'en', 'lyrics', NULL),
(61, 31, 'en', 'title', NULL),
(62, 31, 'en', 'lyrics', NULL),
(63, 32, 'en', 'title', NULL),
(64, 32, 'en', 'lyrics', NULL),
(65, 33, 'en', 'title', NULL),
(66, 33, 'en', 'lyrics', NULL),
(67, 34, 'en', 'title', NULL),
(68, 34, 'en', 'lyrics', NULL),
(69, 35, 'en', 'title', NULL),
(70, 35, 'en', 'lyrics', NULL),
(71, 36, 'en', 'title', NULL),
(72, 36, 'en', 'lyrics', NULL),
(73, 37, 'en', 'title', NULL),
(74, 37, 'en', 'lyrics', NULL),
(75, 38, 'en', 'title', NULL),
(76, 38, 'en', 'lyrics', NULL),
(77, 39, 'en', 'title', NULL),
(78, 39, 'en', 'lyrics', NULL),
(79, 40, 'en', 'title', NULL),
(80, 40, 'en', 'lyrics', NULL),
(81, 41, 'en', 'title', NULL),
(82, 41, 'en', 'lyrics', NULL),
(83, 42, 'en', 'title', NULL),
(84, 42, 'en', 'lyrics', NULL),
(85, 43, 'en', 'title', NULL),
(86, 43, 'en', 'lyrics', NULL),
(87, 44, 'en', 'title', NULL),
(88, 44, 'en', 'lyrics', NULL),
(89, 45, 'en', 'title', NULL),
(90, 45, 'en', 'lyrics', NULL),
(91, 46, 'en', 'title', NULL),
(92, 46, 'en', 'lyrics', NULL),
(93, 47, 'en', 'title', NULL),
(94, 47, 'en', 'lyrics', NULL),
(95, 48, 'en', 'title', NULL),
(96, 48, 'en', 'lyrics', NULL),
(97, 49, 'en', 'title', NULL),
(98, 49, 'en', 'lyrics', NULL),
(99, 50, 'en', 'title', NULL),
(100, 50, 'en', 'lyrics', NULL),
(101, 51, 'en', 'title', NULL),
(102, 51, 'en', 'lyrics', NULL),
(103, 52, 'en', 'title', NULL),
(104, 52, 'en', 'lyrics', NULL),
(105, 53, 'en', 'title', NULL),
(106, 53, 'en', 'lyrics', NULL),
(107, 54, 'en', 'title', NULL),
(108, 54, 'en', 'lyrics', NULL),
(109, 55, 'en', 'title', NULL),
(110, 55, 'en', 'lyrics', NULL),
(111, 56, 'en', 'title', NULL),
(112, 56, 'en', 'lyrics', NULL),
(113, 57, 'en', 'title', NULL),
(114, 57, 'en', 'lyrics', NULL),
(115, 58, 'en', 'title', NULL),
(116, 58, 'en', 'lyrics', NULL),
(117, 59, 'en', 'title', NULL),
(118, 59, 'en', 'lyrics', NULL),
(119, 60, 'en', 'title', NULL),
(120, 60, 'en', 'lyrics', NULL),
(121, 61, 'en', 'title', NULL),
(122, 61, 'en', 'lyrics', NULL),
(123, 62, 'en', 'title', NULL),
(124, 62, 'en', 'lyrics', NULL),
(125, 63, 'en', 'title', NULL),
(126, 63, 'en', 'lyrics', NULL),
(127, 64, 'en', 'title', NULL),
(128, 64, 'en', 'lyrics', NULL),
(129, 65, 'en', 'title', NULL),
(130, 65, 'en', 'lyrics', NULL),
(131, 66, 'en', 'title', NULL),
(132, 66, 'en', 'lyrics', NULL),
(133, 67, 'en', 'title', NULL),
(134, 67, 'en', 'lyrics', NULL),
(135, 68, 'en', 'title', NULL),
(136, 68, 'en', 'lyrics', NULL),
(137, 69, 'en', 'title', NULL),
(138, 69, 'en', 'lyrics', NULL),
(139, 70, 'en', 'title', NULL),
(140, 70, 'en', 'lyrics', NULL),
(141, 71, 'en', 'title', NULL),
(142, 71, 'en', 'lyrics', NULL),
(143, 72, 'en', 'title', NULL),
(144, 72, 'en', 'lyrics', NULL),
(145, 73, 'en', 'title', NULL),
(146, 73, 'en', 'lyrics', NULL),
(147, 74, 'en', 'title', NULL),
(148, 74, 'en', 'lyrics', NULL),
(149, 75, 'en', 'title', NULL),
(150, 75, 'en', 'lyrics', NULL),
(151, 76, 'en', 'title', NULL),
(152, 76, 'en', 'lyrics', NULL),
(153, 77, 'en', 'title', NULL),
(154, 77, 'en', 'lyrics', NULL),
(155, 78, 'en', 'title', NULL),
(156, 78, 'en', 'lyrics', NULL),
(157, 79, 'en', 'title', NULL),
(158, 79, 'en', 'lyrics', NULL),
(159, 80, 'en', 'title', NULL),
(160, 80, 'en', 'lyrics', NULL),
(161, 81, 'en', 'title', NULL),
(162, 81, 'en', 'lyrics', NULL),
(163, 82, 'en', 'title', NULL),
(164, 82, 'en', 'lyrics', NULL),
(165, 83, 'en', 'title', NULL),
(166, 83, 'en', 'lyrics', NULL),
(167, 84, 'en', 'title', NULL),
(168, 84, 'en', 'lyrics', NULL),
(169, 85, 'en', 'title', NULL),
(170, 85, 'en', 'lyrics', NULL),
(171, 86, 'en', 'title', NULL),
(172, 86, 'en', 'lyrics', NULL),
(173, 87, 'en', 'title', NULL),
(174, 87, 'en', 'lyrics', NULL),
(175, 88, 'en', 'title', NULL),
(176, 88, 'en', 'lyrics', NULL),
(177, 89, 'en', 'title', NULL),
(178, 89, 'en', 'lyrics', NULL),
(179, 90, 'en', 'title', NULL),
(180, 90, 'en', 'lyrics', NULL),
(181, 91, 'en', 'title', NULL),
(182, 91, 'en', 'lyrics', NULL),
(183, 92, 'en', 'title', NULL),
(184, 92, 'en', 'lyrics', NULL),
(185, 93, 'en', 'title', NULL),
(186, 93, 'en', 'lyrics', NULL),
(187, 94, 'en', 'title', NULL),
(188, 94, 'en', 'lyrics', NULL),
(189, 95, 'en', 'title', NULL),
(190, 95, 'en', 'lyrics', NULL),
(191, 96, 'en', 'title', NULL),
(192, 96, 'en', 'lyrics', NULL),
(193, 97, 'en', 'title', NULL),
(194, 97, 'en', 'lyrics', NULL),
(195, 98, 'en', 'title', NULL),
(196, 98, 'en', 'lyrics', NULL),
(197, 99, 'en', 'title', NULL),
(198, 99, 'en', 'lyrics', NULL),
(199, 100, 'en', 'title', NULL),
(200, 100, 'en', 'lyrics', NULL),
(201, 101, 'en', 'title', NULL),
(202, 101, 'en', 'lyrics', NULL),
(203, 102, 'en', 'title', NULL),
(204, 102, 'en', 'lyrics', NULL),
(205, 103, 'en', 'title', NULL),
(206, 103, 'en', 'lyrics', NULL),
(207, 104, 'en', 'title', NULL),
(208, 104, 'en', 'lyrics', NULL),
(209, 105, 'en', 'title', NULL),
(210, 105, 'en', 'lyrics', NULL),
(211, 106, 'en', 'title', NULL),
(212, 106, 'en', 'lyrics', NULL),
(213, 107, 'en', 'title', NULL),
(214, 107, 'en', 'lyrics', NULL),
(215, 108, 'en', 'title', NULL),
(216, 108, 'en', 'lyrics', NULL),
(217, 109, 'en', 'title', NULL),
(218, 109, 'en', 'lyrics', NULL),
(219, 110, 'en', 'title', NULL),
(220, 110, 'en', 'lyrics', NULL),
(221, 111, 'en', 'title', NULL),
(222, 111, 'en', 'lyrics', NULL),
(223, 112, 'en', 'title', NULL),
(224, 112, 'en', 'lyrics', NULL),
(225, 113, 'en', 'title', NULL),
(226, 113, 'en', 'lyrics', NULL),
(227, 114, 'en', 'title', NULL),
(228, 114, 'en', 'lyrics', NULL),
(229, 115, 'en', 'title', NULL),
(230, 115, 'en', 'lyrics', NULL),
(231, 116, 'en', 'title', NULL),
(232, 116, 'en', 'lyrics', NULL),
(233, 117, 'en', 'title', NULL),
(234, 117, 'en', 'lyrics', NULL),
(235, 118, 'en', 'title', NULL),
(236, 118, 'en', 'lyrics', NULL),
(237, 119, 'en', 'title', NULL),
(238, 119, 'en', 'lyrics', NULL),
(239, 120, 'en', 'title', NULL),
(240, 120, 'en', 'lyrics', NULL),
(241, 121, 'en', 'title', NULL),
(242, 121, 'en', 'lyrics', NULL),
(243, 122, 'en', 'title', NULL),
(244, 122, 'en', 'lyrics', NULL),
(245, 123, 'en', 'title', NULL),
(246, 123, 'en', 'lyrics', NULL),
(247, 124, 'en', 'title', NULL),
(248, 124, 'en', 'lyrics', NULL),
(249, 125, 'en', 'title', NULL),
(250, 125, 'en', 'lyrics', NULL),
(251, 126, 'en', 'title', NULL),
(252, 126, 'en', 'lyrics', NULL),
(253, 127, 'en', 'title', NULL),
(254, 127, 'en', 'lyrics', NULL),
(255, 128, 'en', 'title', NULL),
(256, 128, 'en', 'lyrics', NULL),
(257, 129, 'en', 'title', NULL),
(258, 129, 'en', 'lyrics', NULL),
(259, 130, 'en', 'title', NULL),
(260, 130, 'en', 'lyrics', NULL),
(261, 131, 'en', 'title', NULL),
(262, 131, 'en', 'lyrics', NULL),
(263, 132, 'en', 'title', NULL),
(264, 132, 'en', 'lyrics', NULL),
(265, 133, 'en', 'title', NULL),
(266, 133, 'en', 'lyrics', NULL),
(267, 134, 'en', 'title', NULL),
(268, 134, 'en', 'lyrics', NULL),
(269, 135, 'en', 'title', NULL),
(270, 135, 'en', 'lyrics', NULL),
(271, 136, 'en', 'title', NULL),
(272, 136, 'en', 'lyrics', NULL),
(273, 137, 'en', 'title', NULL),
(274, 137, 'en', 'lyrics', NULL),
(275, 138, 'en', 'title', NULL),
(276, 138, 'en', 'lyrics', NULL),
(277, 139, 'en', 'title', NULL),
(278, 139, 'en', 'lyrics', NULL),
(279, 140, 'en', 'title', NULL),
(280, 140, 'en', 'lyrics', NULL),
(281, 141, 'en', 'title', NULL),
(282, 141, 'en', 'lyrics', NULL),
(283, 142, 'en', 'title', NULL),
(284, 142, 'en', 'lyrics', NULL),
(285, 143, 'en', 'title', NULL),
(286, 143, 'en', 'lyrics', NULL),
(287, 144, 'en', 'title', NULL),
(288, 144, 'en', 'lyrics', NULL),
(289, 145, 'en', 'title', NULL),
(290, 145, 'en', 'lyrics', NULL),
(291, 146, 'en', 'title', NULL),
(292, 146, 'en', 'lyrics', NULL),
(293, 147, 'en', 'title', NULL),
(294, 147, 'en', 'lyrics', NULL),
(295, 148, 'en', 'title', NULL),
(296, 148, 'en', 'lyrics', NULL),
(297, 149, 'en', 'title', NULL),
(298, 149, 'en', 'lyrics', NULL),
(299, 150, 'en', 'title', NULL),
(300, 150, 'en', 'lyrics', NULL),
(301, 151, 'en', 'title', NULL),
(302, 151, 'en', 'lyrics', NULL),
(303, 152, 'en', 'title', NULL),
(304, 152, 'en', 'lyrics', NULL),
(305, 153, 'en', 'title', NULL),
(306, 153, 'en', 'lyrics', NULL),
(307, 154, 'en', 'title', NULL),
(308, 154, 'en', 'lyrics', NULL),
(309, 155, 'en', 'title', NULL),
(310, 155, 'en', 'lyrics', NULL),
(311, 156, 'en', 'title', NULL),
(312, 156, 'en', 'lyrics', NULL),
(313, 157, 'en', 'title', NULL),
(314, 157, 'en', 'lyrics', NULL),
(315, 158, 'en', 'title', NULL),
(316, 158, 'en', 'lyrics', NULL),
(317, 159, 'en', 'title', NULL),
(318, 159, 'en', 'lyrics', NULL),
(319, 160, 'en', 'title', NULL),
(320, 160, 'en', 'lyrics', NULL),
(321, 161, 'en', 'title', NULL),
(322, 161, 'en', 'lyrics', NULL),
(323, 162, 'en', 'title', NULL),
(324, 162, 'en', 'lyrics', NULL),
(325, 163, 'en', 'title', NULL),
(326, 163, 'en', 'lyrics', NULL),
(327, 164, 'en', 'title', NULL),
(328, 164, 'en', 'lyrics', NULL),
(329, 165, 'en', 'title', NULL),
(330, 165, 'en', 'lyrics', NULL),
(331, 166, 'en', 'title', NULL),
(332, 166, 'en', 'lyrics', NULL),
(333, 167, 'en', 'title', NULL),
(334, 167, 'en', 'lyrics', NULL),
(335, 168, 'en', 'title', NULL),
(336, 168, 'en', 'lyrics', NULL),
(337, 169, 'en', 'title', NULL),
(338, 169, 'en', 'lyrics', NULL),
(339, 170, 'en', 'title', NULL),
(340, 170, 'en', 'lyrics', NULL),
(341, 171, 'en', 'title', NULL),
(342, 171, 'en', 'lyrics', NULL),
(343, 172, 'en', 'title', NULL),
(344, 172, 'en', 'lyrics', NULL),
(345, 173, 'en', 'title', NULL),
(346, 173, 'en', 'lyrics', NULL),
(347, 174, 'en', 'title', NULL),
(348, 174, 'en', 'lyrics', NULL),
(349, 175, 'en', 'title', NULL),
(350, 175, 'en', 'lyrics', NULL),
(351, 176, 'en', 'title', NULL),
(352, 176, 'en', 'lyrics', NULL),
(353, 177, 'en', 'title', NULL),
(354, 177, 'en', 'lyrics', NULL),
(355, 178, 'en', 'title', NULL),
(356, 178, 'en', 'lyrics', NULL),
(357, 179, 'en', 'title', NULL),
(358, 179, 'en', 'lyrics', NULL),
(359, 180, 'en', 'title', NULL),
(360, 180, 'en', 'lyrics', NULL),
(361, 181, 'en', 'title', NULL),
(362, 181, 'en', 'lyrics', NULL),
(363, 182, 'en', 'title', NULL),
(364, 182, 'en', 'lyrics', NULL),
(365, 183, 'en', 'title', 'Хрустальный Город'),
(366, 183, 'en', 'lyrics', NULL),
(367, 184, 'en', 'title', NULL),
(368, 184, 'en', 'lyrics', NULL),
(369, 185, 'en', 'title', NULL),
(370, 185, 'en', 'lyrics', NULL),
(371, 186, 'en', 'title', NULL),
(372, 186, 'en', 'lyrics', NULL),
(373, 187, 'en', 'title', NULL),
(374, 187, 'en', 'lyrics', NULL),
(375, 188, 'en', 'title', NULL),
(376, 188, 'en', 'lyrics', NULL),
(377, 189, 'en', 'title', NULL),
(378, 189, 'en', 'lyrics', NULL),
(379, 190, 'en', 'title', NULL),
(380, 190, 'en', 'lyrics', NULL),
(381, 191, 'en', 'title', NULL),
(382, 191, 'en', 'lyrics', NULL),
(383, 192, 'en', 'title', NULL),
(384, 192, 'en', 'lyrics', NULL),
(385, 193, 'en', 'title', NULL),
(386, 193, 'en', 'lyrics', NULL),
(387, 194, 'en', 'title', NULL),
(388, 194, 'en', 'lyrics', NULL),
(389, 195, 'en', 'title', NULL),
(390, 195, 'en', 'lyrics', NULL),
(391, 196, 'en', 'title', NULL),
(392, 196, 'en', 'lyrics', NULL),
(393, 197, 'en', 'title', NULL),
(394, 197, 'en', 'lyrics', NULL),
(395, 198, 'en', 'title', NULL),
(396, 198, 'en', 'lyrics', NULL),
(397, 199, 'en', 'title', NULL),
(398, 199, 'en', 'lyrics', NULL),
(399, 200, 'en', 'title', NULL),
(400, 200, 'en', 'lyrics', NULL),
(401, 201, 'en', 'title', NULL),
(402, 201, 'en', 'lyrics', NULL),
(403, 202, 'en', 'title', NULL),
(404, 202, 'en', 'lyrics', NULL),
(405, 203, 'en', 'title', NULL),
(406, 203, 'en', 'lyrics', NULL),
(407, 204, 'en', 'title', NULL),
(408, 204, 'en', 'lyrics', NULL),
(409, 205, 'en', 'title', NULL),
(410, 205, 'en', 'lyrics', NULL),
(411, 206, 'en', 'title', NULL),
(412, 206, 'en', 'lyrics', NULL),
(413, 207, 'en', 'title', NULL),
(414, 207, 'en', 'lyrics', NULL),
(415, 208, 'en', 'title', NULL),
(416, 208, 'en', 'lyrics', NULL),
(417, 209, 'en', 'title', NULL),
(418, 209, 'en', 'lyrics', NULL),
(419, 210, 'en', 'title', NULL),
(420, 210, 'en', 'lyrics', NULL),
(421, 211, 'en', 'title', NULL),
(422, 211, 'en', 'lyrics', NULL),
(423, 212, 'en', 'title', NULL),
(424, 212, 'en', 'lyrics', NULL),
(425, 213, 'en', 'title', NULL),
(426, 213, 'en', 'lyrics', NULL),
(427, 214, 'en', 'title', NULL),
(428, 214, 'en', 'lyrics', NULL),
(429, 215, 'en', 'title', NULL),
(430, 215, 'en', 'lyrics', NULL),
(431, 216, 'en', 'title', NULL),
(432, 216, 'en', 'lyrics', NULL),
(433, 217, 'en', 'title', NULL),
(434, 217, 'en', 'lyrics', NULL),
(435, 218, 'en', 'title', NULL),
(436, 218, 'en', 'lyrics', NULL),
(437, 219, 'en', 'title', NULL),
(438, 219, 'en', 'lyrics', NULL),
(439, 220, 'en', 'title', NULL),
(440, 220, 'en', 'lyrics', NULL),
(441, 221, 'en', 'title', NULL),
(442, 221, 'en', 'lyrics', NULL),
(443, 222, 'en', 'title', NULL),
(444, 222, 'en', 'lyrics', NULL),
(445, 223, 'en', 'title', NULL),
(446, 223, 'en', 'lyrics', NULL),
(447, 224, 'en', 'title', NULL),
(448, 224, 'en', 'lyrics', NULL),
(449, 225, 'en', 'title', NULL),
(450, 225, 'en', 'lyrics', NULL),
(451, 226, 'en', 'title', NULL),
(452, 226, 'en', 'lyrics', NULL),
(453, 227, 'en', 'title', NULL),
(454, 227, 'en', 'lyrics', NULL),
(455, 228, 'en', 'title', NULL),
(456, 228, 'en', 'lyrics', NULL),
(457, 229, 'en', 'title', NULL),
(458, 229, 'en', 'lyrics', NULL),
(459, 230, 'en', 'title', NULL),
(460, 230, 'en', 'lyrics', NULL),
(461, 231, 'en', 'title', NULL),
(462, 231, 'en', 'lyrics', NULL),
(463, 232, 'en', 'title', NULL),
(464, 232, 'en', 'lyrics', NULL),
(465, 233, 'en', 'title', NULL),
(466, 233, 'en', 'lyrics', NULL),
(467, 234, 'en', 'title', NULL),
(468, 234, 'en', 'lyrics', NULL),
(469, 235, 'en', 'title', NULL),
(470, 235, 'en', 'lyrics', NULL),
(471, 236, 'en', 'title', NULL),
(472, 236, 'en', 'lyrics', NULL),
(473, 237, 'en', 'title', NULL),
(474, 237, 'en', 'lyrics', NULL),
(475, 238, 'en', 'title', NULL),
(476, 238, 'en', 'lyrics', NULL),
(477, 239, 'en', 'title', NULL),
(478, 239, 'en', 'lyrics', NULL),
(479, 240, 'en', 'title', NULL),
(480, 240, 'en', 'lyrics', NULL),
(481, 241, 'en', 'title', NULL),
(482, 241, 'en', 'lyrics', NULL),
(483, 242, 'en', 'title', NULL),
(484, 242, 'en', 'lyrics', NULL),
(485, 243, 'en', 'title', NULL),
(486, 243, 'en', 'lyrics', NULL),
(487, 244, 'en', 'title', NULL),
(488, 244, 'en', 'lyrics', NULL),
(489, 245, 'en', 'title', NULL),
(490, 245, 'en', 'lyrics', NULL),
(491, 246, 'en', 'title', NULL),
(492, 246, 'en', 'lyrics', NULL),
(493, 247, 'en', 'title', NULL),
(494, 247, 'en', 'lyrics', NULL),
(495, 248, 'en', 'title', NULL),
(496, 248, 'en', 'lyrics', NULL),
(497, 249, 'en', 'title', NULL),
(498, 249, 'en', 'lyrics', NULL),
(499, 250, 'en', 'title', NULL),
(500, 250, 'en', 'lyrics', NULL),
(501, 251, 'en', 'title', NULL),
(502, 251, 'en', 'lyrics', NULL),
(503, 252, 'en', 'title', NULL),
(504, 252, 'en', 'lyrics', NULL),
(505, 253, 'en', 'title', NULL),
(506, 253, 'en', 'lyrics', NULL),
(507, 254, 'en', 'title', NULL),
(508, 254, 'en', 'lyrics', NULL),
(509, 255, 'en', 'title', NULL),
(510, 255, 'en', 'lyrics', NULL),
(511, 256, 'en', 'title', NULL),
(512, 256, 'en', 'lyrics', NULL),
(513, 257, 'en', 'title', NULL),
(514, 257, 'en', 'lyrics', NULL),
(515, 258, 'en', 'title', NULL),
(516, 258, 'en', 'lyrics', NULL),
(517, 259, 'en', 'title', NULL),
(518, 259, 'en', 'lyrics', NULL),
(519, 260, 'en', 'title', NULL),
(520, 260, 'en', 'lyrics', NULL),
(521, 261, 'en', 'title', NULL),
(522, 261, 'en', 'lyrics', NULL),
(523, 262, 'en', 'title', NULL),
(524, 262, 'en', 'lyrics', NULL),
(525, 263, 'en', 'title', NULL),
(526, 263, 'en', 'lyrics', NULL),
(527, 264, 'en', 'title', NULL),
(528, 264, 'en', 'lyrics', NULL),
(529, 265, 'en', 'title', NULL),
(530, 265, 'en', 'lyrics', NULL),
(531, 266, 'en', 'title', NULL),
(532, 266, 'en', 'lyrics', NULL),
(533, 267, 'en', 'title', NULL),
(534, 267, 'en', 'lyrics', NULL),
(535, 268, 'en', 'title', NULL),
(536, 268, 'en', 'lyrics', NULL),
(537, 269, 'en', 'title', NULL),
(538, 269, 'en', 'lyrics', NULL),
(539, 270, 'en', 'title', NULL),
(540, 270, 'en', 'lyrics', NULL),
(541, 271, 'en', 'title', NULL),
(542, 271, 'en', 'lyrics', NULL),
(543, 272, 'en', 'title', NULL),
(544, 272, 'en', 'lyrics', NULL),
(545, 273, 'en', 'title', NULL),
(546, 273, 'en', 'lyrics', NULL),
(547, 274, 'en', 'title', NULL),
(548, 274, 'en', 'lyrics', NULL),
(549, 275, 'en', 'title', NULL),
(550, 275, 'en', 'lyrics', NULL),
(551, 276, 'en', 'title', NULL),
(552, 276, 'en', 'lyrics', NULL),
(553, 277, 'en', 'title', NULL),
(554, 277, 'en', 'lyrics', NULL),
(555, 278, 'en', 'title', NULL),
(556, 278, 'en', 'lyrics', NULL),
(557, 279, 'en', 'title', NULL),
(558, 279, 'en', 'lyrics', NULL),
(559, 280, 'en', 'title', NULL),
(560, 280, 'en', 'lyrics', NULL),
(561, 281, 'en', 'title', NULL),
(562, 281, 'en', 'lyrics', NULL),
(563, 282, 'en', 'title', NULL),
(564, 282, 'en', 'lyrics', NULL),
(565, 283, 'en', 'title', NULL),
(566, 283, 'en', 'lyrics', NULL),
(567, 284, 'en', 'title', NULL),
(568, 284, 'en', 'lyrics', NULL),
(569, 285, 'en', 'title', NULL),
(570, 285, 'en', 'lyrics', NULL),
(571, 286, 'en', 'title', NULL),
(572, 286, 'en', 'lyrics', NULL),
(573, 287, 'en', 'title', NULL),
(574, 287, 'en', 'lyrics', NULL),
(575, 288, 'en', 'title', NULL),
(576, 288, 'en', 'lyrics', NULL),
(577, 289, 'en', 'title', NULL),
(578, 289, 'en', 'lyrics', NULL),
(579, 290, 'en', 'title', NULL),
(580, 290, 'en', 'lyrics', NULL),
(581, 291, 'en', 'title', NULL),
(582, 291, 'en', 'lyrics', NULL),
(583, 292, 'en', 'title', NULL),
(584, 292, 'en', 'lyrics', NULL),
(585, 293, 'en', 'title', NULL),
(586, 293, 'en', 'lyrics', NULL),
(587, 294, 'en', 'title', NULL),
(588, 294, 'en', 'lyrics', NULL),
(589, 295, 'en', 'title', NULL),
(590, 295, 'en', 'lyrics', NULL),
(591, 296, 'en', 'title', NULL),
(592, 296, 'en', 'lyrics', NULL),
(593, 297, 'en', 'title', NULL),
(594, 297, 'en', 'lyrics', NULL),
(595, 298, 'en', 'title', NULL),
(596, 298, 'en', 'lyrics', NULL),
(597, 299, 'en', 'title', NULL),
(598, 299, 'en', 'lyrics', NULL),
(599, 300, 'en', 'title', NULL),
(600, 300, 'en', 'lyrics', NULL),
(601, 301, 'en', 'title', NULL),
(602, 301, 'en', 'lyrics', NULL),
(603, 302, 'en', 'title', NULL),
(604, 302, 'en', 'lyrics', NULL),
(605, 303, 'en', 'title', NULL),
(606, 303, 'en', 'lyrics', NULL),
(607, 304, 'en', 'title', NULL),
(608, 304, 'en', 'lyrics', NULL),
(609, 305, 'en', 'title', NULL),
(610, 305, 'en', 'lyrics', NULL),
(611, 306, 'en', 'title', NULL),
(612, 306, 'en', 'lyrics', NULL),
(613, 307, 'en', 'title', NULL),
(614, 307, 'en', 'lyrics', NULL),
(615, 308, 'en', 'title', NULL),
(616, 308, 'en', 'lyrics', NULL),
(617, 309, 'en', 'title', NULL),
(618, 309, 'en', 'lyrics', NULL),
(619, 310, 'en', 'title', NULL),
(620, 310, 'en', 'lyrics', NULL),
(621, 311, 'en', 'title', NULL),
(622, 311, 'en', 'lyrics', NULL),
(623, 312, 'en', 'title', NULL),
(624, 312, 'en', 'lyrics', NULL),
(625, 313, 'en', 'title', NULL),
(626, 313, 'en', 'lyrics', NULL),
(627, 314, 'en', 'title', NULL),
(628, 314, 'en', 'lyrics', NULL),
(629, 315, 'en', 'title', NULL),
(630, 315, 'en', 'lyrics', NULL),
(631, 316, 'en', 'title', NULL),
(632, 316, 'en', 'lyrics', NULL),
(633, 317, 'en', 'title', NULL),
(634, 317, 'en', 'lyrics', NULL),
(635, 318, 'en', 'title', NULL),
(636, 318, 'en', 'lyrics', NULL),
(637, 319, 'en', 'title', NULL),
(638, 319, 'en', 'lyrics', NULL),
(639, 320, 'en', 'title', NULL),
(640, 320, 'en', 'lyrics', NULL),
(641, 321, 'en', 'title', NULL),
(642, 321, 'en', 'lyrics', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `subscribedAt` datetime NOT NULL,
  `inCheckoutHash` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outCheckoutHash` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `subscribedAt`, `inCheckoutHash`, `outCheckoutHash`, `isActive`) VALUES
(1, 'grimv01k@gmail.com', '2016-07-01 19:27:44', '052a8c578129feae49dd6600716acc6f762ddd51', NULL, 0),
(2, 'almark94@gmail.com', '2016-08-22 23:45:51', NULL, '861cc7d878f559d1ca2f16820e1548fe99e645a5', 1),
(3, 'bryanjoomla@gmail.com', '2016-08-23 00:52:46', NULL, 'aeea9cd41c9e95ecd607248bdbcdaa498117204b', 1),
(4, 'msmilov@mail.ru', '2016-08-23 02:13:15', NULL, '6a664bfb4af9cd538aa4a5007ee1130a710d0e10', 1),
(5, 'riga-64@mail.ru', '2016-08-23 15:03:57', NULL, '38248e89442ebad21bff76815aa0c2f4c5642cea', 1),
(6, 'cool.leonid66@yandex.ru', '2016-08-23 15:35:41', NULL, 'b2e9439ef2fb6763fe5b03a5aeb21c439c58a486', 1),
(7, 'ZEL68ALEX@spartak.ru', '2016-08-26 08:56:52', NULL, '1ba9a7f062cb648bab9ecfa9cc14d74bb75314e8', 1),
(8, 'oldrocker@yandex.ru', '2016-08-31 19:44:03', NULL, '7d9684c2af3139b5c70fa4106f04bf751da3b203', 1),
(9, 'metel.6363@mail.ru', '2016-09-03 18:14:10', NULL, 'a4e1afd98678278a656f5a274ed4647ab2eee22d', 1),
(10, '9851006837@mail.ru', '2016-09-04 01:09:58', NULL, 'b15b1559ca1083bf9fd779b22465054cff70c05b', 1),
(11, 'sneg.o2010@yandex.ru', '2016-09-04 17:21:18', NULL, '6e44419a344c8696ac38656bbe202244d9ef53bd', 1),
(12, 'chekulaev_1966@mail.ru', '2016-09-07 00:25:20', NULL, 'f1050343b4e9ff2fa3529c08e40d42375a750ef2', 1),
(13, 'vadgol@mail.ru', '2016-09-12 23:21:52', NULL, '9b641a0a58b1d30448bd120c1d973ee8f06abd05', 1),
(14, 'alexhelperin@gmail.com', '2016-09-14 11:16:00', NULL, 'fbf65795d3004d54a1f8c0329aeb79a6bf266e6c', 1),
(15, 'tarmi@bk.ru', '2016-09-19 21:28:11', NULL, 'b69bd6136999ef3fc86a79684bd7fbb6b215795a', 1),
(16, 'gary8@narod.ru', '2016-09-20 06:38:46', NULL, '92efac6e1ebc1a0c96a11ff72721bbdca7841b0d', 1),
(17, 'gva69@bk.ru', '2016-09-22 23:22:36', NULL, '2adae2843d17342e1f8f95eeba1cac41adc57b70', 1),
(18, 'dodik62@mail.ru', '2016-09-23 08:05:11', NULL, 'c276ef46e314370a84600876fc523d668bf04cba', 1),
(19, 'alinaroytburd@gmail.com', '2016-10-16 13:21:04', NULL, 'd34e2773740b6e321a5b0000a0e35ed05d78598e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `name`, `priority`) VALUES
(1, 'Концерты', 'concerts', 1),
(2, 'Фотосессии', 'photoshoots', 2),
(3, 'Рабочие будни', 'dailyroutine', 3),
(4, 'Вдохновение', 'inspiration', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE IF NOT EXISTS `tags_translations` (
  `id` int(11) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`id`, `object_id`, `locale`, `field`, `content`) VALUES
(1, 1, 'en', 'title', 'Concerts'),
(2, 2, 'en', 'title', 'Photoshoots'),
(3, 3, 'en', 'title', 'Daily routine'),
(4, 4, 'en', 'title', 'Inspiration');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F4E2474F989D9B62` (`slug`);

--
-- Indexes for table `albums_translations`
--
ALTER TABLE `albums_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2414944A232D562B` (`object_id`),
  ADD KEY `albums_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BFDD3168989D9B62` (`slug`);

--
-- Indexes for table `articles_blocks`
--
ALTER TABLE `articles_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_74D541557294869C` (`article_id`);

--
-- Indexes for table `articles_blocks_translations`
--
ALTER TABLE `articles_blocks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A225A6C8232D562B` (`object_id`),
  ADD KEY `articles_blocks_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `articles_translations`
--
ALTER TABLE `articles_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FCA6BE7E232D562B` (`object_id`),
  ADD KEY `articles_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `biographies`
--
ALTER TABLE `biographies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3EA63B6D9523AA8A` (`musician_id`);

--
-- Indexes for table `biographies_translations`
--
ALTER TABLE `biographies_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DF7A5284232D562B` (`object_id`),
  ADD KEY `biographies_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_730600F1989D9B62` (`slug`);

--
-- Indexes for table `concerts_translations`
--
ALTER TABLE `concerts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AE2FCCE0232D562B` (`object_id`),
  ADD KEY `concerts_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts_translations`
--
ALTER TABLE `contacts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5AE5125C232D562B` (`object_id`),
  ADD KEY `contacts_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`);

--
-- Indexes for table `fos_user_user`
--
ALTER TABLE `fos_user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`);

--
-- Indexes for table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_B3C77447A76ED395` (`user_id`),
  ADD KEY `IDX_B3C77447FE54D947` (`group_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B9B52B22232D562B` (`object_id`),
  ADD KEY `menu_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata_translations`
--
ALTER TABLE `metadata_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8EE3927D232D562B` (`object_id`),
  ADD KEY `metadata_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `musicians`
--
ALTER TABLE `musicians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BE350B21989D9B62` (`slug`);

--
-- Indexes for table `musicians_translations`
--
ALTER TABLE `musicians_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4A94D284232D562B` (`object_id`),
  ADD KEY `musicians_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `photoalbum_tag`
--
ALTER TABLE `photoalbum_tag`
  ADD PRIMARY KEY (`photoalbum_id`,`tag_id`),
  ADD KEY `IDX_DE6B6D70509F5D3F` (`photoalbum_id`),
  ADD KEY `IDX_DE6B6D70BAD26311` (`tag_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_876E0D9820BB445` (`photo_album_id`);

--
-- Indexes for table `photos_translations`
--
ALTER TABLE `photos_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FF4C7B0C232D562B` (`object_id`),
  ADD KEY `photos_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `photo_albums`
--
ALTER TABLE `photo_albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A15D3067989D9B62` (`slug`);

--
-- Indexes for table `photo_albums_translations`
--
ALTER TABLE `photo_albums_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EF5A3E0232D562B` (`object_id`),
  ADD KEY `photo_albums_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `photo_tag`
--
ALTER TABLE `photo_tag`
  ADD PRIMARY KEY (`photo_id`,`tag_id`),
  ADD KEY `IDX_8C2D8E577E9E4C8C` (`photo_id`),
  ADD KEY `IDX_8C2D8E57BAD26311` (`tag_id`);

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5D60D73F9523AA8A` (`musician_id`);

--
-- Indexes for table `questionnaires_translations`
--
ALTER TABLE `questionnaires_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88FFC797232D562B` (`object_id`),
  ADD KEY `questionnaires_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BAECB19B1137ABCF` (`album_id`);

--
-- Indexes for table `songs_translations`
--
ALTER TABLE `songs_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_34F8BB5B232D562B` (`object_id`),
  ADD KEY `songs_translations_idx` (`locale`,`object_id`,`field`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_95D326DC232D562B` (`object_id`),
  ADD KEY `tags_translations_idx` (`locale`,`object_id`,`field`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `albums_translations`
--
ALTER TABLE `albums_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `articles_blocks`
--
ALTER TABLE `articles_blocks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `articles_blocks_translations`
--
ALTER TABLE `articles_blocks_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `articles_translations`
--
ALTER TABLE `articles_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `biographies`
--
ALTER TABLE `biographies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `biographies_translations`
--
ALTER TABLE `biographies_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `concerts_translations`
--
ALTER TABLE `concerts_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts_translations`
--
ALTER TABLE `contacts_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fos_user_user`
--
ALTER TABLE `fos_user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `metadata_translations`
--
ALTER TABLE `metadata_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `musicians`
--
ALTER TABLE `musicians`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `musicians_translations`
--
ALTER TABLE `musicians_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=688;
--
-- AUTO_INCREMENT for table `photos_translations`
--
ALTER TABLE `photos_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=620;
--
-- AUTO_INCREMENT for table `photo_albums`
--
ALTER TABLE `photo_albums`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `photo_albums_translations`
--
ALTER TABLE `photo_albums_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questionnaires_translations`
--
ALTER TABLE `questionnaires_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT for table `songs_translations`
--
ALTER TABLE `songs_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=643;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tags_translations`
--
ALTER TABLE `tags_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums_translations`
--
ALTER TABLE `albums_translations`
  ADD CONSTRAINT `FK_2414944A232D562B` FOREIGN KEY (`object_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_blocks`
--
ALTER TABLE `articles_blocks`
  ADD CONSTRAINT `FK_74D541557294869C` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_blocks_translations`
--
ALTER TABLE `articles_blocks_translations`
  ADD CONSTRAINT `FK_A225A6C8232D562B` FOREIGN KEY (`object_id`) REFERENCES `articles_blocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_translations`
--
ALTER TABLE `articles_translations`
  ADD CONSTRAINT `FK_FCA6BE7E232D562B` FOREIGN KEY (`object_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `biographies`
--
ALTER TABLE `biographies`
  ADD CONSTRAINT `FK_3EA63B6D9523AA8A` FOREIGN KEY (`musician_id`) REFERENCES `musicians` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `biographies_translations`
--
ALTER TABLE `biographies_translations`
  ADD CONSTRAINT `FK_DF7A5284232D562B` FOREIGN KEY (`object_id`) REFERENCES `biographies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `concerts_translations`
--
ALTER TABLE `concerts_translations`
  ADD CONSTRAINT `FK_AE2FCCE0232D562B` FOREIGN KEY (`object_id`) REFERENCES `concerts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts_translations`
--
ALTER TABLE `contacts_translations`
  ADD CONSTRAINT `FK_5AE5125C232D562B` FOREIGN KEY (`object_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `FK_B9B52B22232D562B` FOREIGN KEY (`object_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `metadata_translations`
--
ALTER TABLE `metadata_translations`
  ADD CONSTRAINT `FK_8EE3927D232D562B` FOREIGN KEY (`object_id`) REFERENCES `metadata` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `musicians_translations`
--
ALTER TABLE `musicians_translations`
  ADD CONSTRAINT `FK_4A94D284232D562B` FOREIGN KEY (`object_id`) REFERENCES `musicians` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photoalbum_tag`
--
ALTER TABLE `photoalbum_tag`
  ADD CONSTRAINT `FK_DE6B6D70509F5D3F` FOREIGN KEY (`photoalbum_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DE6B6D70BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `FK_876E0D9820BB445` FOREIGN KEY (`photo_album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos_translations`
--
ALTER TABLE `photos_translations`
  ADD CONSTRAINT `FK_FF4C7B0C232D562B` FOREIGN KEY (`object_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photo_albums_translations`
--
ALTER TABLE `photo_albums_translations`
  ADD CONSTRAINT `FK_EF5A3E0232D562B` FOREIGN KEY (`object_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photo_tag`
--
ALTER TABLE `photo_tag`
  ADD CONSTRAINT `FK_8C2D8E577E9E4C8C` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8C2D8E57BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD CONSTRAINT `FK_5D60D73F9523AA8A` FOREIGN KEY (`musician_id`) REFERENCES `musicians` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questionnaires_translations`
--
ALTER TABLE `questionnaires_translations`
  ADD CONSTRAINT `FK_88FFC797232D562B` FOREIGN KEY (`object_id`) REFERENCES `questionnaires` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `FK_BAECB19B1137ABCF` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `songs_translations`
--
ALTER TABLE `songs_translations`
  ADD CONSTRAINT `FK_34F8BB5B232D562B` FOREIGN KEY (`object_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD CONSTRAINT `FK_95D326DC232D562B` FOREIGN KEY (`object_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
