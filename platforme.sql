-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3307
-- Généré le :  Jeu 26 Mai 2016 à 23:55
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `plateforme`
--

-- --------------------------------------------------------

--
-- Structure de la table `Annonce`
--

CREATE TABLE `Annonce` (
`idAnnonce` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `user_idUser` int(11) DEFAULT NULL,
  `jeu` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Annonce`
--

INSERT INTO `Annonce` (`idAnnonce`, `date`, `description`, `titre`, `user_idUser`, `jeu`, `lieu`) VALUES
(9, '16/05/2016', 'description1', 'Annonce1', 1, 'Basketball', 'Safi Saadaa'),
(10, '17/05/2016', 'description2', 'ojklk', 1, 'Basketball', 'Safi 07 '),
(11, '01/06/1016', 'Description', 'Annonce 3', 1, 'Football', 'Safi');

-- --------------------------------------------------------

--
-- Structure de la table `Groupe`
--

CREATE TABLE `Groupe` (
`idGroupe` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `intitule` varchar(255) DEFAULT NULL,
  `taille` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Groupe`
--

INSERT INTO `Groupe` (`idGroupe`, `idUser`, `intitule`, `taille`) VALUES
(1, 1, 'G1', 432),
(2, 1, 'G4', 43),
(3, 1, 'fdsfsdfq', 0),
(4, 1, 'sud', 0);

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
`idUser` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`idUser`, `age`, `email`, `login`, `nom`, `password`, `prenom`, `tel`) VALUES
(1, 44, 'lkjkjlk@vds.dsf', 'zzzzz', 'zzzzz', 'a', 'a', '808'),
(2, 33, 'lkjlkjklj@kmlklk.lklk', 'kjkjkj', 'lkjlk', 'kjkjkjk', 'kljlkjlk', '231');

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur_Groupe`
--

CREATE TABLE `Utilisateur_Groupe` (
  `Utilisateur_idUser` int(11) NOT NULL,
  `groupes_idGroupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Utilisateur_Groupe`
--

INSERT INTO `Utilisateur_Groupe` (`Utilisateur_idUser`, `groupes_idGroupe`) VALUES
(1, 1),
(1, 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Annonce`
--
ALTER TABLE `Annonce`
 ADD PRIMARY KEY (`idAnnonce`), ADD KEY `FKfryelnqyur5g5sd8t7mfcn5si` (`user_idUser`);

--
-- Index pour la table `Groupe`
--
ALTER TABLE `Groupe`
 ADD PRIMARY KEY (`idGroupe`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
 ADD PRIMARY KEY (`idUser`);

--
-- Index pour la table `Utilisateur_Groupe`
--
ALTER TABLE `Utilisateur_Groupe`
 ADD PRIMARY KEY (`Utilisateur_idUser`,`groupes_idGroupe`), ADD UNIQUE KEY `UK_jdb827ldaqiiw777nqlvsn4ai` (`groupes_idGroupe`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Annonce`
--
ALTER TABLE `Annonce`
MODIFY `idAnnonce` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `Groupe`
--
ALTER TABLE `Groupe`
MODIFY `idGroupe` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Annonce`
--
ALTER TABLE `Annonce`
ADD CONSTRAINT `FKfryelnqyur5g5sd8t7mfcn5si` FOREIGN KEY (`user_idUser`) REFERENCES `Utilisateur` (`idUser`);

--
-- Contraintes pour la table `Utilisateur_Groupe`
--
ALTER TABLE `Utilisateur_Groupe`
ADD CONSTRAINT `FK2d6lf4new8ksccwlrmme6w0pt` FOREIGN KEY (`groupes_idGroupe`) REFERENCES `Groupe` (`idGroupe`),
ADD CONSTRAINT `FK2ryfkpuvd570p5ow5prttca56` FOREIGN KEY (`Utilisateur_idUser`) REFERENCES `Utilisateur` (`idUser`);
