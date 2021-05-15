-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 15 mai 2021 à 02:24
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cedoc`
--

-- --------------------------------------------------------

--
-- Structure de la table `axe`
--

CREATE TABLE `axe` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `axe`
--

INSERT INTO `axe` (`id`, `titre`, `description`) VALUES
(6, 'OPTIMISATION DES ECHANGES THERMIQUES DE L’ENVELOPPE D\'UN BATIMENT', NULL),
(7, 'ARCHITECTURE ORIENTEE SERVICE SENSIBLE AU CONTEXTE', NULL),
(8, 'STOCKAGE DE L\'ENERGIE PAR LES MATERIAUX A CHANGEMENT DE PHASE (PCM)', NULL),
(9, 'IMPLEMENTATION DES COMMANDES DEDIES AUX ROBOTS ET AUX SYSTEMES INDUSTRIELS', NULL),
(10, 'RESEAUX INFORMATIQUES : RESEAUX SANS FIL MAILLES (WMN), RESEAUX OPTIQUES, RESEAUX DE CAPTEURS SANS FIL (WSN)', NULL),
(11, 'BETON ARME', NULL),
(12, 'SYSTEMES ENERGETIQUES INNOVANTS', NULL),
(13, 'VALORISATION DES MATERIAUX PHOSPHATES ET CIMENTAIRES', NULL),
(14, 'PRODUCTIQUE ET MANAGEMENT INDUSTRIEL', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctorant`
--

CREATE TABLE `doctorant` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `NumDoss` text NOT NULL,
  `CNE` text NOT NULL,
  `CNI` text NOT NULL,
  `DateNaissance` date NOT NULL,
  `mail` varchar(255) NOT NULL,
  `Tele` int(20) NOT NULL,
  `Bac` text NOT NULL,
  `mention` text NOT NULL,
  `province` text NOT NULL,
  `AnnecBac` text NOT NULL,
  `diplome1` text NOT NULL,
  `SpecialiteDiplome1` text NOT NULL,
  `DateObtentionDip1` date NOT NULL,
  `EtablissementDip1` text NOT NULL,
  `MoyenneDip1` double NOT NULL,
  `MentionDip1` text NOT NULL,
  `diplome2` text DEFAULT NULL,
  `SpecialiteDiplome2` text DEFAULT NULL,
  `DateObtentionDip2` date DEFAULT NULL,
  `EtablissementDip2` text DEFAULT NULL,
  `MoyenneDip2` double DEFAULT NULL,
  `MentionDip2` text DEFAULT NULL,
  `Statut` int(11) NOT NULL,
  `fonction` text DEFAULT NULL,
  `StructureRecherche` int(11) NOT NULL,
  `formation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doctorant`
--

INSERT INTO `doctorant` (`id`, `nom`, `prenom`, `NumDoss`, `CNE`, `CNI`, `DateNaissance`, `mail`, `Tele`, `Bac`, `mention`, `province`, `AnnecBac`, `diplome1`, `SpecialiteDiplome1`, `DateObtentionDip1`, `EtablissementDip1`, `MoyenneDip1`, `MentionDip1`, `diplome2`, `SpecialiteDiplome2`, `DateObtentionDip2`, `EtablissementDip2`, `MoyenneDip2`, `MentionDip2`, `Statut`, `fonction`, `StructureRecherche`, `formation`) VALUES
(6, 'NomDocS1', 'PrenomDocS1', '15', '2623984883', 'FD123456', '1987-06-01', 'doc1@hotmail.com', 642849136, 'SERIE SC. EXPERIMENTALES', 'ASSEZ BIEN', 'ERRACHIDIA', '2006', 'Master spécialisé', 'INGENIERIE ET CONDUITE DE PROJETS DE BATIMENT ET DES TRAVAUX PUBLICS', '0000-00-00', 'FACULTE DES SCIENCES AS-SAMLALIA', 12.67, 'ASSEZ BIEN', 'LICENCE PROFESSIONNELLE', 'TECHNOLOGIE ET MANAGEMENT DU BTP', '0000-00-00', 'FACULTE DES SCIENCES AS-SAMLALIA', 11, 'PASSABLE', 2, 'Fonctionnaire', 13, 'Sciences de l’ingénieur'),
(7, 'NomDocS2', 'PrenomDocS2', '890', '2725018480', 'FD123457', '1988-04-16', 'doc2@hotmail.com', 642849136, 'SERIE SC. EXPERIMENTALES', 'BIEN', 'TAROUDANT', '2007', 'Diplôme d\'ingénieur d\'Etat', 'GENIE LOGICIEL', '0000-00-00', 'ECOLE NATIONALE SUPERIEURE D\'INFORMATIQUE ET D\'ANALYSE DES SYSTEMES', 14.1, 'BIEN', 'LICENCE FONDAMENTALE', 'SCIENCES MATHEMATIQUES ET INFORMATIQUES', '0000-00-00', 'FACULTE DES SCIENCES AGADIR', NULL, 'BIEN', 2, 'Fonctionnaire', 14, 'Informatique'),
(8, 'NomDocS3', 'PrenomDocS3', '148', '2523298515', 'FD123458', '1985-09-12', 'doc3@hotmail.com', 642849136, 'SERIE SC. EXPERIMENTALES', 'PASSABLE', 'BENSLIMANE', '2005', 'Master spécialisé', 'LES ENERGIES RENOUVELABLES ET SYSTEMES ENERGITIQUES', '0000-00-00', 'FACULTE DE SCIENCES AIN CHOCK CASABLANCA', 12.72, 'ASSEZ BIEN', '', '', NULL, '', NULL, '', 2, 'Fonctionnaire', 13, 'Sciences de l’ingénieur'),
(9, 'NomDocS4', 'PrenomDocS4', '719', '1311529744', 'FD123459', '1996-03-01', 'doc4@hotmail.com', 642849136, 'FILIERE SC. MATHEMATIQUES -A-', 'BIEN', 'RABAT', '2013', 'Diplôme d\'ingénieur d\'Etat', 'ELECTRIQUE ET SYSTEMES EMBARQUES', '0000-00-00', 'ENSA', 13.47, 'ASSEZ BIEN', '', '', NULL, '', NULL, '', 2, 'Salarié', 15, 'Sciences de l’ingénieur'),
(10, 'NomDOC1', 'PrenomDoc1', '5', '2826112938', 'AB234567', '1990-02-20', 'doc1@gmail.com', 678146999, 'FILIERE PHYSIQUE CHIMIE', 'BIEN', 'CHICHAOUA', '2008', 'Diplôme d\'ingénieur d\'Etat', 'RESEAUX INFORMATIQUES ET SYSTEMES.', '0000-00-00', 'INSTITUT NATIONAL DES POSTES ET TELECOMMUNICATIONS', 14.57, 'BIEN', '', '', NULL, '', NULL, '', 1, NULL, 7, 'Sciences et Techniques de l\'Ingénieur'),
(11, 'NomDOC2', 'PrenomDoc2', '11', '1311931604', 'AB234568', '1994-10-11', 'doc2@gmail.com', 678146999, 'FILIERE SC. MATHEMATIQUES -A-', 'TRES BIEN', 'ERRACHIDIA', '2013', 'Diplôme d\'ingénieur d\'Etat', 'GENIE CIVIL', '0000-00-00', 'ECOLE HASSANIA DES TRAVAUX PUBLICS', 13.56, 'EXCELLENT', '', '', NULL, '', NULL, '', 1, NULL, 8, 'Sciences et Techniques de l\'Ingénieur'),
(12, 'NomDOC3', 'PrenomDoc3', '3132', '1111402734', 'AB234569', '1990-08-28', 'doc3@gmail.com', 678146999, 'FILIERE SC. LA VIE ET LA TERRE', 'ASSEZ BIEN', 'SIDI BERNOUSSI ZENATA', '2011', 'Master spécialisé', 'TECHNOLOGIE DE FABRICATION', '0000-00-00', 'FACULTE DES SCIENCES BEN M\'SIK', 15.2055, 'BIEN', '', '', NULL, '', NULL, '', 1, NULL, 9, 'Sciences et Techniques de l\'Ingénieur'),
(13, 'NomDOC4', 'PrenomDoc4', '61', '1028528888', 'AB234570', '1992-06-29', 'doc4@gmail.com', 678146999, 'FILIERE SC. LA VIE ET LA TERRE', 'BIEN', 'SALE BOUKNADEL', '2010', 'Master de recherche', 'MECANIQUE ENERGETIQUE', '0000-00-00', 'FACULTE DES SCIENCES RABAT', 13.545, 'ASSEZ BIEN', '', '', NULL, '', NULL, '', 1, NULL, 10, 'Sciences et Techniques de l\'Ingénieur'),
(14, 'NomDOC5', 'PrenomDoc5', '40', '1311151157', 'AB234571', '1995-02-10', 'doc5@gmail.com', 678146999, 'FILIERE SC. MATHEMATIQUES -B-', 'TRES BIEN', 'BENI MELLAL', '2013', 'Diplôme d\'ingénieur d\'Etat', 'GENIE INDUSTRIEL', '0000-00-00', 'ENSAM CASABLANCA', 14, 'BIEN', '', '', NULL, '', NULL, '', 1, NULL, 12, 'Sciences et Techniques de l\'Ingénieur');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `tele` bigint(20) NOT NULL,
  `specialite` text NOT NULL,
  `grade` int(11) NOT NULL,
  `stucture_recherche` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `email`, `tele`, `specialite`, `grade`, `stucture_recherche`) VALUES
(14, 'Oujari', 'Hicham', 'hichamoujari99@gmail.com', 212762818251, 'prof agrege', 2, 7),
(15, 'Ahmed', 'Kamal', 'hichamoujari99@gmail.co', 212762818251, 'prof agrege', 2, 16);

-- --------------------------------------------------------

--
-- Structure de la table `etat_inscription`
--

CREATE TABLE `etat_inscription` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etat_inscription`
--

INSERT INTO `etat_inscription` (`id`, `type`) VALUES
(0, 'pre-inscription'),
(1, 'déposition de dossier'),
(2, 'visa structure(OK)'),
(3, 'visa structure(NON)'),
(4, 'inscription(OK)'),
(5, 'inscription(NON)');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id`, `name`) VALUES
(1, 'P.A'),
(2, 'P.H'),
(3, 'P.E.S');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `statutdoctorant`
--

CREATE TABLE `statutdoctorant` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statutdoctorant`
--

INSERT INTO `statutdoctorant` (`id`, `type`) VALUES
(1, 'NON SALARIES'),
(2, 'SALARIES');

-- --------------------------------------------------------

--
-- Structure de la table `structure_recherche`
--

CREATE TABLE `structure_recherche` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `typeStructure` int(11) NOT NULL,
  `acronyme` text NOT NULL,
  `dateCreation` date NOT NULL,
  `theme` text NOT NULL,
  `structure_assoc` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `structure_recherche`
--

INSERT INTO `structure_recherche` (`id`, `nom`, `typeStructure`, `acronyme`, `dateCreation`, `theme`, `structure_assoc`) VALUES
(8, 'GÉNIE CIVIL ET CONSTRUCTION', 1, 'GCC', '2021-05-18', '...', NULL),
(7, 'RESEAUX INFORMATIQUES, MODELISATION ET ELEARNING', 1, 'RIME', '2021-05-12', '...', NULL),
(9, 'ENERGETIC, MECHANICAL AND INDUSTRIAL SYSTEMS', 1, 'EMISYS', '2021-05-12', '...', NULL),
(10, 'LABORATOIRE DE GÉNIE CIVIL ET ENVIRONNEMENT', 1, 'LGCE', '2021-05-12', '...', NULL),
(12, 'LABORATOIRE D\'ANALYSE DES SYSTEMES, DE TRAITEMENT DE L\'INFORMATION ET DU MANAGEMENT INDUSTRIEL', 1, 'LASTIMI', '2021-05-12', '...', NULL),
(13, 'EQUIPE DE RECHERCHE EN THERMIQUE ET ENERGIE', 1, 'ERTE', '2021-05-12', '...', NULL),
(14, 'IT ARCHITECTURE AND MODEL DRIVEN SYSTEMS DEVELOPMENT', 1, 'IMS', '2021-05-12', '...', NULL),
(15, 'EQUIPE DE RECHERCHE EN ELECTROTECHNIQUE, ROBOTIQUE ET AUTOMATIQUE', 1, 'ERERA', '2021-05-12', '...', NULL),
(16, 'Hicham Oujari', 1, 'OJ', '2021-05-09', 'equipeTest', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `these`
--

CREATE TABLE `these` (
  `id` int(11) NOT NULL,
  `sujet` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `annee` int(11) NOT NULL,
  `EtatIsncription` int(11) NOT NULL,
  `axe` int(11) DEFAULT NULL,
  `DoctorantID` int(11) DEFAULT NULL,
  `EncadrantID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `these`
--

INSERT INTO `these` (`id`, `sujet`, `description`, `annee`, `EtatIsncription`, `axe`, `DoctorantID`, `EncadrantID`) VALUES
(2, NULL, NULL, 2021, 0, 6, 6, NULL),
(3, NULL, NULL, 2021, 0, 7, 7, NULL),
(4, NULL, NULL, 2021, 0, 8, 8, NULL),
(5, NULL, NULL, 2021, 0, 9, 9, NULL),
(6, NULL, NULL, 2021, 2, 10, 10, 14),
(7, NULL, NULL, 2021, 0, 11, 11, NULL),
(8, NULL, NULL, 2021, 0, 12, 12, NULL),
(9, NULL, NULL, 2021, 0, 13, 13, NULL),
(10, NULL, NULL, 2021, 0, 14, 14, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `typestructure`
--

CREATE TABLE `typestructure` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typestructure`
--

INSERT INTO `typestructure` (`id`, `type`) VALUES
(1, 'equipe'),
(2, 'laboratoire'),
(3, 'centre');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `type` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`, `idUser`, `token`) VALUES
(1, 'admin@emi.ac.ma', 'cb60d530016a74a94e36d3375d00b13b', 0, 0, '1621034827525'),
(11, 'hichamoujari99@gmail.com', '3a6919fe4c297c2e4838cf3755702b39', 2, 14, '1621032157751'),
(13, 'doc1@hotmail.com', '5bccab48325dfa0c3edb955b382fc08a', 3, 6, '1621033926473'),
(14, 'doc2@hotmail.com', '438caedbccb721660f3e3a0f51bdf833', 3, 7, NULL),
(15, 'doc3@hotmail.com', '522bf9b4cc6590e7634f6220130677ba', 3, 8, NULL),
(16, 'doc4@hotmail.com', '959823a8f38ac232e556c5a3a0ea26e3', 3, 9, NULL),
(17, 'doc1@gmail.com', '1b6f2cc1af8a488c905af0e7d70942bc', 3, 10, NULL),
(18, 'doc2@gmail.com', '02ebd63d50be193501627de3f1ebc30d', 3, 11, NULL),
(19, 'doc3@gmail.com', '8fe3a6e7edeced9e1a9dac842d01746a', 3, 12, NULL),
(20, 'doc4@gmail.com', 'bbb7103c793705d44776bb3295f12d34', 3, 13, NULL),
(21, 'doc5@gmail.com', '7e0bc0494f48060bb74212f759d2862e', 3, 14, NULL),
(22, 'hichamoujari99@gmail.co', 'cf2a864b1584bd2ef2cb2fef14c389e3', 1, 15, '1621033205783');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `axe`
--
ALTER TABLE `axe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctorant`
--
ALTER TABLE `doctorant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`),
  ADD KEY `FK_doctorant_structure de recherche` (`StructureRecherche`),
  ADD KEY `FK_doctorant_statutdoctorant_2` (`Statut`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_enseignant_grade` (`grade`);

--
-- Index pour la table `etat_inscription`
--
ALTER TABLE `etat_inscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statutdoctorant`
--
ALTER TABLE `statutdoctorant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `structure_recherche`
--
ALTER TABLE `structure_recherche`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acronyme` (`acronyme`) USING HASH;

--
-- Index pour la table `these`
--
ALTER TABLE `these`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_these_etat_inscription` (`EtatIsncription`),
  ADD KEY `FK_these_axe` (`axe`),
  ADD KEY `FK_these_doctorant` (`DoctorantID`),
  ADD KEY `FK_these_enseignant` (`EncadrantID`);

--
-- Index pour la table `typestructure`
--
ALTER TABLE `typestructure`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `axe`
--
ALTER TABLE `axe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `doctorant`
--
ALTER TABLE `doctorant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `etat_inscription`
--
ALTER TABLE `etat_inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `statutdoctorant`
--
ALTER TABLE `statutdoctorant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `structure_recherche`
--
ALTER TABLE `structure_recherche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `these`
--
ALTER TABLE `these`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `typestructure`
--
ALTER TABLE `typestructure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
