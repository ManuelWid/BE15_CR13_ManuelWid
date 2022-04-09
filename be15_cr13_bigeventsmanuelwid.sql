-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Apr 2022 um 18:36
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be15_cr13_bigeventsmanuelwid`
--
CREATE DATABASE IF NOT EXISTS `be15_cr13_bigeventsmanuelwid` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr13_bigeventsmanuelwid`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220408105544', '2022-04-08 12:55:52', 87);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) DEFAULT NULL,
  `event_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `date_start`, `end_date`, `picture`, `capacity`, `email`, `phone`, `address`, `city`, `zip`, `event_url`, `event_type`) VALUES
(3, 'Wiesn', 'Drink until you\'re blind.', '2023-01-01 00:00:00', '2023-02-01 00:00:00', 'https://www.wienerwiesnfest.at/wp-content/uploads/2021/02/WIENERWIESNFEST-2021-STARTSEITE-SLIDESHOW-00002.jpg', 5000, 'wiesn@mail.com', 1234567, 'somewhere 1', 'vienna', 1020, 'https://www.google.com/', 'alcohol'),
(30, 'Trailing Fleabane', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', '2021-05-04 08:07:47', '2021-10-07 10:12:42', 'https://1000things.b-cdn.net/app/uploads/festivals-rund-um-wien-header.jpg', 19910, 'zashment0@slideshare.net', 2147483647, 'Graceland', 'Ad Dasmah', 12345, 'http://gnu.org/justo/morbi/ut/odio/cras/mi.json', 'music'),
(31, 'Rusty Lupine', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', '2021-04-11 04:58:12', '2021-05-31 14:29:55', 'https://www.metal-hammer.de/wp-content/uploads/2021/11/17/12/impressionen_20190815_wg_384593-k.jpg', 17249, 'ahayers1@joomla.org', 1773829041, 'Huxley', 'Cuauhtemoc', 87426, 'https://slashdot.org/rhoncus/aliquam/lacus/morbi.jpg', 'sport'),
(32, 'Pacific Silver Fir', 'sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', '2021-10-18 22:39:40', '2021-04-29 08:24:18', 'https://cdn.pixabay.com/photo/2017/09/08/08/21/festival-2728050_1280.jpg', 3130, 'vmolian2@gizmodo.com', 2147483647, 'Kinsman', 'Youfang', 12345, 'https://ehow.com/nulla/justo.jsp', 'theater'),
(33, 'Tropical Soda Apple', 'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '2021-07-03 16:02:54', '2021-06-30 14:55:25', 'https://live.staticflickr.com/3725/9533060072_5d330f2656_b.jpg', 16705, 'cuwins3@patch.com', 2147483647, 'Ruskin', 'Sapphaya', 17140, 'http://freewebs.com/gravida/nisi/at/nibh/in.jpg', 'music'),
(34, 'Mountain Marsh Larkspur', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', '2021-05-06 19:43:02', '2021-11-21 04:26:02', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyyuxJ-r9Ltsud185MEQrPs2FZprK0lmOTJw&usqp=CAU', 7066, 'bplail4@mozilla.org', 2147483647, 'Derek', 'Sundbyberg', 174, 'http://jalbum.net/placerat/ante/nulla.jsp', 'sport'),
(35, 'Giant Angelica', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', '2021-09-21 17:32:53', '2021-06-14 13:31:08', 'https://cdn.pixabay.com/photo/2018/02/07/18/44/festival-3137704_1280.jpg', 8840, 'eedmott5@blinklist.com', 2147483647, 'Algoma', 'Rossosh', 624282, 'http://java.com/pharetra/magna/vestibulum/aliquet/ultrices/erat.jpg', 'theater'),
(36, 'Scouler\'s Woollyweed', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet', '2022-07-10 11:47:26', '2021-10-04 13:28:55', 'https://cdn.pixabay.com/photo/2019/10/06/12/02/festival-4530040_1280.jpg', 7781, 'gbisco6@berkeley.edu', 2147483647, 'Crest Line', 'La Sarre', 123456, 'https://hubpages.com/mauris/vulputate/elementum/nullam/varius.xml', 'music'),
(37, 'Sanionia Moss', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis', '2021-05-20 16:57:47', '2021-05-04 16:19:00', 'https://www.stereo.de/fileadmin/fonoforum/user_upload/19-08-09-730-Festival-Strings-Lucerne-Foto-Dennis-Yulov.jpg', 2661, 'dnickoll7@google.ru', 2147483647, 'Toban', 'Paris', 75396, 'https://tinypic.com/quis/orci/nullam/molestie/nibh.json', 'sport'),
(38, 'Shield Lichen', 'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', '2021-04-11 05:01:39', '2022-02-25 19:47:53', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB0LkdZo5_cjmsMFn7YxRlzYL9SjW2DssczA&usqp=CAU', 1243, 'sworters8@networksolutions.com', 2147483647, 'Jana', 'Bagratashen', 123456, 'http://wix.com/turpis/integer/aliquet/massa/id.xml', 'theater'),
(39, 'Cottongrass', 'amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', '2022-11-06 18:47:31', '2021-11-16 00:55:17', 'https://cdn.pixabay.com/photo/2017/06/07/18/06/the-festival-of-colors-2381121_1280.jpg', 17713, 'splenty9@earthlink.net', 2147483647, 'Bartillon', 'Pinhao', 49517, 'http://mail.ru/mattis/pulvinar/nulla/pede.jsp', 'music'),
(40, 'Hairy Rupturewort', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis', '2023-04-05 08:35:46', '2021-12-09 20:07:31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5zwTDUgvY1L6FqU2Fs-eG58hE3uqZ8pTx1A&usqp=CAU', 16096, 'mmathelina@constantcontact.com', 1068174659, 'Ryan', 'Khashtarrak', 45678, 'https://intel.com/platea/dictumst/morbi.html', 'sport'),
(41, 'Plains Onion', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', '2023-03-30 20:40:55', '2022-02-03 11:30:46', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8UoDslSdiQZ283zWOsxn-tTTrkvhimwjXGA&usqp=CAU', 5076, 'bcouthardb@google.ru', 2147483647, 'Mcguire', 'Cabadiangan', 1750, 'https://ezinearticles.com/fermentum/justo/nec.jsp', 'theater'),
(42, 'Tailed Kittentails', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', '2022-11-18 14:01:14', '2021-10-24 05:46:22', 'https://cdn.pixabay.com/photo/2017/06/10/16/26/the-festival-of-colors-2390146_1280.jpg', 7206, 'lmerrellc@china.com.cn', 2147483647, 'Heffernan', 'Dongshangguan', 15649, 'http://ezinearticles.com/interdum/in.html', 'music'),
(43, 'Tipa', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', '2021-05-11 05:14:51', '2021-08-12 10:55:07', 'https://www.metal-hammer.de/wp-content/uploads/2021/11/17/12/impressionen_20190815_wg_384593-k.jpg', 13983, 'ajentind@free.fr', 2045184310, 'Merry', 'Belgorod', 309271, 'https://ehow.com/neque/sapien/placerat/ante/nulla/justo.aspx', 'sport'),
(44, 'Threehearts', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', '2023-01-30 21:34:11', '2021-12-05 22:33:45', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyyuxJ-r9Ltsud185MEQrPs2FZprK0lmOTJw&usqp=CAU', 5844, 'iguitte@flavors.me', 1293661121, 'Raven', 'Makin Village', 1596, 'http://businessinsider.com/iaculis/congue.xml', 'theater'),
(45, 'Carolina Wild Petunia', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec', '2022-04-14 15:51:26', '2022-01-26 20:53:08', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMXmw6jebzPFQJM_jrQgPelCjGyCxt-4xkPA&usqp=CAU', 6699, 'borryf@cdbaby.com', 2147483647, 'Golden Leaf', 'Yingcui', 123, 'https://tinyurl.com/odio/odio/elementum/eu.png', 'music'),
(46, 'Franciscan Erigeron', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id', '2021-05-02 03:52:26', '2022-01-21 08:01:22', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQazKj4kYlNzkw6hS0ZjGXQFBfc-c0dYzmcUA&usqp=CAU', 10748, 'lschoenleiterg@yahoo.com', 2147483647, 'Continental', 'Ar Riqqah', 15919, 'http://cargocollective.com/at/ipsum/ac/tellus.html', 'sport'),
(47, 'Mojave Yucca', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget', '2022-08-17 03:21:22', '2021-07-13 13:52:47', 'https://1000things.b-cdn.net/app/uploads/festivals-rund-um-wien-header.jpg', 13327, 'mmccowenh@sun.com', 2147483647, 'Del Sol', 'Varzea da Palma', 39260, 'https://163.com/maecenas/pulvinar/lobortis/est/phasellus.js', 'theater'),
(48, 'Undulate Speedwell', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', '2022-12-02 02:48:02', '2021-06-23 11:59:55', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyyuxJ-r9Ltsud185MEQrPs2FZprK0lmOTJw&usqp=CAU', 5510, 'flovegrovei@ted.com', 2147483647, 'Charing Cross', 'Siso', 15956, 'https://360.cn/massa/tempor/convallis/nulla/neque/libero.png', 'music'),
(49, 'Limestone Bedstraw', 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', '2021-08-04 03:04:58', '2022-02-17 08:46:18', 'https://cdn.pixabay.com/photo/2017/06/07/18/06/the-festival-of-colors-2381121_1280.jpg', 16544, 'rkunaj@forbes.com', 1251959810, 'Browning', 'Libano', 731048, 'http://umn.edu/quis/turpis/sed.jsp', 'sport');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
