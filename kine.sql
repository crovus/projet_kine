-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 18 Novembre 2015 à 16:45
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `kine`
--

-- --------------------------------------------------------

--
-- Structure de la table `historique_patient`
--

CREATE TABLE IF NOT EXISTS `historique_patient` (
  `ID_Patient` int(11) NOT NULL,
  `Poids` int(11) NOT NULL,
  `Taille` int(11) NOT NULL,
  PRIMARY KEY (`ID_Patient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inscription_sport`
--

CREATE TABLE IF NOT EXISTS `inscription_sport` (
  `ID_Sport` int(11) NOT NULL,
  `ID_Patient` int(11) NOT NULL,
  `Date_Inscription` date NOT NULL,
  PRIMARY KEY (`ID_Sport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `kine`
--

CREATE TABLE IF NOT EXISTS `kine` (
  `ID_Kine` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Kine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pathologie`
--

CREATE TABLE IF NOT EXISTS `pathologie` (
  `ID_Pathologie` int(11) NOT NULL,
  `ID_Patient` int(11) NOT NULL,
  `Libelle_Pathologie` varchar(50) NOT NULL,
  `Date_Pathologie` date NOT NULL,
  `Date_Fin_Pathologie` date NOT NULL,
  PRIMARY KEY (`ID_Pathologie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `ID_Patient` int(11) NOT NULL,
  `Adresse` text NOT NULL,
  `Num_Télé` int(11) NOT NULL,
  `Adresse_mail` varchar(40) NOT NULL,
  `Profession` text NOT NULL,
  `Date_Naissance` date NOT NULL,
  `Sexe` int(11) NOT NULL,
  PRIMARY KEY (`ID_Patient`),
  UNIQUE KEY `ID_Patient` (`ID_Patient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE IF NOT EXISTS `seance` (
  `ID_Seance` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Duree` varchar(255) NOT NULL,
  `Type_Acte` varchar(50) NOT NULL,
  `Localisation_Corps` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Seance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sport`
--

CREATE TABLE IF NOT EXISTS `sport` (
  `ID_Sport` int(11) NOT NULL,
  `Libelle_Sport` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Sport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `traumatisme`
--

CREATE TABLE IF NOT EXISTS `traumatisme` (
  `ID_Traumatisme` int(11) NOT NULL,
  `ID_Patient` int(11) NOT NULL,
  `Libelle_Traumatisme` varchar(50) NOT NULL,
  `Date_Traumatisme` date NOT NULL,
  PRIMARY KEY (`ID_Traumatisme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Login` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Mdp` varchar(50) NOT NULL,
  `ID_Patient` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  PRIMARY KEY (`ID_Patient`),
  UNIQUE KEY `Login` (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
  `ID_Ville` int(11) NOT NULL,
  `ID_Patient` int(11) NOT NULL,
  `Nom_Ville` text NOT NULL,
  `Date_enmenagement` date NOT NULL,
  `Date_demenagement` date NOT NULL,
  PRIMARY KEY (`ID_Ville`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE IF NOT EXISTS `voyage` (
  `ID_Voyage` int(11) NOT NULL,
  `ID_Patient` int(11) NOT NULL,
  `Libellé_Voyage` varchar(50) NOT NULL,
  `Date_Voyage` date NOT NULL,
  PRIMARY KEY (`ID_Voyage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
