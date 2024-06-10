-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Cze 2021, 13:59
-- Wersja serwera: 5.5.39
-- Wersja PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `inwentaryzacja`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE IF NOT EXISTS `pracownicy` (
  `id` int(11) DEFAULT NULL,
  `nazwisko` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL,
  `imie` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `nazwisko`, `imie`) VALUES
(1, 'Kowalski', 'Andrzej'),
(2, 'Nowak', 'Marcin'),
(3, 'Wiśniewska', 'Agata'),
(4, 'Anna ', 'Wąs');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprzet`
--

CREATE TABLE IF NOT EXISTS `sprzet` (
`id` int(11) NOT NULL,
  `nazwa` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `data_zakupu` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `sprzet`
--

INSERT INTO `sprzet` (`id`, `nazwa`, `data_zakupu`) VALUES
(1, 'Drukarka', '2021-05-11'),
(2, 'Komputer1', '2021-06-01'),
(3, 'Komputer2', '2021-06-01'),
(4, 'Telefon Samsung', '2021-06-09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydania`
--

CREATE TABLE IF NOT EXISTS `wydania` (
`wydania_id` int(11) NOT NULL,
  `pracownik_id` int(11) NOT NULL,
  `data_wydania` date NOT NULL,
  `sprzet_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `wydania`
--

INSERT INTO `wydania` (`wydania_id`, `pracownik_id`, `data_wydania`, `sprzet_id`) VALUES
(1, 1, '2021-06-11', 1),
(2, 2, '2021-06-07', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zwroty`
--

CREATE TABLE IF NOT EXISTS `zwroty` (
  `zwrot_id` int(11) NOT NULL,
  `sprzet_id` int(11) NOT NULL,
  `pracownik_id` int(11) NOT NULL,
  `wydanie_id` int(11) NOT NULL,
  `data_zwrotu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zwroty`
--

INSERT INTO `zwroty` (`zwrot_id`, `sprzet_id`, `pracownik_id`, `wydanie_id`, `data_zwrotu`) VALUES
(1, 2, 2, 2, '2021-06-07');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `sprzet`
--
ALTER TABLE `sprzet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wydania`
--
ALTER TABLE `wydania`
 ADD PRIMARY KEY (`wydania_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `wydania`
--
ALTER TABLE `wydania`
MODIFY `wydania_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
