-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 05 avr. 2024 à 14:19
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sicilylines`
--

-- --------------------------------------------------------

--
-- Structure de la table `bateau`
--

CREATE TABLE `bateau` (
  `IDBATEAU` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `NOM` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LONGUEUR` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LARGEUR` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VITESSE` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `IDCATEGORIE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `LIBELLECATEGORIE` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `IDCLIENT` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `NOM` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRENOM` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ADRESSE` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CP` int DEFAULT NULL,
  `VILLE` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `IDCATEGORIE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDBATEAU` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `CAPACITEMAX` int DEFAULT NULL,
  `idContenir` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

CREATE TABLE `equipement` (
  `IDEQUIPEMENT` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `LIBELLEEQUIPEMENT` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `liaison`
--

CREATE TABLE `liaison` (
  `IDLIAISON` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDSECTEUR` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDPORT` char(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IDPORT_ASSO_9` char(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DUREE` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `liaison`
--

INSERT INTO `liaison` (`IDLIAISON`, `IDSECTEUR`, `IDPORT`, `IDPORT_ASSO_9`, `DUREE`) VALUES
('1', '1', '1', '2', '3 heures'),
('2', '2', '2', '1', '2 heures'),
('3', '2', '1', '2', '2 heures');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_15_094254_create_bateaus_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `periode`
--

CREATE TABLE `periode` (
  `IDPERIODE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `DATEDEBUT` date DEFAULT NULL,
  `DATEFIN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `port`
--

CREATE TABLE `port` (
  `IDPORT` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `NOM` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `port`
--

INSERT INTO `port` (`IDPORT`, `NOM`) VALUES
('1', 'Palerme'),
('2', 'port 2');

-- --------------------------------------------------------

--
-- Structure de la table `proposer`
--

CREATE TABLE `proposer` (
  `IDBATEAU` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDEQUIPEMENT` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `idProposer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `qte`
--

CREATE TABLE `qte` (
  `IDRESERVATION` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDTYPE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `idQte` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `IDRESERVATION` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDCLIENT` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDTRAVERSEE` char(32) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `IDSECTEUR` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `LIBELLESECTEUR` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`IDSECTEUR`, `LIBELLESECTEUR`) VALUES
('1', 'sud'),
('2', 'nord');

-- --------------------------------------------------------

--
-- Structure de la table `tarifier`
--

CREATE TABLE `tarifier` (
  `IDPERIODE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDTYPE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDLIAISON` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `TARIF` double DEFAULT NULL,
  `idTarif` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `traversee`
--

CREATE TABLE `traversee` (
  `IDTRAVERSEE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDBATEAU` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDLIAISON` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `DATET` date DEFAULT NULL,
  `HEURE` time(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `IDTYPE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `IDCATEGORIE` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `LIBELLETYPE` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bateau`
--
ALTER TABLE `bateau`
  ADD PRIMARY KEY (`IDBATEAU`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`IDCATEGORIE`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`IDCLIENT`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`idContenir`),
  ADD KEY `I_FK_CONTENIR_CATEGORIE` (`IDCATEGORIE`),
  ADD KEY `I_FK_CONTENIR_BATEAU` (`IDBATEAU`);

--
-- Index pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD PRIMARY KEY (`IDEQUIPEMENT`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `liaison`
--
ALTER TABLE `liaison`
  ADD PRIMARY KEY (`IDLIAISON`),
  ADD KEY `I_FK_LIAISON_SECTEUR` (`IDSECTEUR`),
  ADD KEY `I_FK_LIAISON_PORT` (`IDPORT`),
  ADD KEY `I_FK_LIAISON_PORT1` (`IDPORT_ASSO_9`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`IDPERIODE`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `port`
--
ALTER TABLE `port`
  ADD PRIMARY KEY (`IDPORT`);

--
-- Index pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`idProposer`),
  ADD KEY `I_FK_PROPOSER_BATEAU` (`IDBATEAU`),
  ADD KEY `I_FK_PROPOSER_EQUIPEMENT` (`IDEQUIPEMENT`);

--
-- Index pour la table `qte`
--
ALTER TABLE `qte`
  ADD PRIMARY KEY (`idQte`),
  ADD KEY `I_FK_QTE_RESERVATION` (`IDRESERVATION`),
  ADD KEY `I_FK_QTE_TYPE` (`IDTYPE`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`IDRESERVATION`),
  ADD KEY `I_FK_RESERVATION_CLIENT` (`IDCLIENT`),
  ADD KEY `I_FK_RESERVATION_TRAVERSEE` (`IDTRAVERSEE`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`IDSECTEUR`);

--
-- Index pour la table `tarifier`
--
ALTER TABLE `tarifier`
  ADD PRIMARY KEY (`idTarif`),
  ADD KEY `I_FK_TARIFIER_PERIODE` (`IDPERIODE`),
  ADD KEY `I_FK_TARIFIER_TYPE` (`IDTYPE`),
  ADD KEY `I_FK_TARIFIER_LIAISON` (`IDLIAISON`);

--
-- Index pour la table `traversee`
--
ALTER TABLE `traversee`
  ADD PRIMARY KEY (`IDTRAVERSEE`),
  ADD KEY `I_FK_TRAVERSEE_BATEAU` (`IDBATEAU`),
  ADD KEY `I_FK_TRAVERSEE_LIAISON` (`IDLIAISON`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`IDTYPE`),
  ADD KEY `I_FK_TYPE_CATEGORIE` (`IDCATEGORIE`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contenir`
--
ALTER TABLE `contenir`
  MODIFY `idContenir` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `proposer`
--
ALTER TABLE `proposer`
  MODIFY `idProposer` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `qte`
--
ALTER TABLE `qte`
  MODIFY `idQte` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tarifier`
--
ALTER TABLE `tarifier`
  MODIFY `idTarif` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `FK_CONTENIR_BATEAU` FOREIGN KEY (`IDBATEAU`) REFERENCES `bateau` (`IDBATEAU`),
  ADD CONSTRAINT `FK_CONTENIR_CATEGORIE` FOREIGN KEY (`IDCATEGORIE`) REFERENCES `categorie` (`IDCATEGORIE`);

--
-- Contraintes pour la table `liaison`
--
ALTER TABLE `liaison`
  ADD CONSTRAINT `FK_LIAISON_PORT` FOREIGN KEY (`IDPORT`) REFERENCES `port` (`IDPORT`),
  ADD CONSTRAINT `FK_LIAISON_PORT1` FOREIGN KEY (`IDPORT_ASSO_9`) REFERENCES `port` (`IDPORT`),
  ADD CONSTRAINT `FK_LIAISON_SECTEUR` FOREIGN KEY (`IDSECTEUR`) REFERENCES `secteur` (`IDSECTEUR`);

--
-- Contraintes pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD CONSTRAINT `FK_PROPOSER_BATEAU` FOREIGN KEY (`IDBATEAU`) REFERENCES `bateau` (`IDBATEAU`),
  ADD CONSTRAINT `FK_PROPOSER_EQUIPEMENT` FOREIGN KEY (`IDEQUIPEMENT`) REFERENCES `equipement` (`IDEQUIPEMENT`);

--
-- Contraintes pour la table `qte`
--
ALTER TABLE `qte`
  ADD CONSTRAINT `FK_QTE_RESERVATION` FOREIGN KEY (`IDRESERVATION`) REFERENCES `reservation` (`IDRESERVATION`),
  ADD CONSTRAINT `FK_QTE_TYPE` FOREIGN KEY (`IDTYPE`) REFERENCES `type` (`IDTYPE`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_RESERVATION_CLIENT` FOREIGN KEY (`IDCLIENT`) REFERENCES `client` (`IDCLIENT`),
  ADD CONSTRAINT `FK_RESERVATION_TRAVERSEE` FOREIGN KEY (`IDTRAVERSEE`) REFERENCES `traversee` (`IDTRAVERSEE`);

--
-- Contraintes pour la table `tarifier`
--
ALTER TABLE `tarifier`
  ADD CONSTRAINT `FK_TARIFIER_LIAISON` FOREIGN KEY (`IDLIAISON`) REFERENCES `liaison` (`IDLIAISON`),
  ADD CONSTRAINT `FK_TARIFIER_PERIODE` FOREIGN KEY (`IDPERIODE`) REFERENCES `periode` (`IDPERIODE`),
  ADD CONSTRAINT `FK_TARIFIER_TYPE` FOREIGN KEY (`IDTYPE`) REFERENCES `type` (`IDTYPE`);

--
-- Contraintes pour la table `traversee`
--
ALTER TABLE `traversee`
  ADD CONSTRAINT `FK_TRAVERSEE_BATEAU` FOREIGN KEY (`IDBATEAU`) REFERENCES `bateau` (`IDBATEAU`),
  ADD CONSTRAINT `FK_TRAVERSEE_LIAISON` FOREIGN KEY (`IDLIAISON`) REFERENCES `liaison` (`IDLIAISON`);

--
-- Contraintes pour la table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `FK_TYPE_CATEGORIE` FOREIGN KEY (`IDCATEGORIE`) REFERENCES `categorie` (`IDCATEGORIE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
