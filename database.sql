-- By Bocaletto Luca
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1:3306
-- Creato il: Mag 25, 2023 alle 23:00
-- Versione del server: 8.0.31
-- Versione PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `moviedb`
--

DROP TABLE IF EXISTS `moviedb`;
CREATE TABLE IF NOT EXISTS `moviedb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `release_date` date NOT NULL,
  `title` varchar(70) NOT NULL,
  `overview` varchar(350) NOT NULL,
  `vote_average` float NOT NULL,
  `original_language` varchar(3) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `poster_url` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9839 DEFAULT CHARSET=utf8mb3;
