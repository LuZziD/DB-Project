-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Jan 2015 um 19:30
-- Server Version: 5.6.21
-- PHP-Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `dbproj`
--
CREATE DATABASE IF NOT EXISTS `dbproj` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbproj`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `agelimits`
--

CREATE TABLE IF NOT EXISTS `agelimits` (
`agelimit_ID` int(10) unsigned NOT NULL,
  `agelimit_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `agelimits`
--

INSERT INTO `agelimits` (`agelimit_ID`, `agelimit_name`) VALUES
(1, '0'),
(2, '6'),
(3, '12'),
(4, '16'),
(5, '18');

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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
`directors_ID` int(10) unsigned NOT NULL,
  `director_firstname` varchar(45) DEFAULT NULL,
  `director_lastname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `directors`
--

INSERT INTO `directors` (`directors_ID`, `director_firstname`, `director_lastname`) VALUES
(1, 'Steven', 'Spielberg'),
(2, 'Martin', 'Scorese'),
(3, 'Ridley', 'Scott'),
(4, 'John', 'Woo'),
(5, 'Christopher', 'Nolan'),
(6, 'Peter', 'Jackson'),
(7, 'Neal H.', 'Moritz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
`genre_ID` int(10) unsigned NOT NULL,
  `genre_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `genres`
--

INSERT INTO `genres` (`genre_ID`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Drama'),
(4, 'Erotic'),
(5, 'Fantasy');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
`publisher_ID` int(10) unsigned NOT NULL,
  `publisher_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `publishers`
--

INSERT INTO `publishers` (`publisher_ID`, `publisher_name`) VALUES
(1, 'Metro-Goldwyn-Mayer'),
(2, 'Fox Films'),
(3, 'Cinema International Corporation'),
(4, 'Columbia Pictures of Argentina'),
(5, 'Bmg Films'),
(6, 'Warner Bros. GmbH'),
(7, 'Universal Studios');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `purchasedarticles`
--

CREATE TABLE IF NOT EXISTS `purchasedarticles` (
  `purchasedarticles_ID` int(10) unsigned NOT NULL,
  `purchasedarticles_articles` int(10) unsigned NOT NULL,
  `purchasedarticles_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `purchasesettlements`
--

CREATE TABLE IF NOT EXISTS `purchasesettlements` (
`purchasesettlements_ID` int(10) unsigned NOT NULL,
  `purchasesettlements_purchasedarticles` int(10) unsigned NOT NULL,
  `purchasesettlements_userID` int(10) unsigned NOT NULL,
  `purchasesettlements_date` date NOT NULL,
  `purchasesettlements_purchasetype` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `purchasetype`
--

CREATE TABLE IF NOT EXISTS `purchasetype` (
`purchasetype_ID` int(10) unsigned NOT NULL,
  `purchasetype_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`roles_ID` int(10) unsigned NOT NULL,
  `roles_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `roles`
--

INSERT INTO `roles` (`roles_ID`, `roles_name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `salutations`
--

CREATE TABLE IF NOT EXISTS `salutations` (
`salutations_ID` int(10) unsigned NOT NULL,
  `salutations_name` varchar(8) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `salutations`
--

INSERT INTO `salutations` (`salutations_ID`, `salutations_name`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `timestamps`
--

CREATE TABLE IF NOT EXISTS `timestamps` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_ID` int(10) unsigned NOT NULL,
  `user_salutation` int(10) unsigned NOT NULL,
  `user_nickname` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_firstname` varchar(45) DEFAULT NULL,
  `user_lastname` varchar(45) DEFAULT NULL,
  `user_email` varchar(64) DEFAULT NULL,
  `user_street` varchar(45) DEFAULT NULL,
  `user_housenumber` varchar(45) DEFAULT NULL,
  `user_city` varchar(45) DEFAULT NULL,
  `user_postcode` varchar(45) DEFAULT NULL,
  `user_country` varchar(45) NOT NULL,
  `user_role` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`user_ID`, `user_salutation`, `user_nickname`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_street`, `user_housenumber`, `user_city`, `user_postcode`, `user_country`, `user_role`) VALUES
(3, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 'admin@admin.com', 'adminstreet', '1337', 'admincity', '66688', 'admincountry', 1),
(4, 2, 'user', 'a81be4e9b20632860d20a64c054c4150', 'user', 'user', 'user@user.com', 'userstreet', '88', 'usercity', '77788', 'usercountry', 2),
(5, 1, '234213', '81dc9bdb52d04dc20036dbd8313ed055', '1345', '3245', '3245', 'Amerika', '3245', '3245', '12345', '3245', 2),
(6, 1, '1234', 'fca0789e7891cbc0583298a238316122', '2314', '2134', '1234', 'Amerika', '2134', '2134', '12345', '2134', 2);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `agelimits`
--
ALTER TABLE `agelimits`
 ADD PRIMARY KEY (`agelimit_ID`), ADD UNIQUE KEY `agelimit_ID_UNIQUE` (`agelimit_ID`);

--
-- Indizes für die Tabelle `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`article_ID`), ADD UNIQUE KEY `article_ID_UNIQUE` (`article_ID`), ADD KEY `fk_articles_directors1_idx` (`article_director`), ADD KEY `fk_articles_genres1_idx` (`article_genre`), ADD KEY `fk_articles_publishers1_idx` (`article_publisher`), ADD KEY `fk_articles_agelimits1_idx` (`article_agelimit`);

--
-- Indizes für die Tabelle `directors`
--
ALTER TABLE `directors`
 ADD PRIMARY KEY (`directors_ID`), ADD UNIQUE KEY `directors_ID_UNIQUE` (`directors_ID`);

--
-- Indizes für die Tabelle `genres`
--
ALTER TABLE `genres`
 ADD PRIMARY KEY (`genre_ID`), ADD UNIQUE KEY `genres_ID_UNIQUE` (`genre_ID`);

--
-- Indizes für die Tabelle `publishers`
--
ALTER TABLE `publishers`
 ADD PRIMARY KEY (`publisher_ID`), ADD UNIQUE KEY `publisher_ID_UNIQUE` (`publisher_ID`);

--
-- Indizes für die Tabelle `purchasedarticles`
--
ALTER TABLE `purchasedarticles`
 ADD PRIMARY KEY (`purchasedarticles_ID`), ADD UNIQUE KEY `purchasedarticles_ID_UNIQUE` (`purchasedarticles_ID`), ADD KEY `fk_purchasedarticles_articles1_idx` (`purchasedarticles_articles`);

--
-- Indizes für die Tabelle `purchasesettlements`
--
ALTER TABLE `purchasesettlements`
 ADD PRIMARY KEY (`purchasesettlements_ID`), ADD UNIQUE KEY `purchasesettlements_ID_UNIQUE` (`purchasesettlements_ID`), ADD KEY `fk_purchasesettlements_purchasedarticles1_idx` (`purchasesettlements_purchasedarticles`), ADD KEY `fk_purchasesettlements_purchasetype1_idx` (`purchasesettlements_purchasetype`), ADD KEY `fk_purchasesettlements_users1_idx` (`purchasesettlements_userID`);

--
-- Indizes für die Tabelle `purchasetype`
--
ALTER TABLE `purchasetype`
 ADD PRIMARY KEY (`purchasetype_ID`), ADD UNIQUE KEY `purchasetype_ID_UNIQUE` (`purchasetype_ID`);

--
-- Indizes für die Tabelle `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`roles_ID`), ADD UNIQUE KEY `roles_ID_UNIQUE` (`roles_ID`);

--
-- Indizes für die Tabelle `salutations`
--
ALTER TABLE `salutations`
 ADD PRIMARY KEY (`salutations_ID`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_ID`), ADD UNIQUE KEY `user_ID_UNIQUE` (`user_ID`), ADD KEY `fk_users_salutations_idx` (`user_salutation`), ADD KEY `fk_users_roles1_idx` (`user_role`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `agelimits`
--
ALTER TABLE `agelimits`
MODIFY `agelimit_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `articles`
--
ALTER TABLE `articles`
MODIFY `article_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT für Tabelle `directors`
--
ALTER TABLE `directors`
MODIFY `directors_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `genres`
--
ALTER TABLE `genres`
MODIFY `genre_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `publishers`
--
ALTER TABLE `publishers`
MODIFY `publisher_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `purchasesettlements`
--
ALTER TABLE `purchasesettlements`
MODIFY `purchasesettlements_ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `purchasetype`
--
ALTER TABLE `purchasetype`
MODIFY `purchasetype_ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `roles`
--
ALTER TABLE `roles`
MODIFY `roles_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `salutations`
--
ALTER TABLE `salutations`
MODIFY `salutations_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
MODIFY `user_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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

--
-- Constraints der Tabelle `purchasedarticles`
--
ALTER TABLE `purchasedarticles`
ADD CONSTRAINT `fk_purchasedarticles_articles1` FOREIGN KEY (`purchasedarticles_articles`) REFERENCES `articles` (`article_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `purchasesettlements`
--
ALTER TABLE `purchasesettlements`
ADD CONSTRAINT `fk_purchasesettlements_purchasedarticles1` FOREIGN KEY (`purchasesettlements_purchasedarticles`) REFERENCES `purchasedarticles` (`purchasedarticles_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_purchasesettlements_purchasetype1` FOREIGN KEY (`purchasesettlements_purchasetype`) REFERENCES `purchasetype` (`purchasetype_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_purchasesettlements_users1` FOREIGN KEY (`purchasesettlements_userID`) REFERENCES `users` (`user_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `fk_users_roles1` FOREIGN KEY (`user_role`) REFERENCES `roles` (`roles_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_salutations` FOREIGN KEY (`user_salutation`) REFERENCES `salutations` (`salutations_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
