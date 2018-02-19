-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Lut 2018, 10:50
-- Wersja serwera: 10.1.30-MariaDB
-- Wersja PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `javaee`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cars`
--

CREATE TABLE `cars` (
  `ID` int(11) NOT NULL,
  `IDusers` int(11) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Year` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `cars`
--

INSERT INTO `cars` (`ID`, `IDusers`, `Model`, `Name`, `Year`, `Price`, `Description`, `Link`) VALUES
(1, 1, 'Ford', 'Fiesta', 1994, 5000, 'Ford', 'http://www.fordeumedia-e.ford.com/nas/gforcenaslive/pol/00m/yyj/images/resize340xpol00myyjjd3jef(a)(a)jke_1_0.png'),
(2, 2, 'Audi', 'B3', 1994, 4100, 'audi b3', 'http://bi.gazeta.pl/im/1/9334/z9334781Q,Audi-80--B3-.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`ID`, `Name`, `Mail`, `Password`, `Phone`) VALUES
(1, 'Rafal Polanin', 'milkersopol@gmail.com', '1234', 543123421),
(2, 'Jan Kowalski', 'test@gmail.com', '1234', 817542954);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
