-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Wrz 12, 2023 at 06:37 PM
-- Wersja serwera: 10.6.15-MariaDB-cll-lve
-- Wersja PHP: 8.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wolek_portfolio`
--
CREATE DATABASE IF NOT EXISTS `wolek_portfolio` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `wolek_portfolio`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `o_mnie`
--

CREATE TABLE `o_mnie` (
  `opis` text NOT NULL,
  `zdj` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `o_mnie`
--

INSERT INTO `o_mnie` (`opis`, `zdj`, `id`) VALUES
('Mam na imię Mateusz, jestem uczniem 3 klasy technikum na profilu technik programista. Moimi pasjami jeste granie w gry komputerowe, bieganie, kolekcjonowanie butów.', 'image0.jpeg', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projekty`
--

CREATE TABLE `projekty` (
  `id_proj` int(11) NOT NULL,
  `opis_p` text NOT NULL,
  `zdj_p` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `projekty`
--

INSERT INTO `projekty` (`id_proj`, `opis_p`, `zdj_p`) VALUES
(1, 'Jak dotąd z większych projektów zrobiłem jeden w swoim życiu, był to projekt szkolny o nazwie \"NeckBook\", jest to serwis społecznościowy oparty na dodawaniu oraz komentowaniu postów przez użytkowników.', 'strona.PNG');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `o_mnie`
--
ALTER TABLE `o_mnie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `projekty`
--
ALTER TABLE `projekty`
  ADD PRIMARY KEY (`id_proj`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `o_mnie`
--
ALTER TABLE `o_mnie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projekty`
--
ALTER TABLE `projekty`
  MODIFY `id_proj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
