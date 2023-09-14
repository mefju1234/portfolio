-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 14, 2023 at 10:15 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `login`
--

CREATE TABLE `login` (
  `id_a` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `o_mnie`
--

CREATE TABLE `o_mnie` (
  `opis` text NOT NULL,
  `zdj` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `o_mnie`
--

INSERT INTO `o_mnie` (`opis`, `zdj`, `id`) VALUES
('Mam na imię Mateusz, jestem uczniem 3 klasy technikum na profilu technik programista. Moimi pasjami jeste granie w gry komputerowe, bieganie, kolekcjonowanie butów oraz motoryzacja.', 'image0.jpeg', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projekty`
--

CREATE TABLE `projekty` (
  `id_proj` int(11) NOT NULL,
  `opis_p` text NOT NULL,
  `zdj_p` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `projekty`
--

INSERT INTO `projekty` (`id_proj`, `opis_p`, `zdj_p`) VALUES
(1, 'Jak dotąd z większych projektów zrobiłem jeden w swoim życiu, był to projekt szkolny o nazwie \"NeckBook\", jest to serwis społecznościowy oparty na dodawaniu oraz komentowaniu postów przez użytkowników.', 'strona.PNG');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiej`
--

CREATE TABLE `umiej` (
  `id_s` int(11) NOT NULL,
  `wartosc` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `umiej`
--

INSERT INTO `umiej` (`id_s`, `wartosc`, `name`) VALUES
(1, 90, 'HTML'),
(2, 70, 'CSS'),
(3, 45, 'PHP\r\n'),
(4, 25, 'c#'),
(5, 5, 'JS'),
(7, 25, 'C++');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_a`);

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
-- Indeksy dla tabeli `umiej`
--
ALTER TABLE `umiej`
  ADD PRIMARY KEY (`id_s`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_a` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- AUTO_INCREMENT for table `umiej`
--
ALTER TABLE `umiej`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
