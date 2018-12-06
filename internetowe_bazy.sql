-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 06 Gru 2018, 13:17
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `praca_inzynierska`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `graphic`
--

CREATE TABLE `graphic` (
  `users_id` int(11) NOT NULL,
  `Date_From` datetime NOT NULL,
  `Date_To` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `phone_number` int(9) NOT NULL,
  `mail` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `houses`
--

INSERT INTO `houses` (`id`, `name`, `address`, `phone_number`, `mail`) VALUES
(1, 'drugi', 'Siemiradzkiego 19', 0, ''),
(24, 'Prolank', 'asfanjfna', 111111111, 'mdsfnslk@gmail.com'),
(25, 'jolpjolp', 'ul. trzebnicka', 876545678, 'sdfghjkjtrdn@gmail.com'),
(27, 'pierwszy', 'na polance 6b mieszkania 20', 577412810, 'asaromaro@gmail.com'),
(28, 'dsadsa', 'dsadas', 123123321, 'asaromaro42@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `list_of_order`
--

CREATE TABLE `list_of_order` (
  `id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `room` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `equipment` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `priority` int(1) NOT NULL,
  `description` varchar(350) COLLATE utf8_polish_ci NOT NULL,
  `price` int(11) NOT NULL,
  `effort_hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `list_of_order`
--

INSERT INTO `list_of_order` (`id`, `house_id`, `room`, `equipment`, `status`, `user_id`, `priority`, `description`, `price`, `effort_hours`) VALUES
(1, 27, 'sypialnia', 'zarowka 40', 1, 31, 1, '', 32, 32),
(2, 27, 'lazienka', 'zarowka 20', 0, 27, 0, 'zepsula sie obok kosza na pranie', 0, 0),
(3, 27, 'a', 'b', 0, 27, 0, 'c', 100, 150),
(4, 27, 'toaleta', 'papier', 0, 24, 2, 'brak papieru', 0, 0),
(5, 27, 'pokój joli', 'żarówka', 0, 27, 2, 'spaliła się', 0, 0),
(7, 27, 'fs', 'fdz', 2, -27, 1, 'fdxfx', 0, 0),
(8, 27, 'pokoj arka', 'biurko', 0, -27, 1, 'rozlecialo sie', 0, 0),
(9, 27, 'pokoj joli', 'szafka', 2, -27, 0, 'szuflada nie dziala', 0, 0),
(10, 27, 'pokoj stasia', 'krzeslo obrotowe', 3, -27, 0, 'nie ma kolka', 0, 0),
(11, 27, 'd', 'd', 2, -27, 0, 'd', 0, 0),
(12, 27, 'd', 'd', 2, -27, 0, 'd', 0, 0),
(13, 27, 'asd', 'dsa', 3, 0, 0, 'dsa', 0, 0),
(15, 27, 'd', 'd', 3, -27, 0, 'd', 0, 0),
(16, 27, 'q', 'q', 0, -27, 0, '', 42, 423),
(17, 27, 'd', 'd', 2, -27, 0, 'w', 0, 0),
(18, 27, 'w', 'q', 2, 31, 0, 'a', 0, 0),
(19, 27, 'd', 'q', 0, -27, 0, 's', 0, 0),
(20, 27, 'wqfr', 'dsad', 1, -27, 0, 'dsada', 0, 0),
(21, 27, 'dwq', 'dsa', 0, -27, 0, 'dwqdq', 0, 0),
(27, 27, 'a', 'b', 0, -27, 0, 'c', 0, 0),
(28, 27, 'a', 'b', 0, -27, 0, 'c', 0, 0),
(29, 27, 'a', 'b', 0, -27, 0, 'c', 0, 0),
(30, 27, 'a', 'b', 0, -27, 0, 'c', 0, 0),
(32, 27, 'a', 'x', 0, 27, 0, 'd', 0, 0),
(33, 27, 'a', 'x', 0, 27, 0, 'd', 0, 0),
(34, 27, 'a', 'x', 0, 27, 0, 'd', 0, 0),
(35, 27, 'a', 'x', 0, 27, 0, 'd', 0, 0),
(36, 27, 'a', 'x', 0, 27, 0, 'd', 2, 0),
(37, 27, 'a', 'x', 0, 27, 0, 'd', 0, 0),
(41, 27, 'a a a', ' a a a', 0, -27, 0, ' a a a', 0, 0),
(42, 27, 'd', 'w', 0, -27, 0, 'q', 0, 0),
(43, 27, 'a', 'b', 0, 24, 0, 'c', 0, 0),
(44, 27, 'pokój stasia', 'nie wiem', 3, 27, 0, 'totalnie', 21, 0),
(45, 27, 'pokój', 'coś', 0, 24, 0, 'fsda', 0, 0),
(46, 27, 'ó', 'ł', 2, -27, 0, 'ł', 0, 0),
(47, 27, 'żżżż', 'óóó', 2, -27, 0, 'łłł', 0, 0),
(48, 27, 'coś', 'coś', 0, 31, 1, 'coś', 32, 0),
(49, 27, 'dsa', 'dsa', 0, -27, 0, 'das', 42, 432),
(50, 1, 'bbb', 'dfd', 1, 1, 2, 'veevvv', 10, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `room_type` varchar(11) COLLATE utf8_polish_ci NOT NULL,
  `item_name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `number_of_requests` int(11) NOT NULL,
  `item_weight` int(1) NOT NULL,
  `item_price` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `storage`
--

INSERT INTO `storage` (`id`, `house_id`, `room_type`, `item_name`, `item_quantity`, `number_of_requests`, `item_weight`, `item_price`) VALUES
(1, 27, 'kuchnia', 'papier toaletowy', 1, 0, 0, 10),
(4, 27, 'kichnia', 'nwm', 4, 54, 0, 4),
(10, 27, '2', 'dsad', 1, 4, 0, 2134),
(16, 27, '2', 'żżż', 2, 2, 0, 234),
(22, 27, 'łłł', 'óóó', 1, 2, 0, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `store_name` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `store_address` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `store_phone_number` int(9) NOT NULL,
  `store_working_hours` varchar(200) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `houses_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `surname` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `birth_date` date NOT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `number_of_completed_works` int(11) NOT NULL,
  `admin_status` tinyint(1) NOT NULL,
  `purchases` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `user_password`, `houses_id`, `name`, `surname`, `birth_date`, `phone_number`, `number_of_completed_works`, `admin_status`, `purchases`) VALUES
(-27, 'none@gmail.com', 'none1', 27, 'nonex', 'none', '2018-10-23', 999999999, 0, 0, 0),
(1, 'test@gmail.com', '1', 1, '', '', '1999-11-11', 0, 0, 0, 0),
(2, 'test2@gmail.com', '1', 1, '', '', '2000-01-01', 1, 0, 0, 0),
(3, 'test3@gmail.com', '$2y$10$A2MTxuDUPXPTiZUJoFG5Z.bFsc5vGZvxRUdTKU6ZPth5ZyOriIdlW', 1, 'name', 'surname', '2001-12-10', 11, 0, 0, 0),
(21, 'mdsfdsanslk@gmail.com', '$2y$10$iPlnBdSfHbbN3/Pz.tYtOuol4oiopdS69qdCoBEKU/apOOJWMsWgS', 24, 'arek', 'Sokolowski', '2001-02-03', 222222222, 0, 1, 0),
(22, 'sdfdfgkm@gmail.com', '$2y$10$nO4NMm9ws4RAu7oMKXsI2O7Tj1Tj/94goZ14PTojAZIDH.izja0kC', 25, 'Jolp', 'Jrub', '2000-02-11', 98789876, 0, 1, 0),
(24, '230435@student.pwr.edu.pl', '$2y$10$83/mqs29d0WnrdzjynoFDuepj5VF1uZ2p5P/ny4y2Kk7yJc/eTGFa', 27, 'Arkadiusz', 'Sokolowski', '1996-11-16', 577412810, 0, 1, 0),
(27, 'jolp', '$2y$10$83/mqs29d0WnrdzjynoFDuepj5VF1uZ2p5P/ny4y2Kk7yJc/eTGFa', 27, 'Jolanta', 'Dybczak', '1997-01-19', 517432107, 0, 3, 0),
(31, 'stas@gmail.com', '$2y$10$83/mqs29d0WnrdzjynoFDuepj5VF1uZ2p5P/ny4y2Kk7yJc/eTGFa', 27, 'Stanisław', 'Sokołowski', '2018-06-25', 111111111, 0, 1, 0),
(39, 'asaromaro42231@gmail.com', '$2y$10$EA5AIP9YflmC.cSF2lgcRuC8n0sNe7K8yojtTjNLBXPx62t5LzOo2', 28, 'Arek', 'Sokolowski', '2006-08-11', 123124321, 0, 1, 0),
(40, 'daniella.charlen@onet.eu', '$2y$10$Pp5FkXGWvQbKYl.v9WzyQOccprSEWxCPXu3xaw9pDjPb2yg1AUQQW', 27, 'Jolanta', 'Dybczak', '1997-01-19', 517432108, 0, 1, 0),
(41, 'ania.jelonek@onet.pl', '$2y$10$NDA7CvOysPUqHhggbO5lBOjToh16jNiSV1H97nMMoSGlcP72ppdZi', 1, 'Ania', 'Jelonek', '2009-12-11', 697446509, 0, 1, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `graphic`
--
ALTER TABLE `graphic`
  ADD KEY `users_id` (`users_id`);

--
-- Indeksy dla tabeli `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `list_of_order`
--
ALTER TABLE `list_of_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `house_id` (`house_id`) USING BTREE;

--
-- Indeksy dla tabeli `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dormitory_id` (`house_id`);

--
-- Indeksy dla tabeli `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_phone_number` (`store_phone_number`),
  ADD KEY `dormitory_id` (`dormitory_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `phone_number_2` (`phone_number`),
  ADD KEY `dormitory_id` (`houses_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `list_of_order`
--
ALTER TABLE `list_of_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
