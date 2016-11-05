-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 05, 2016 at 07:03 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pochtabank`
--

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `gorod_id` int(11) NOT NULL,
  `adress` char(255) NOT NULL,
  `whose_atm_id` int(2) NOT NULL,
  `mode` char(255) NOT NULL,
  `services` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`id`, `gorod_id`, `adress`, `whose_atm_id`, `mode`, `services`) VALUES
(26, 318, 'г. Курган, ул. Коли Мяготина, д. 126', 1, 'пн.-пт.: 09.00-21.00, сб.-вс.: 10.00-17.00', 1),
(27, 318, 'г. Курган, ул. Гоголя, д. 103 к.1', 2, 'круглосуточно', 3),
(28, 318, 'г. Курган, ул. Гоголя, д. 44', 1, 'пн.-пт.: 08.00-20.00, сб.-вс.: 09.00-18.00', 3),
(29, 318, 'г. Курган, ул. Гоголя, д. 44', 2, 'В режиме работы организации', 3),
(30, 318, 'г. Курган, ул. Станционная, д. 51', 2, 'В режиме работы организации', 2),
(31, 318, 'г. Курган, ул. Томина, д. 63', 2, 'В режиме работы организации', 2),
(32, 318, 'г. Курган, ул. Некрасова, д. 9а', 2, 'В режиме работы организации', 2),
(33, 318, 'г. Курган, ул. Куйбышева, д. 28', 2, 'круглосуточно', 3),
(34, 318, 'г. Курган, ул. Кирова, д. 111/1', 2, 'В режиме работы организации', 3),
(35, 318, 'г. Курган, ул. Карла Маркса, д. 76/1', 2, 'В режиме работы организации', 2),
(36, 318, 'г. Курган, ул. Пролетарская, д. 11', 2, 'В режиме работы организации', 2),
(37, 318, 'г. Курган, ул. Куйбышева, д. 72', 2, 'Круглосуточно', 2),
(38, 318, 'г. Курган, ул. Станционная, д. 19', 2, 'В режиме работы организации', 2),
(39, 318, 'г. Курган, пл. им. В.М. Слосмана, д. 6, стр.1,2', 2, 'В режиме работы организации', 2),
(40, 318, 'г. Курган, ул. Садовая, д. 52', 2, 'В режиме работы организации', 2),
(41, 318, 'г. Курган, ул. Пушкина, д. 25', 2, 'В режиме работы организации', 3),
(42, 318, 'г. Курган, ул. Омская, д. 3', 2, 'В режиме работы организации', 2),
(43, 318, 'г. Курган, ул. Невежина, д. 3, строение 10', 2, 'В режиме работы организации', 3),
(44, 318, 'г. Курган, ул. 6 микрорайон, д. 33', 2, 'В режиме работы организации', 3),
(45, 318, 'г. Курган, мкр. 4-й, д. 25', 2, 'В режиме работы организации', 2),
(46, 318, 'г. Курган, мкр. 3, д. 30', 2, 'В режиме работы организации', 3),
(47, 318, 'г. Курган, мкр. 1, д. 33 строение 1', 2, 'В режиме работы организации', 2),
(48, 318, 'г. Курган, пр-кт Конституции, д. 59/1', 2, 'В режиме работы организации', 2),
(49, 227, 'г. Каменск-Уральский, ул. Суворова, д. 24', 2, 'В режиме работы организации', 3),
(50, 227, 'г. Каменск-Уральский, ул. Каменская, д. 84а', 2, 'В режиме работы организации', 2),
(51, 227, 'г. Каменск-Уральский, ул. Алюминиевая, д. 74', 1, 'пн.-пт.: 08.00-20.00, обед: 13.00-14.00, сб.: 09.00-18.00, обед: 13.00-14.00', 3),
(52, 227, 'г. Каменск-Уральский, пр-т Победы, д. 5', 1, 'пн.-пт.: 08.00-20.00, обед: 13.00-14.00, сб.: 09.00-18.00, обед: 13.00-14.00', 3),
(53, 227, 'г. Каменск-Уральский, ул. Ленина, д. 36а', 2, 'круглосуточно', 3),
(54, 227, 'г. Каменск-Уральский, пр-кт Победы, д. 11а', 2, 'В режиме работы организации', 2),
(55, 227, 'г. Каменск-Уральский, пр-кт Победы, д. 33а', 2, 'В режиме работы организации', 2),
(56, 227, 'г. Каменск-Уральский, ул. Кунавина, д. 25', 2, 'В режиме работы организации', 2),
(57, 227, 'г. Каменск-Уральский, ул. Привокзальная, д. 13', 2, 'В режиме работы организации', 2),
(58, 227, 'г. Каменск-Уральский, ул. Каменская, д. 11', 2, 'В режиме работы организации', 2),
(59, 232, 'г. Камышлов, ул. Карла Маркса, д. 59', 1, 'пн.-пт.: 08.00-20.00, сб.: 09.00-18.00,вс.: 09.00-14.00', 3),
(60, 232, 'г. Камышлов, ул. Красных Орлов, д. 83', 2, 'В режиме работы организации', 3),
(61, 232, 'г. Камышлов, ул. Красных Орлов, д. 85', 2, 'В режиме работы организации', 2),
(62, 232, 'г. Камышлов, ул. Карла Маркса, д. 52', 2, 'В режиме работы организации', 2),
(63, 232, 'г. Камышлов, ул. Куйбышева, д. 10', 2, 'В режиме работы организации', 2),
(64, 232, 'г. Камышлов, ул. Фарфористов, д. 6', 2, 'В режиме работы организации', 2);

-- --------------------------------------------------------

--
-- Table structure for table `goroda`
--

CREATE TABLE `goroda` (
  `id` int(11) NOT NULL,
  `gorod` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goroda`
--

INSERT INTO `goroda` (`id`, `gorod`) VALUES
(7, 'Абакан'),
(8, 'Абинск'),
(9, 'Адлер'),
(10, 'Азов'),
(11, 'Аксай'),
(12, 'Алапаевск'),
(13, 'Алатырь'),
(14, 'Алейск'),
(15, 'Александров'),
(16, 'Алексеевка'),
(17, 'Алексеевское'),
(18, 'Алексин'),
(19, 'Альметьевск'),
(20, 'Анапа'),
(21, 'Ангарск'),
(22, 'Андреевка'),
(23, 'Анжеро-Судженск'),
(24, 'Апатиты'),
(25, 'Апшеронск'),
(26, 'Аргаяш'),
(27, 'Арзамас'),
(28, 'Армавир'),
(29, 'Артемовский'),
(30, 'Архангельск'),
(31, 'Асбест'),
(32, 'Аскиз'),
(33, 'Астрахань'),
(34, 'Аткарск'),
(35, 'Ахтубинск'),
(36, 'Ачинск'),
(37, 'Аша'),
(38, 'Бавлы'),
(39, 'Балабаново'),
(40, 'Балаково'),
(41, 'Балахна'),
(42, 'Балашиха'),
(43, 'Балашов'),
(44, 'Балезино'),
(45, 'Балтаси'),
(46, 'Балтийск'),
(47, 'Барабинск'),
(48, 'Барнаул'),
(49, 'Барыш'),
(50, 'Батайск'),
(51, 'Башмаково'),
(52, 'Бежецк'),
(53, 'Безенчук'),
(54, 'Белая Калитва'),
(55, 'Белгород'),
(56, 'Белебей'),
(57, 'Белово'),
(58, 'Беломорск'),
(59, 'Белорецк'),
(60, 'Белореченск'),
(61, 'Белоярский'),
(62, 'Беляевка'),
(63, 'Бердск'),
(64, 'Березники'),
(65, 'Березовский'),
(66, 'Берёзовский'),
(67, 'Бийск'),
(68, 'Бирск'),
(69, 'Благодарный'),
(70, 'Бобров'),
(71, 'Богданович'),
(72, 'Богородск'),
(73, 'Богучар'),
(74, 'Бологое'),
(75, 'Болотное'),
(76, 'Бор'),
(77, 'Борисовка'),
(78, 'Борисоглебск'),
(79, 'Боровичи'),
(80, 'Боровск'),
(81, 'Бохан'),
(82, 'Братск'),
(83, 'Бронницы'),
(84, 'Брюховецкаястаница'),
(85, 'Брянск'),
(86, 'Бугульма'),
(87, 'Буденновск'),
(88, 'Бузулук'),
(89, 'Буинск'),
(90, 'Буй'),
(91, 'Бутурлиновка'),
(92, 'Вавож'),
(93, 'Валдай'),
(94, 'Великие Луки'),
(95, 'Великий Новгород'),
(96, 'Верещагино'),
(97, 'Верхний Уфалей'),
(98, 'Верхняя Пышма'),
(99, 'Видное'),
(100, 'Вичуга'),
(101, 'Владимир'),
(102, 'Волгоград'),
(103, 'Волгодонск'),
(104, 'Волгореченск'),
(105, 'Волжск'),
(106, 'Волжский'),
(107, 'Вологда'),
(108, 'Володарский'),
(109, 'Волоколамск'),
(110, 'Волосово'),
(111, 'Волхов'),
(112, 'Вольск'),
(113, 'Воронеж'),
(114, 'Воскресенск'),
(115, 'Воткинск'),
(116, 'Всеволожск'),
(117, 'Выборг'),
(118, 'Выкса'),
(119, 'Выселки'),
(120, 'Выселковский'),
(121, 'Вышний Волочек'),
(122, 'Вязники'),
(123, 'Вязьма'),
(124, 'Гаврилов-Ям'),
(125, 'Гагарин'),
(126, 'Гай'),
(127, 'Гатчина'),
(128, 'Геленджик'),
(129, 'Георгиевск'),
(130, 'Глазов'),
(131, 'Горно-Алтайск'),
(132, 'Городец'),
(133, 'Городище,Пензенскаяобласть'),
(134, 'Горячий Ключ'),
(135, 'Грязи'),
(136, 'Губаха'),
(137, 'Губкин'),
(138, 'Гулькевичи'),
(139, 'Гурьевск'),
(140, 'Гусев'),
(141, 'Гусь-Хрустальный'),
(142, 'Данков'),
(143, 'Десногорск'),
(144, 'Дзержинск'),
(145, 'Дзержинский'),
(146, 'Дивногорск'),
(147, 'Димитровград'),
(148, 'Динская станица'),
(149, 'Дмитров'),
(150, 'Добрянка'),
(151, 'Долгопрудный'),
(152, 'Домодедово'),
(153, 'Донецк'),
(154, 'Донское'),
(155, 'Донской'),
(156, 'Дубна'),
(157, 'Дюртюли'),
(158, 'Дядьковская станица'),
(159, 'Дятьково'),
(160, 'Егорьевск'),
(161, 'Ейск'),
(162, 'Екатеринбург'),
(163, 'Елабуга'),
(164, 'Елань'),
(165, 'Елец'),
(166, 'Еманжелинск'),
(167, 'Емельяново'),
(168, 'Ессентуки'),
(169, 'Ессентукская станица'),
(170, 'Ефремов'),
(171, 'Железноводск'),
(172, 'Железногорск,Красноярский край'),
(173, 'Железногорск,Курская область'),
(174, 'Железнодорожный'),
(175, 'Жигулевск'),
(176, 'Жирновск'),
(177, 'Жуковский'),
(178, 'Заводоуковск'),
(179, 'Заволжье'),
(180, 'Завьялово'),
(181, 'Заинск'),
(182, 'Заозерный'),
(183, 'Заозерск'),
(184, 'Заполярный'),
(185, 'Зарайск'),
(186, 'Заречный'),
(187, 'Заречный Свердловскаяобласть'),
(188, 'Заринск'),
(189, 'Звенигород'),
(190, 'Зеленогорск'),
(191, 'Зеленоград'),
(192, 'Зеленодольск'),
(193, 'Зеленокумск'),
(194, 'Зерноград'),
(195, 'Зима'),
(196, 'Златоуст'),
(197, 'Иваново'),
(198, 'Ивантеевка'),
(199, 'Ижевск'),
(200, 'Изобильный'),
(201, 'Икряное'),
(202, 'Илек'),
(203, 'Иловля'),
(204, 'Инжавино'),
(205, 'Инза'),
(206, 'Ипатово'),
(207, 'Ирбит'),
(208, 'Исилькуль'),
(209, 'Искитим'),
(210, 'Искитим'),
(211, 'Истра'),
(212, 'Ишим'),
(213, 'Ишимбай'),
(214, 'Йошкар-Ола'),
(215, 'Кавказская станица'),
(216, 'Казань'),
(217, 'Казьминское'),
(218, 'Калач'),
(219, 'Калач-на-Дону'),
(220, 'Калачинск'),
(221, 'Калининград'),
(222, 'Калининск'),
(223, 'Калуга'),
(224, 'Калязин'),
(225, 'Камбарка'),
(226, 'Каменка'),
(227, 'Каменск-Уральский'),
(228, 'Каменск-Шахтинский'),
(229, 'Камень-на-Оби'),
(230, 'Камызяк'),
(231, 'Камышин'),
(232, 'Камышлов'),
(233, 'Канаш'),
(234, 'Кандалакша'),
(235, 'Каневская станица'),
(236, 'Канск'),
(237, 'Карабаново'),
(238, 'Карасук'),
(239, 'Карачев'),
(240, 'Каргасок'),
(241, 'Карталы'),
(242, 'Касимов'),
(243, 'Касли'),
(244, 'Качканар'),
(245, 'Кашин'),
(246, 'Кашира'),
(247, 'Кемерово'),
(248, 'Кимовск'),
(249, 'Кимры'),
(250, 'Кингисепп'),
(251, 'Кинель'),
(252, 'Кинель-Черкассы'),
(253, 'Кинешма'),
(254, 'Киреевск'),
(255, 'Киржач'),
(256, 'Кириши'),
(257, 'Киров'),
(258, 'Киров,Калужская область'),
(259, 'Кировград'),
(260, 'Кирово-Чепецк'),
(261, 'Кировск'),
(262, 'Кировск,Ленинградская область'),
(263, 'Кирс'),
(264, 'Кирсанов'),
(265, 'Киселевск'),
(266, 'Кисловодск'),
(267, 'Климовск'),
(268, 'Клин'),
(269, 'Клинцы'),
(270, 'Ковров'),
(271, 'Ковылкино'),
(272, 'Козельск'),
(273, 'Козулька'),
(274, 'Кола'),
(275, 'Коломна'),
(276, 'Коломна-'),
(277, 'Колпашево'),
(278, 'Колпино'),
(279, 'Кольчугино'),
(280, 'Конаково'),
(281, 'Кондопога'),
(282, 'Копейск'),
(283, 'Кораблино'),
(284, 'Кореновск'),
(285, 'Коркино'),
(286, 'Королев'),
(287, 'Короча'),
(288, 'Костомукша'),
(289, 'Кострома'),
(290, 'Котельники'),
(291, 'Котельнич'),
(292, 'Котово'),
(293, 'Котовск'),
(294, 'Красноармейск'),
(295, 'Красногвардейское'),
(296, 'Красногорск'),
(297, 'Краснодар'),
(298, 'Красное Село'),
(299, 'Краснокамск'),
(300, 'Краснообск'),
(301, 'Красноуральск'),
(302, 'Красноуфимск'),
(303, 'Красноярск'),
(304, 'Красный Кут'),
(305, 'КрасныйЯр'),
(306, 'Кременки'),
(307, 'Кронштадт'),
(308, 'Кропоткин'),
(309, 'Крымск'),
(310, 'Кстово'),
(311, 'Кувандык'),
(312, 'Кудымкар'),
(313, 'Кузнецк'),
(314, 'Куйбышев'),
(315, 'Кулебаки'),
(316, 'Кумертау'),
(317, 'Кунгур'),
(318, 'Курган'),
(319, 'Курганинск'),
(320, 'Курск'),
(321, 'Куртамыш'),
(322, 'Курчатов'),
(323, 'Кущевская станица'),
(324, 'Кыштым'),
(325, 'Кяхта'),
(326, 'Лабинск'),
(327, 'Ладожская станица'),
(328, 'Лазаревское'),
(329, 'Лангепас'),
(330, 'Лебедянь'),
(331, 'Ленинградская'),
(332, 'Лениногорск'),
(333, 'Ленинск-Кузнецкий'),
(334, 'Лесосибирск'),
(335, 'Ливны'),
(336, 'Лиман'),
(337, 'Липецк'),
(338, 'Лиски'),
(339, 'Лихославль'),
(340, 'Лобня'),
(341, 'Ломоносов'),
(342, 'Луга'),
(343, 'Луховицы'),
(344, 'Лысьва'),
(345, 'Лыткарино'),
(346, 'Люберцы'),
(347, 'Любинский'),
(348, 'Людиново'),
(349, 'Лянтор'),
(350, 'Магнитогорск'),
(351, 'Малоархангельск'),
(352, 'Малоярославец'),
(353, 'Маркса'),
(354, 'Марьяновка'),
(355, 'Матвеев Курган'),
(356, 'Мегион'),
(357, 'Медвежьегорск'),
(358, 'Медногорск'),
(359, 'Междуреченск'),
(360, 'Мелеуз'),
(361, 'Металлострой'),
(362, 'Миасс'),
(363, 'Миллерово'),
(364, 'Минеральные Воды'),
(365, 'Минусинск'),
(366, 'Мирный'),
(367, 'Михайлов'),
(368, 'Михайловка'),
(369, 'Михайловск'),
(370, 'Мичуринск'),
(371, 'Можайск'),
(372, 'Можга'),
(373, 'Мокроус'),
(374, 'Мокшан'),
(375, 'Мончегорск'),
(376, 'Морозовск'),
(377, 'Моршанск'),
(378, 'Москва'),
(379, 'Московский'),
(380, 'Мостовской'),
(381, 'Мурманск'),
(382, 'Муром'),
(383, 'Мценск'),
(384, 'Мыски'),
(385, 'Мытищи'),
(386, 'Набережные Челны'),
(387, 'Навашино'),
(388, 'Навля'),
(389, 'Надым'),
(390, 'Назарово'),
(391, 'Наро-Фоминск'),
(392, 'Невинномысск'),
(393, 'Нелидово'),
(394, 'Неман'),
(395, 'Нефтегорск'),
(396, 'Нефтекамск'),
(397, 'Нефтеюганск'),
(398, 'Нижневартовск'),
(399, 'Нижнекамск'),
(400, 'Нижнеудинск'),
(401, 'Нижний Ломов'),
(402, 'Нижний Новгород'),
(403, 'Нижний Тагил'),
(404, 'Никель'),
(405, 'Николаевск'),
(406, 'Никольск'),
(407, 'Новоалександровск'),
(408, 'Новоалтайск'),
(409, 'Новоаннинский'),
(410, 'Нововоронеж'),
(411, 'Нововятск'),
(412, 'Новодвинск'),
(413, 'Новое Девяткино'),
(414, 'Новозыбков'),
(415, 'Новокубанск'),
(416, 'Новокузнецк,Кемеровская область'),
(417, 'Новокуйбышевск'),
(418, 'Новомичуринск'),
(419, 'Новомосковск'),
(420, 'Новопавловск'),
(421, 'Новороссийск'),
(422, 'Новосергиевка'),
(423, 'Новосибирск'),
(424, 'Новосиньково'),
(425, 'Новотроицк'),
(426, 'Новоузенск,Саратовская область'),
(427, 'Новоульяновск'),
(428, 'Новочебоксарск'),
(429, 'Новочеркасск'),
(430, 'Новошахтинск'),
(431, 'НовыйОскол'),
(432, 'Ногинск'),
(433, 'Ноябрьск'),
(434, 'Нурлат'),
(435, 'Нягань'),
(436, 'Няндома'),
(437, 'Обнинск'),
(438, 'Обоянь'),
(439, 'Одинцово'),
(440, 'Озёрск'),
(441, 'Озеры'),
(442, 'Октябрьск'),
(443, 'Октябрьский'),
(444, 'Октябрьское'),
(445, 'Окуловка'),
(446, 'Оленегорск'),
(447, 'Олонец'),
(448, 'Омск'),
(449, 'Омутнинск'),
(450, 'Онега'),
(451, 'Ордынское'),
(452, 'Орел'),
(453, 'Оренбург'),
(454, 'Орехово-Зуево'),
(455, 'Орск'),
(456, 'Осинники'),
(457, 'Осташков'),
(458, 'Острогожск'),
(459, 'Отрадный'),
(460, 'Павлово'),
(461, 'Павловск'),
(462, 'Павловская'),
(463, 'Павловский Посад'),
(464, 'Палласовка'),
(465, 'Пашино'),
(466, 'Пенза'),
(467, 'Первомайский'),
(468, 'Первоуральск'),
(469, 'Переславль-Залесский'),
(470, 'Пермь'),
(471, 'Петергоф'),
(472, 'Петровск'),
(473, 'Петрозаводск'),
(474, 'Питкяранта'),
(475, 'Поворино'),
(476, 'Погар'),
(477, 'Подольск'),
(478, 'Пойковский'),
(479, 'Покров'),
(480, 'Покровское'),
(481, 'Полевской'),
(482, 'Полтавская станица'),
(483, 'Полярные Зори'),
(484, 'Похвистнево'),
(485, 'Почеп'),
(486, 'Починки'),
(487, 'Починок'),
(488, 'Приволжск'),
(489, 'Приморско-Ахтарск'),
(490, 'Приозерск'),
(491, 'Прокопьевск'),
(492, 'Промышленная(пгт)'),
(493, 'Псков'),
(494, 'Пугачев'),
(495, 'Пушкин'),
(496, 'Пушкино'),
(497, 'Пышма'),
(498, 'Пятигорск'),
(499, 'Радужный'),
(500, 'Раменское'),
(501, 'Рассказово'),
(502, 'Реж'),
(503, 'Реутов'),
(504, 'Ржев'),
(505, 'Рославль'),
(506, 'Россошь'),
(507, 'Ростов'),
(508, 'Ростов-на-Дону'),
(509, 'Рубцовск'),
(510, 'Рузаевка'),
(511, 'Рыбинск'),
(512, 'Рыбное'),
(513, 'Ряжск'),
(514, 'Рязань'),
(515, 'Салават'),
(516, 'Салехард'),
(517, 'Сальск'),
(518, 'Самара'),
(519, 'Санкт-Петербург'),
(520, 'Саракташ'),
(521, 'Саранск'),
(522, 'Сарапул'),
(523, 'Саратов'),
(524, 'Сасово'),
(525, 'Сатка'),
(526, 'Саяногорск'),
(527, 'Саянск'),
(528, 'Светлоград'),
(529, 'Северобайкальск'),
(530, 'Северодвинск'),
(531, 'Североморск'),
(532, 'Северск'),
(533, 'Сегежа'),
(534, 'Селенгинск'),
(535, 'Семенов'),
(536, 'Семикаракорск'),
(537, 'Сергач'),
(538, 'Сергиев Посад'),
(539, 'Серов'),
(540, 'Серпухов'),
(541, 'Сестрорецк'),
(542, 'Сибай'),
(543, 'Сиверский'),
(544, 'Сигаево'),
(545, 'Скопин'),
(546, 'Славгород'),
(547, 'Славянск-на-Кубани'),
(548, 'Сланцы'),
(549, 'Слободской'),
(550, 'Слюдянка'),
(551, 'Смоленск'),
(552, 'Снежинск'),
(553, 'Снежногорск'),
(554, 'Собинка'),
(555, 'Советск'),
(556, 'Советск,Кировская область'),
(557, 'Советский'),
(558, 'Сокол'),
(559, 'Соликамск'),
(560, 'Солнечногорск'),
(561, 'Солнечногорский'),
(562, 'Соль-Илецк'),
(563, 'Сольцы'),
(564, 'Сорочинск'),
(565, 'Сортавала'),
(566, 'Сосновоборск'),
(567, 'Сосновский'),
(568, 'Сосновый Бор'),
(569, 'Сочи'),
(570, 'Ставрополь'),
(571, 'Старая Русса'),
(572, 'Старица'),
(573, 'Стародеревянковская станица'),
(574, 'Стародуб'),
(575, 'Старый Оскол'),
(576, 'Старый Петергоф'),
(577, 'Степное'),
(578, 'Стерлитамак'),
(579, 'Строитель'),
(580, 'Струнино'),
(581, 'Ступино'),
(582, 'Суворов'),
(583, 'Суджа'),
(584, 'Сургут'),
(585, 'Суровикино'),
(586, 'Суходол'),
(587, 'Сухой Лог'),
(588, 'Сызрань'),
(589, 'Сыктывкар'),
(590, 'Сысерть'),
(591, 'Таврическое'),
(592, 'Таганрог'),
(593, 'Тайга'),
(594, 'Тайшет'),
(595, 'Тамбов'),
(596, 'Тара'),
(597, 'Тбилисская'),
(598, 'Тверь'),
(599, 'Тейково'),
(600, 'Тельмана'),
(601, 'Темрюк'),
(602, 'Тимашевск'),
(603, 'Тихвин'),
(604, 'Тихорецк'),
(605, 'Тобольск'),
(606, 'Тогучин'),
(607, 'Тольятти'),
(608, 'Томск'),
(609, 'Топки'),
(610, 'Торжок'),
(611, 'Тосно'),
(612, 'Трехгорный'),
(613, 'Троицк Челябинскаяобласть'),
(614, 'Трубчевск'),
(615, 'Трудобеликовский хутор'),
(616, 'Туапсе'),
(617, 'Туймазы'),
(618, 'Тула'),
(619, 'Тутаев'),
(620, 'Тучково'),
(621, 'Тюкалинск'),
(622, 'Тюльган'),
(623, 'Тюмень'),
(624, 'Ува'),
(625, 'Уварово'),
(626, 'Углич'),
(627, 'Удомля'),
(628, 'Узловая'),
(629, 'Улан-Удэ'),
(630, 'Ульяновск'),
(631, 'Унеча'),
(632, 'Урай'),
(633, 'Урюпинск'),
(634, 'Усмань'),
(635, 'Усолье-Сибирское'),
(636, 'Усть-Илимск'),
(637, 'Усть-кут'),
(638, 'Усть-Лабинск'),
(639, 'Уфа'),
(640, 'Ухта'),
(641, 'Учалы'),
(642, 'Федяково'),
(643, 'Фролово'),
(644, 'Фрязино'),
(645, 'Фурманов'),
(646, 'Ханты-Мансийск'),
(647, 'Химки'),
(648, 'Чайковский'),
(649, 'Чалтырь'),
(650, 'Чапаевск'),
(651, 'Чаплыгин'),
(652, 'Чебаркуль'),
(653, 'Чебоксары'),
(654, 'Челябинск'),
(655, 'Чердаклы'),
(656, 'Черемхово'),
(657, 'Черепаново'),
(658, 'Череповец'),
(659, 'Черноголовка'),
(660, 'Черногорск'),
(661, 'Чернушка'),
(662, 'Черняховск'),
(663, 'Чистополь'),
(664, 'Чудово'),
(665, 'Чусовой'),
(666, 'Шадринск'),
(667, 'Шаркан'),
(668, 'Шарыпово'),
(669, 'Шарья'),
(670, 'Шатки'),
(671, 'Шатура'),
(672, 'Шахты'),
(673, 'Шебекино'),
(674, 'Шексна'),
(675, 'Шелехов'),
(676, 'Шира'),
(677, 'Шлиссельбург'),
(678, 'Шумерля'),
(679, 'Шуя'),
(680, 'Щекино'),
(681, 'Щелково'),
(682, 'Щигры'),
(683, 'Электросталь'),
(684, 'Энгельс'),
(685, 'Эртиль'),
(686, 'Югорск'),
(687, 'Южноуральск'),
(688, 'Юрга'),
(689, 'Юрьев-Польский'),
(690, 'Ялуторовск'),
(691, 'Ярково'),
(692, 'Ярославль'),
(693, 'Ярцево'),
(694, 'Ясный'),
(695, 'Яшкино');

-- --------------------------------------------------------

--
-- Table structure for table `goroda_draft`
--

CREATE TABLE `goroda_draft` (
  `id` int(11) NOT NULL,
  `gorod` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goroda_draft`
--

INSERT INTO `goroda_draft` (`id`, `gorod`) VALUES
(7, 'Абакан'),
(8, 'Абинск'),
(9, 'Адлер'),
(10, 'Азов'),
(11, 'Аксай'),
(12, 'Алапаевск'),
(13, 'Алатырь'),
(14, 'Алейск'),
(15, 'Александров'),
(16, 'Алексеевка'),
(17, 'Алексеевское'),
(18, 'Алексин'),
(19, 'Альметьевск'),
(20, 'Анапа'),
(21, 'Ангарск'),
(22, 'Андреевка'),
(23, 'Анжеро-Судженск'),
(24, 'Апатиты'),
(25, 'Апшеронск'),
(26, 'Аргаяш'),
(27, 'Арзамас'),
(28, 'Армавир'),
(29, 'Артемовский'),
(30, 'Архангельск'),
(31, 'Асбест'),
(32, 'Аскиз'),
(33, 'Астрахань'),
(34, 'Аткарск'),
(35, 'Ахтубинск'),
(36, 'Ачинск'),
(37, 'Аша'),
(38, 'Бавлы'),
(39, 'Балабаново'),
(40, 'Балаково'),
(41, 'Балахна'),
(42, 'Балашиха'),
(43, 'Балашов'),
(44, 'Балезино'),
(45, 'Балтаси'),
(46, 'Балтийск'),
(47, 'Барабинск'),
(48, 'Барнаул'),
(49, 'Барыш'),
(50, 'Батайск'),
(51, 'Башмаково'),
(52, 'Бежецк'),
(53, 'Безенчук'),
(54, 'Белая Калитва'),
(55, 'Белгород'),
(56, 'Белебей'),
(57, 'Белово'),
(58, 'Беломорск'),
(59, 'Белорецк'),
(60, 'Белореченск'),
(61, 'Белоярский'),
(62, 'Беляевка'),
(63, 'Бердск'),
(64, 'Березники'),
(65, 'Березовский'),
(66, 'Берёзовский'),
(67, 'Бийск'),
(68, 'Бирск'),
(69, 'Благодарный'),
(70, 'Бобров'),
(71, 'Богданович'),
(72, 'Богородск'),
(73, 'Богучар'),
(74, 'Бологое'),
(75, 'Болотное'),
(76, 'Бор'),
(77, 'Борисовка'),
(78, 'Борисоглебск'),
(79, 'Боровичи'),
(80, 'Боровск'),
(81, 'Бохан'),
(82, 'Братск'),
(83, 'Бронницы'),
(84, 'Брюховецкаястаница'),
(85, 'Брянск'),
(86, 'Бугульма'),
(87, 'Буденновск'),
(88, 'Бузулук'),
(89, 'Буинск'),
(90, 'Буй'),
(91, 'Бутурлиновка'),
(92, 'Вавож'),
(93, 'Валдай'),
(94, 'Великие Луки'),
(95, 'Великий Новгород'),
(96, 'Верещагино'),
(97, 'Верхний Уфалей'),
(98, 'Верхняя Пышма'),
(99, 'Видное'),
(100, 'Вичуга'),
(101, 'Владимир'),
(102, 'Волгоград'),
(103, 'Волгодонск'),
(104, 'Волгореченск'),
(105, 'Волжск'),
(106, 'Волжский'),
(107, 'Вологда'),
(108, 'Володарский'),
(109, 'Волоколамск'),
(110, 'Волосово'),
(111, 'Волхов'),
(112, 'Вольск'),
(113, 'Воронеж'),
(114, 'Воскресенск'),
(115, 'Воткинск'),
(116, 'Всеволожск'),
(117, 'Выборг'),
(118, 'Выкса'),
(119, 'Выселки'),
(120, 'Выселковский'),
(121, 'Вышний Волочек'),
(122, 'Вязники'),
(123, 'Вязьма'),
(124, 'Гаврилов-Ям'),
(125, 'Гагарин'),
(126, 'Гай'),
(127, 'Гатчина'),
(128, 'Геленджик'),
(129, 'Георгиевск'),
(130, 'Глазов'),
(131, 'Горно-Алтайск'),
(132, 'Городец'),
(133, 'Городище,Пензенскаяобласть'),
(134, 'Горячий Ключ'),
(135, 'Грязи'),
(136, 'Губаха'),
(137, 'Губкин'),
(138, 'Гулькевичи'),
(139, 'Гурьевск'),
(140, 'Гусев'),
(141, 'Гусь-Хрустальный'),
(142, 'Данков'),
(143, 'Десногорск'),
(144, 'Дзержинск'),
(145, 'Дзержинский'),
(146, 'Дивногорск'),
(147, 'Димитровград'),
(148, 'Динская станица'),
(149, 'Дмитров'),
(150, 'Добрянка'),
(151, 'Долгопрудный'),
(152, 'Домодедово'),
(153, 'Донецк'),
(154, 'Донское'),
(155, 'Донской'),
(156, 'Дубна'),
(157, 'Дюртюли'),
(158, 'Дядьковская станица'),
(159, 'Дятьково'),
(160, 'Егорьевск'),
(161, 'Ейск'),
(162, 'Екатеринбург'),
(163, 'Елабуга'),
(164, 'Елань'),
(165, 'Елец'),
(166, 'Еманжелинск'),
(167, 'Емельяново'),
(168, 'Ессентуки'),
(169, 'Ессентукская станица'),
(170, 'Ефремов'),
(171, 'Железноводск'),
(172, 'Железногорск,Красноярский край'),
(173, 'Железногорск,Курская область'),
(174, 'Железнодорожный'),
(175, 'Жигулевск'),
(176, 'Жирновск'),
(177, 'Жуковский'),
(178, 'Заводоуковск'),
(179, 'Заволжье'),
(180, 'Завьялово'),
(181, 'Заинск'),
(182, 'Заозерный'),
(183, 'Заозерск'),
(184, 'Заполярный'),
(185, 'Зарайск'),
(186, 'Заречный'),
(187, 'Заречный Свердловскаяобласть'),
(188, 'Заринск'),
(189, 'Звенигород'),
(190, 'Зеленогорск'),
(191, 'Зеленоград'),
(192, 'Зеленодольск'),
(193, 'Зеленокумск'),
(194, 'Зерноград'),
(195, 'Зима'),
(196, 'Златоуст'),
(197, 'Иваново'),
(198, 'Ивантеевка'),
(199, 'Ижевск'),
(200, 'Изобильный'),
(201, 'Икряное'),
(202, 'Илек'),
(203, 'Иловля'),
(204, 'Инжавино'),
(205, 'Инза'),
(206, 'Ипатово'),
(207, 'Ирбит'),
(208, 'Исилькуль'),
(209, 'Искитим'),
(210, 'Искитим'),
(211, 'Истра'),
(212, 'Ишим'),
(213, 'Ишимбай'),
(214, 'Йошкар-Ола'),
(215, 'Кавказская станица'),
(216, 'Казань'),
(217, 'Казьминское'),
(218, 'Калач'),
(219, 'Калач-на-Дону'),
(220, 'Калачинск'),
(221, 'Калининград'),
(222, 'Калининск'),
(223, 'Калуга'),
(224, 'Калязин'),
(225, 'Камбарка'),
(226, 'Каменка'),
(228, 'Каменск-Шахтинский'),
(229, 'Камень-на-Оби'),
(230, 'Камызяк'),
(231, 'Камышин'),
(233, 'Канаш'),
(234, 'Кандалакша'),
(235, 'Каневская станица'),
(236, 'Канск'),
(237, 'Карабаново'),
(238, 'Карасук'),
(239, 'Карачев'),
(240, 'Каргасок'),
(241, 'Карталы'),
(242, 'Касимов'),
(243, 'Касли'),
(244, 'Качканар'),
(245, 'Кашин'),
(246, 'Кашира'),
(247, 'Кемерово'),
(248, 'Кимовск'),
(249, 'Кимры'),
(250, 'Кингисепп'),
(251, 'Кинель'),
(252, 'Кинель-Черкассы'),
(253, 'Кинешма'),
(254, 'Киреевск'),
(255, 'Киржач'),
(256, 'Кириши'),
(257, 'Киров'),
(258, 'Киров,Калужская область'),
(259, 'Кировград'),
(260, 'Кирово-Чепецк'),
(261, 'Кировск'),
(262, 'Кировск,Ленинградская область'),
(263, 'Кирс'),
(264, 'Кирсанов'),
(265, 'Киселевск'),
(266, 'Кисловодск'),
(267, 'Климовск'),
(268, 'Клин'),
(269, 'Клинцы'),
(270, 'Ковров'),
(271, 'Ковылкино'),
(272, 'Козельск'),
(273, 'Козулька'),
(274, 'Кола'),
(275, 'Коломна'),
(276, 'Коломна-'),
(277, 'Колпашево'),
(278, 'Колпино'),
(279, 'Кольчугино'),
(280, 'Конаково'),
(281, 'Кондопога'),
(282, 'Копейск'),
(283, 'Кораблино'),
(284, 'Кореновск'),
(285, 'Коркино'),
(286, 'Королев'),
(287, 'Короча'),
(288, 'Костомукша'),
(289, 'Кострома'),
(290, 'Котельники'),
(291, 'Котельнич'),
(292, 'Котово'),
(293, 'Котовск'),
(294, 'Красноармейск'),
(295, 'Красногвардейское'),
(296, 'Красногорск'),
(297, 'Краснодар'),
(298, 'Красное Село'),
(299, 'Краснокамск'),
(300, 'Краснообск'),
(301, 'Красноуральск'),
(302, 'Красноуфимск'),
(303, 'Красноярск'),
(304, 'Красный Кут'),
(305, 'КрасныйЯр'),
(306, 'Кременки'),
(307, 'Кронштадт'),
(308, 'Кропоткин'),
(309, 'Крымск'),
(310, 'Кстово'),
(311, 'Кувандык'),
(312, 'Кудымкар'),
(313, 'Кузнецк'),
(314, 'Куйбышев'),
(315, 'Кулебаки'),
(316, 'Кумертау'),
(317, 'Кунгур'),
(319, 'Курганинск'),
(320, 'Курск'),
(321, 'Куртамыш'),
(322, 'Курчатов'),
(323, 'Кущевская станица'),
(324, 'Кыштым'),
(325, 'Кяхта'),
(326, 'Лабинск'),
(327, 'Ладожская станица'),
(328, 'Лазаревское'),
(329, 'Лангепас'),
(330, 'Лебедянь'),
(331, 'Ленинградская'),
(332, 'Лениногорск'),
(333, 'Ленинск-Кузнецкий'),
(334, 'Лесосибирск'),
(335, 'Ливны'),
(336, 'Лиман'),
(337, 'Липецк'),
(338, 'Лиски'),
(339, 'Лихославль'),
(340, 'Лобня'),
(341, 'Ломоносов'),
(342, 'Луга'),
(343, 'Луховицы'),
(344, 'Лысьва'),
(345, 'Лыткарино'),
(346, 'Люберцы'),
(347, 'Любинский'),
(348, 'Людиново'),
(349, 'Лянтор'),
(350, 'Магнитогорск'),
(351, 'Малоархангельск'),
(352, 'Малоярославец'),
(353, 'Маркса'),
(354, 'Марьяновка'),
(355, 'Матвеев Курган'),
(356, 'Мегион'),
(357, 'Медвежьегорск'),
(358, 'Медногорск'),
(359, 'Междуреченск'),
(360, 'Мелеуз'),
(361, 'Металлострой'),
(362, 'Миасс'),
(363, 'Миллерово'),
(364, 'Минеральные Воды'),
(365, 'Минусинск'),
(366, 'Мирный'),
(367, 'Михайлов'),
(368, 'Михайловка'),
(369, 'Михайловск'),
(370, 'Мичуринск'),
(371, 'Можайск'),
(372, 'Можга'),
(373, 'Мокроус'),
(374, 'Мокшан'),
(375, 'Мончегорск'),
(376, 'Морозовск'),
(377, 'Моршанск'),
(378, 'Москва'),
(379, 'Московский'),
(380, 'Мостовской'),
(381, 'Мурманск'),
(382, 'Муром'),
(383, 'Мценск'),
(384, 'Мыски'),
(385, 'Мытищи'),
(386, 'Набережные Челны'),
(387, 'Навашино'),
(388, 'Навля'),
(389, 'Надым'),
(390, 'Назарово'),
(391, 'Наро-Фоминск'),
(392, 'Невинномысск'),
(393, 'Нелидово'),
(394, 'Неман'),
(395, 'Нефтегорск'),
(396, 'Нефтекамск'),
(397, 'Нефтеюганск'),
(398, 'Нижневартовск'),
(399, 'Нижнекамск'),
(400, 'Нижнеудинск'),
(401, 'Нижний Ломов'),
(402, 'Нижний Новгород'),
(403, 'Нижний Тагил'),
(404, 'Никель'),
(405, 'Николаевск'),
(406, 'Никольск'),
(407, 'Новоалександровск'),
(408, 'Новоалтайск'),
(409, 'Новоаннинский'),
(410, 'Нововоронеж'),
(411, 'Нововятск'),
(412, 'Новодвинск'),
(413, 'Новое Девяткино'),
(414, 'Новозыбков'),
(415, 'Новокубанск'),
(416, 'Новокузнецк,Кемеровская область'),
(417, 'Новокуйбышевск'),
(418, 'Новомичуринск'),
(419, 'Новомосковск'),
(420, 'Новопавловск'),
(421, 'Новороссийск'),
(422, 'Новосергиевка'),
(423, 'Новосибирск'),
(424, 'Новосиньково'),
(425, 'Новотроицк'),
(426, 'Новоузенск,Саратовская область'),
(427, 'Новоульяновск'),
(428, 'Новочебоксарск'),
(429, 'Новочеркасск'),
(430, 'Новошахтинск'),
(431, 'НовыйОскол'),
(432, 'Ногинск'),
(433, 'Ноябрьск'),
(434, 'Нурлат'),
(435, 'Нягань'),
(436, 'Няндома'),
(437, 'Обнинск'),
(438, 'Обоянь'),
(439, 'Одинцово'),
(440, 'Озёрск'),
(441, 'Озеры'),
(442, 'Октябрьск'),
(443, 'Октябрьский'),
(444, 'Октябрьское'),
(445, 'Окуловка'),
(446, 'Оленегорск'),
(447, 'Олонец'),
(448, 'Омск'),
(449, 'Омутнинск'),
(450, 'Онега'),
(451, 'Ордынское'),
(452, 'Орел'),
(453, 'Оренбург'),
(454, 'Орехово-Зуево'),
(455, 'Орск'),
(456, 'Осинники'),
(457, 'Осташков'),
(458, 'Острогожск'),
(459, 'Отрадный'),
(460, 'Павлово'),
(461, 'Павловск'),
(462, 'Павловская'),
(463, 'Павловский Посад'),
(464, 'Палласовка'),
(465, 'Пашино'),
(466, 'Пенза'),
(467, 'Первомайский'),
(468, 'Первоуральск'),
(469, 'Переславль-Залесский'),
(470, 'Пермь'),
(471, 'Петергоф'),
(472, 'Петровск'),
(473, 'Петрозаводск'),
(474, 'Питкяранта'),
(475, 'Поворино'),
(476, 'Погар'),
(477, 'Подольск'),
(478, 'Пойковский'),
(479, 'Покров'),
(480, 'Покровское'),
(481, 'Полевской'),
(482, 'Полтавская станица'),
(483, 'Полярные Зори'),
(484, 'Похвистнево'),
(485, 'Почеп'),
(486, 'Починки'),
(487, 'Починок'),
(488, 'Приволжск'),
(489, 'Приморско-Ахтарск'),
(490, 'Приозерск'),
(491, 'Прокопьевск'),
(492, 'Промышленная(пгт)'),
(493, 'Псков'),
(494, 'Пугачев'),
(495, 'Пушкин'),
(496, 'Пушкино'),
(497, 'Пышма'),
(498, 'Пятигорск'),
(499, 'Радужный'),
(500, 'Раменское'),
(501, 'Рассказово'),
(502, 'Реж'),
(503, 'Реутов'),
(504, 'Ржев'),
(505, 'Рославль'),
(506, 'Россошь'),
(507, 'Ростов'),
(508, 'Ростов-на-Дону'),
(509, 'Рубцовск'),
(510, 'Рузаевка'),
(511, 'Рыбинск'),
(512, 'Рыбное'),
(513, 'Ряжск'),
(514, 'Рязань'),
(515, 'Салават'),
(516, 'Салехард'),
(517, 'Сальск'),
(518, 'Самара'),
(519, 'Санкт-Петербург'),
(520, 'Саракташ'),
(521, 'Саранск'),
(522, 'Сарапул'),
(523, 'Саратов'),
(524, 'Сасово'),
(525, 'Сатка'),
(526, 'Саяногорск'),
(527, 'Саянск'),
(528, 'Светлоград'),
(529, 'Северобайкальск'),
(530, 'Северодвинск'),
(531, 'Североморск'),
(532, 'Северск'),
(533, 'Сегежа'),
(534, 'Селенгинск'),
(535, 'Семенов'),
(536, 'Семикаракорск'),
(537, 'Сергач'),
(538, 'Сергиев Посад'),
(539, 'Серов'),
(540, 'Серпухов'),
(541, 'Сестрорецк'),
(542, 'Сибай'),
(543, 'Сиверский'),
(544, 'Сигаево'),
(545, 'Скопин'),
(546, 'Славгород'),
(547, 'Славянск-на-Кубани'),
(548, 'Сланцы'),
(549, 'Слободской'),
(550, 'Слюдянка'),
(551, 'Смоленск'),
(552, 'Снежинск'),
(553, 'Снежногорск'),
(554, 'Собинка'),
(555, 'Советск'),
(556, 'Советск,Кировская область'),
(557, 'Советский'),
(558, 'Сокол'),
(559, 'Соликамск'),
(560, 'Солнечногорск'),
(561, 'Солнечногорский'),
(562, 'Соль-Илецк'),
(563, 'Сольцы'),
(564, 'Сорочинск'),
(565, 'Сортавала'),
(566, 'Сосновоборск'),
(567, 'Сосновский'),
(568, 'Сосновый Бор'),
(569, 'Сочи'),
(570, 'Ставрополь'),
(571, 'Старая Русса'),
(572, 'Старица'),
(573, 'Стародеревянковская станица'),
(574, 'Стародуб'),
(575, 'Старый Оскол'),
(576, 'Старый Петергоф'),
(577, 'Степное'),
(578, 'Стерлитамак'),
(579, 'Строитель'),
(580, 'Струнино'),
(581, 'Ступино'),
(582, 'Суворов'),
(583, 'Суджа'),
(584, 'Сургут'),
(585, 'Суровикино'),
(586, 'Суходол'),
(587, 'Сухой Лог'),
(588, 'Сызрань'),
(589, 'Сыктывкар'),
(590, 'Сысерть'),
(591, 'Таврическое'),
(592, 'Таганрог'),
(593, 'Тайга'),
(594, 'Тайшет'),
(595, 'Тамбов'),
(596, 'Тара'),
(597, 'Тбилисская'),
(598, 'Тверь'),
(599, 'Тейково'),
(600, 'Тельмана'),
(601, 'Темрюк'),
(602, 'Тимашевск'),
(603, 'Тихвин'),
(604, 'Тихорецк'),
(605, 'Тобольск'),
(606, 'Тогучин'),
(607, 'Тольятти'),
(608, 'Томск'),
(609, 'Топки'),
(610, 'Торжок'),
(611, 'Тосно'),
(612, 'Трехгорный'),
(613, 'Троицк Челябинскаяобласть'),
(614, 'Трубчевск'),
(615, 'Трудобеликовский хутор'),
(616, 'Туапсе'),
(617, 'Туймазы'),
(618, 'Тула'),
(619, 'Тутаев'),
(620, 'Тучково'),
(621, 'Тюкалинск'),
(622, 'Тюльган'),
(623, 'Тюмень'),
(624, 'Ува'),
(625, 'Уварово'),
(626, 'Углич'),
(627, 'Удомля'),
(628, 'Узловая'),
(629, 'Улан-Удэ'),
(630, 'Ульяновск'),
(631, 'Унеча'),
(632, 'Урай'),
(633, 'Урюпинск'),
(634, 'Усмань'),
(635, 'Усолье-Сибирское'),
(636, 'Усть-Илимск'),
(637, 'Усть-кут'),
(638, 'Усть-Лабинск'),
(639, 'Уфа'),
(640, 'Ухта'),
(641, 'Учалы'),
(642, 'Федяково'),
(643, 'Фролово'),
(644, 'Фрязино'),
(645, 'Фурманов'),
(646, 'Ханты-Мансийск'),
(647, 'Химки'),
(648, 'Чайковский'),
(649, 'Чалтырь'),
(650, 'Чапаевск'),
(651, 'Чаплыгин'),
(652, 'Чебаркуль'),
(653, 'Чебоксары'),
(654, 'Челябинск'),
(655, 'Чердаклы'),
(656, 'Черемхово'),
(657, 'Черепаново'),
(658, 'Череповец'),
(659, 'Черноголовка'),
(660, 'Черногорск'),
(661, 'Чернушка'),
(662, 'Черняховск'),
(663, 'Чистополь'),
(664, 'Чудово'),
(665, 'Чусовой'),
(666, 'Шадринск'),
(667, 'Шаркан'),
(668, 'Шарыпово'),
(669, 'Шарья'),
(670, 'Шатки'),
(671, 'Шатура'),
(672, 'Шахты'),
(673, 'Шебекино'),
(674, 'Шексна'),
(675, 'Шелехов'),
(676, 'Шира'),
(677, 'Шлиссельбург'),
(678, 'Шумерля'),
(679, 'Шуя'),
(680, 'Щекино'),
(681, 'Щелково'),
(682, 'Щигры'),
(683, 'Электросталь'),
(684, 'Энгельс'),
(685, 'Эртиль'),
(686, 'Югорск'),
(687, 'Южноуральск'),
(688, 'Юрга'),
(689, 'Юрьев-Польский'),
(690, 'Ялуторовск'),
(691, 'Ярково'),
(692, 'Ярославль'),
(693, 'Ярцево'),
(694, 'Ясный'),
(695, 'Яшкино');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `gorod_id` int(11) NOT NULL,
  `office_feature_id` int(11) NOT NULL,
  `adress` char(255) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `location` char(255) NOT NULL,
  `mode` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `gorod_id`, `office_feature_id`, `adress`, `comment`, `location`, `mode`) VALUES
(49, 227, 5, 'г. Каменск-Уральский, ул. Каменская, д. 87', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00, Сб: 09:00-13:00, 14:00-18:00, Вс: выходной день'),
(50, 227, 5, 'г. Каменск-Уральский, ул. Челябинская, д. 43', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00, Сб: 09:00-13:00, 14:00-18:00, Вс: выходной день'),
(51, 227, 2, 'г. Каменск-Уральский, ул. Алюминиевая, д. 74', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00, Сб: 09:00-13:00, 14:00-18:00, Вс: выходной день'),
(52, 227, 2, 'г. Каменск-Уральский, пр-т Победы, д. 5', '', 'Возле Площади Ленинского комсомола.', 'Пн-Пт: 10:00-20:00, Сб-Вс: выходной день'),
(53, 227, 4, 'г. Каменск-Уральский, пр-т Победы, д. 11А', 'Вниманию клиентов! Стойка продаж по адресу г. Каменск-Уральский, пр-т Победы, д. 11А не работает по техническим причинам до 26.09.2016.', 'ТЦ "Октябрьский", 1 этаж, за эскалатором', 'Пн-Пт: 10:00-19:00, Сб-Вс: 12:00-18:00'),
(54, 227, 5, 'г. Каменск-Уральский, ул. Мичурина, д. 38А', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00, Сб: 09:00-13:00, 14:00-18:00, Вс: выходной день'),
(55, 227, 5, 'г. Каменск-Уральский, ул. Алюминиевая, д. 14', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00, Сб: 09:00-13:00, 14:00-18:00, Вс: выходной день'),
(56, 227, 5, 'г. Каменск-Уральский, ул. Авиаторов, д. 7', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00, Сб: 09:00-13:00, 14:00-18:00, Вс: выходной день'),
(57, 227, 5, 'г. Каменск-Уральский, ул. Карла Маркса, д. 71', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00, Сб: 09:00-13:00, 14:00-18:00, Вс: выходной день'),
(58, 232, 2, 'г. Камышлов, ул. Карла Маркса, д. 59', '', 'Возле Центральной площади.', 'Пн-Пт: 10:00-19:00, Сб-Вс: выходной день'),
(59, 232, 5, 'г. Камышлов, ул. Карла Маркса, д. 59', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-20:00, Сб: 09:00-18:00, Вс: 09:00-14:00'),
(60, 232, 5, 'г. Камышлов, ул. Молодогвардейская, д. 10', '', 'В отделении «Почты России»', 'Пн-Пт: 08:00-13:00, 14:00-20:00; Сб: 09:00-13:00, 14:00-18:00; Вс: выходной день'),
(61, 318, 3, 'г. Курган, ул. Коли Мяготина, д. 126', '', 'На 1-ом этаже жилого здания, на пересечении улиц К. Мяготина и Ленина.', 'Пн-Пт: 09:00-21:00, Сб-Вс: 10:00-17:00'),
(62, 318, 2, 'г. Курган, ул. Гоголя, д. 44', '', 'Центральная площадь. Администрация города.', 'Пн-Пт: 10:00-19:00, Сб-Вс: выходной день'),
(63, 318, 1, 'г. Курган, пр-т Машиностроителей, д. 1А', 'Здесь вы можете оформить карту «Почтовый Экспресс» или предварительно одобренный кредит на индивидуальных условиях', 'Лазурит в ТЦ Алые Паруса', 'Пн-Вс: 10:00-20:00'),
(64, 318, 1, 'г. Курган, ул. Куйбышева, д. 74А', 'Здесь вы можете оформить карту «Почтовый Экспресс» или предварительно одобренный кредит на индивидуальных условиях', 'ДНС', 'Пн-Вс: 10:00-21:00'),
(65, 318, 1, 'г. Курган, ул. Коли Мяготина, д. 56', 'Здесь вы можете оформить карту «Почтовый Экспресс» или предварительно одобренный кредит на индивидуальных условиях', 'ДНС', 'Пн-Вс: 10:00-22:00');

-- --------------------------------------------------------

--
-- Table structure for table `office_feature`
--

CREATE TABLE `office_feature` (
  `id` int(11) NOT NULL,
  `office_feature` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office_feature`
--

INSERT INTO `office_feature` (`id`, `office_feature`) VALUES
(1, '«Почтовый Экспресс» и кредиты на индивидуальных условиях в точках партнеров'),
(2, 'Клиентский центр в отделении Почты России (сотрудник Почты России)'),
(3, 'Клиентский центр'),
(4, 'Стойка продаж'),
(5, 'Клиентский центр в отделении Почты России (сотрудник Почты России)');

-- --------------------------------------------------------

--
-- Table structure for table `services_atm`
--

CREATE TABLE `services_atm` (
  `id` int(11) NOT NULL,
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services_atm`
--

INSERT INTO `services_atm` (`id`, `service`) VALUES
(1, 'прием наличных'),
(2, 'выдача наличных'),
(3, 'прием/выдача наличных');

-- --------------------------------------------------------

--
-- Table structure for table `whose_atm`
--

CREATE TABLE `whose_atm` (
  `id` int(2) NOT NULL,
  `bank_name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `whose_atm`
--

INSERT INTO `whose_atm` (`id`, `bank_name`) VALUES
(1, 'Банкомат «Почта Банка»'),
(2, 'Банкомат ВТБ24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goroda`
--
ALTER TABLE `goroda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goroda_draft`
--
ALTER TABLE `goroda_draft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_feature`
--
ALTER TABLE `office_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_atm`
--
ALTER TABLE `services_atm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whose_atm`
--
ALTER TABLE `whose_atm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `goroda`
--
ALTER TABLE `goroda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;
--
-- AUTO_INCREMENT for table `goroda_draft`
--
ALTER TABLE `goroda_draft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;
--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `office_feature`
--
ALTER TABLE `office_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `services_atm`
--
ALTER TABLE `services_atm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `whose_atm`
--
ALTER TABLE `whose_atm`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;