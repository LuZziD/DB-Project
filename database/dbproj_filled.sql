-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Jan 2015 um 19:16
-- Server Version: 5.6.21
-- PHP-Version: 5.6.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `dbproj`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`article_ID` int(10) unsigned NOT NULL,
  `article_title` varchar(45) DEFAULT NULL,
  `article_director` int(10) unsigned NOT NULL,
  `article_genre` int(10) unsigned NOT NULL,
  `article_runtime` varchar(45) DEFAULT NULL,
  `article_publisher` int(10) unsigned NOT NULL,
  `article_agelimit` int(10) unsigned NOT NULL,
  `article_releasedate` date DEFAULT NULL,
  `article_publishingdate` date DEFAULT NULL,
  `article_amount` int(11) DEFAULT NULL,
  `article_rentprice` double DEFAULT NULL,
  `article_purchaseprice` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `articles`
--

INSERT INTO `articles` (`article_ID`, `article_title`, `article_director`, `article_genre`, `article_runtime`, `article_publisher`, `article_agelimit`, `article_releasedate`, `article_publishingdate`, `article_amount`, `article_rentprice`, `article_purchaseprice`) VALUES
(1, 'Iron Man', 3, 2, '90', 4, 3, '2015-01-01', '2015-01-02', 3, 2.5, 9.99),
(2, 'Iron Man 2', 3, 4, '100', 3, 2, '2015-01-22', '2015-01-30', 2, 3, 12.99),
(3, 'Iron Man 3', 5, 2, '110', 4, 4, '2015-01-06', '2014-10-14', 4, 3.5, 14.99),
(5, 'Die Tribute von Panem', 3, 3, '130', 3, 2, '2015-01-01', '2015-01-31', 1, 2.5, 12.99),
(6, 'Der Herr der Ringe: Die Gefährten', 6, 5, '178', 6, 3, '2001-12-18', '2001-12-11', 3, 2, 9.99),
(7, 'Der Herr der Ringe: Die zwei Türme', 6, 5, '179', 6, 3, '2002-12-19', '2002-12-12', 3, 2, 12.99),
(8, 'Der Herr der Ringe: Die Rückkehr des Königs', 6, 5, '200', 6, 3, '2003-12-13', '2003-12-17', 3, 2, 14.99),
(14, 'Der Hobbit: Eine unerwartete Reise', 6, 5, '169', 6, 5, '2012-12-12', '2012-12-13', 3, 2, 9.99),
(15, 'Der Hobbit: Smaugs Einöde', 6, 5, '161', 6, 5, '2013-12-11', '2013-12-12', 3, 2, 12.99),
(16, 'Der Hobbit: Die Schlacht der Fünf Heere', 6, 5, '144', 6, 5, '2014-12-09', '2014-12-10', 3, 2, 14.99),
(17, 'The Fast and the Furious', 7, 1, '103', 7, 4, '2001-06-18', '2001-06-18', 3, 2, 5.99),
(18, '2 Fast 2 Furious', 7, 1, '103', 7, 4, '2003-05-19', '2003-05-19', 3, 2, 7.99),
(19, 'The Fast and the Furious: Tokyo Drift', 7, 1, '104', 7, 4, '2006-06-04', '2006-06-04', 3, 2, 9.99),
(20, 'Fast & Furious – Neues Modell. Originalteile.', 7, 1, '102', 7, 4, '2009-04-03', '2009-04-03', 3, 2, 9.99),
(21, 'Fast & Furious Five', 7, 1, '130', 7, 4, '2011-04-15', '2011-04-15', 3, 2, 12.99),
(22, 'Fast & Furious 6', 7, 1, '130', 7, 4, '2013-05-07', '2013-05-07', 3, 2, 14.99);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`article_ID`), ADD UNIQUE KEY `article_ID_UNIQUE` (`article_ID`), ADD KEY `fk_articles_directors1_idx` (`article_director`), ADD KEY `fk_articles_genres1_idx` (`article_genre`), ADD KEY `fk_articles_publishers1_idx` (`article_publisher`), ADD KEY `fk_articles_agelimits1_idx` (`article_agelimit`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `articles`
--
ALTER TABLE `articles`
MODIFY `article_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `articles`
--
ALTER TABLE `articles`
ADD CONSTRAINT `fk_articles_agelimits1` FOREIGN KEY (`article_agelimit`) REFERENCES `agelimits` (`agelimit_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_articles_directors1` FOREIGN KEY (`article_director`) REFERENCES `directors` (`directors_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_articles_genres1` FOREIGN KEY (`article_genre`) REFERENCES `genres` (`genre_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_articles_publishers1` FOREIGN KEY (`article_publisher`) REFERENCES `publishers` (`publisher_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
