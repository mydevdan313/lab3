-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 02 2018 г., 17:20
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `lab3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `nick` text COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `fio` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`nick`, `password`, `email`, `fio`) VALUES
('1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE IF NOT EXISTS `tovar` (
  `id` int(3) NOT NULL,
  `tiregty` int(3) NOT NULL,
  `oilgty` int(3) NOT NULL,
  `sparkgty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `tiregty`, `oilgty`, `sparkgty`) VALUES
(1, 1, 1, 1),
(2, 0, 0, 0),
(3, 0, 0, 0),
(4, 8, 9, 7),
(5, 20, 10, 11),
(6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE IF NOT EXISTS `zakaz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` text COLLATE utf8_bin NOT NULL,
  `adress` text COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`id`, `fio`, `adress`, `data`) VALUES
(1, '', '1', '2018-10-02'),
(2, '', '', '2018-10-02'),
(3, '', '', '2018-10-02'),
(4, '', '666', '2018-10-02'),
(5, 'Артур Рэйш', 'Главный храм', '2018-10-02'),
(6, '', '1', '2018-10-02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
