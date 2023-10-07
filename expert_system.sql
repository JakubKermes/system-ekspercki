-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Paź 2023, 15:46
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `expert_system`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cars`
--

CREATE TABLE `cars` (
  `Id` int(11) NOT NULL,
  `Make` tinytext NOT NULL,
  `Model` tinytext NOT NULL,
  `Year` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Handling` int(11) NOT NULL,
  `Speed` int(11) NOT NULL,
  `Comfort` int(11) NOT NULL,
  `Looks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `cars`
--

INSERT INTO `cars` (`Id`, `Make`, `Model`, `Year`, `Price`, `Handling`, `Speed`, `Comfort`, `Looks`) VALUES
(2, 'Toyota', 'Avensis', 2007, 15000, 7, 9, 11, 6),
(3, 'BMW', 'E60', 2008, 20000, 9, 7, 9, 10),
(4, 'Toyota', 'Corolla', 2021, 75000, 7, 6, 8, 7),
(5, 'BMW', 'M3', 2022, 290000, 9, 9, 8, 9),
(6, 'Mercedes', 'C-Class', 2020, 240000, 8, 8, 9, 9),
(7, 'Audi', 'A4', 2023, 200000, 8, 8, 8, 8),
(8, 'Ford', 'Mustang', 2019, 180000, 9, 9, 6, 9),
(9, 'Honda', 'Civic', 2021, 90000, 7, 7, 8, 7),
(10, 'Toyota', 'Corolla', 2021, 75000, 7, 6, 8, 7),
(11, 'BMW', 'M3', 2022, 290000, 9, 9, 8, 9),
(12, 'Mercedes', 'C-Class', 2020, 240000, 8, 8, 9, 9),
(13, 'Audi', 'A4', 2023, 200000, 8, 8, 8, 8),
(14, 'Ford', 'Mustang', 2019, 180000, 9, 9, 6, 9),
(15, 'Honda', 'Civic', 2021, 90000, 7, 7, 8, 7),
(16, 'Mazda', '6', 2003, 4500, 5, 6, 4, 4),
(17, 'Toyota', 'Yaris', 2005, 6000, 12, 3, 4, 3),
(18, 'Fiat', '126p', 1976, 4000, 2, 1, 1, 8),
(19, 'Deawoo', 'Lanos', 1999, 5500, 4, 3, 4, 3),
(20, 'Opel', 'Astra', 1996, 2500, 5, 3, 5, 3),
(21, 'Opel', 'Zafira', 2001, 4000, 6, 5, 7, 5),
(22, 'Alfa Romeo', '159', 2010, 12000, 9, 12, 9, 12),
(23, 'Alfa Romeo', '156', 2001, 4500, 7, 7, 5, 7),
(24, 'Volkswagen', 'Polo', 2012, 20000, 9, 7, 10, 9),
(25, 'Skoda', 'Octavia', 2020, 50000, 11, 9, 12, 12),
(26, 'Bugatti', 'Veyron', 2012, 10000000, 15, 15, 12, 14),
(27, 'Ferrari', 'F40', 1992, 12000000, 14, 13, 6, 15);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cars`
--
ALTER TABLE `cars`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
