-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : database
-- Généré le : jeu. 22 fév. 2024 à 21:01
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `RivagesPropres`
--

-- --------------------------------------------------------

--
-- Structure de la table `accompagnement`
--

CREATE TABLE `accompagnement` (
  `id` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accompagnement`
--

INSERT INTO `accompagnement` (`id`, `nom`, `description`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'Accompagnement', 'Un accompagnement personnalisé permet à chaque salarié de travailler son projet. Ce travail s’appuie sur les attitudes et les compétences acquises sur le chantier et des actions de formation interne et externe (”Sauveteur Secouriste du Travail”, “Prévention des Risques liés à l’Activité Physique”, “Utilisateur d’échafaudage”). Une PMSMP (Période de Mise en Situation en Milieu Professionnel) doit être obligatoirement effectuée par chaque salarié en insertion pour vérifier la cohérence du projet et envisager la suite du parcours.', 'accompagnement-65d62a18aeae5287769957.jpg', 5033670, '2024-02-21 16:51:36');

-- --------------------------------------------------------

--
-- Structure de la table `accueil_img`
--

CREATE TABLE `accueil_img` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accueil_img`
--

INSERT INTO `accueil_img` (`id`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'dsc-0727-65d6267042a25064721006.jpg', 1005613, '2024-02-21 16:36:00');

-- --------------------------------------------------------

--
-- Structure de la table `chiffres`
--

CREATE TABLE `chiffres` (
  `id` int NOT NULL,
  `nombre` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chiffres`
--

INSERT INTO `chiffres` (`id`, `nombre`, `nom`) VALUES
(1, '50', 'Donneurs d\'ordre'),
(2, '2000', 'Salariés accueillis'),
(3, '4', 'Supports d\'activité');

-- --------------------------------------------------------

--
-- Structure de la table `demarche_base`
--

CREATE TABLE `demarche_base` (
  `id` int NOT NULL,
  `texte` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `texte2` longtext COLLATE utf8mb4_unicode_ci,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `demarche_base`
--

INSERT INTO `demarche_base` (`id`, `texte`, `texte2`, `image_name`, `image_size`, `updated_at`) VALUES
(2, 'Au cours de ses trente années d’existence, l’association Rivages Propres a grandi, s’est diversifiée, a dû intégrer les évolutions légales et règlementaires de l’insertion par l’activité économique. Ces changements ont nécessité une certaine adaptation conduisant à une nette professionnalisation sur la dernière décennie. En janvier 2018, Olivier DELBECQ, président, et David VASCONI, nouveau directeur, ont pris la décision d’emmener l’équipe vers une certification avec trois objectifs : harmoniser les pratiques, obtenir une reconnaissance de la qualité de nos services et renforcer la cohésion d’équipe.', 'Après différentes recherches, l’association a opté pour la démarche qualité CEDRE, proposée par le réseau COORACE, pour sa prise en compte de la mission d’insertion et la dimension collective de la certification de groupe. En 2019, l’auto-diagnostic COORACE Ambition Progrès a permis de confirmer notre capacité à mettre en place une démarche qualité et nous avons ainsi intégré le groupe CEDRE ISO 9001', 'dsc-0239-65d664a11eea3992046372.jpg', 1083069, '2024-02-21 21:01:21');

-- --------------------------------------------------------

--
-- Structure de la table `derniers_chantiers`
--

CREATE TABLE `derniers_chantiers` (
  `id` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `derniers_chantiers`
--

INSERT INTO `derniers_chantiers` (`id`, `nom`, `date`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'Test', '2023-11-03', 'dsc-0727-65d62ecc16c3d759818050.jpg', 1005613, '2024-02-21 17:11:40');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231107144935', '2023-11-07 14:50:02', 669),
('DoctrineMigrations\\Version20231108125349', '2023-11-08 12:54:35', 617),
('DoctrineMigrations\\Version20231108133723', '2023-11-08 13:37:56', 670),
('DoctrineMigrations\\Version20231108134432', '2023-11-08 13:47:02', 984),
('DoctrineMigrations\\Version20231108135033', '2023-11-08 13:50:48', 817),
('DoctrineMigrations\\Version20231109091554', '2023-11-09 09:16:57', 395),
('DoctrineMigrations\\Version20231109093645', '2023-11-09 09:37:15', 132),
('DoctrineMigrations\\Version20231109094431', '2023-11-09 09:44:44', 106),
('DoctrineMigrations\\Version20231109105859', '2023-11-10 08:06:38', 278),
('DoctrineMigrations\\Version20231109130322', '2023-11-10 08:06:38', 140),
('DoctrineMigrations\\Version20231109135332', '2023-11-10 08:06:39', 53),
('DoctrineMigrations\\Version20231110082012', '2023-11-10 08:20:56', 347),
('DoctrineMigrations\\Version20231110085049', '2023-11-10 08:51:08', 109),
('DoctrineMigrations\\Version20231110095257', '2023-11-10 09:53:24', 197),
('DoctrineMigrations\\Version20231110110420', '2023-11-10 11:04:43', 160),
('DoctrineMigrations\\Version20231110134426', '2023-11-10 13:44:54', 125),
('DoctrineMigrations\\Version20231110144810', '2023-11-10 14:48:52', 168),
('DoctrineMigrations\\Version20231113132209', '2023-11-13 13:27:33', 255),
('DoctrineMigrations\\Version20231115091147', '2023-11-15 09:12:40', 308),
('DoctrineMigrations\\Version20231120094357', '2023-11-20 09:44:56', 162),
('DoctrineMigrations\\Version20231120125006', '2023-11-20 12:50:27', 159),
('DoctrineMigrations\\Version20231123124504', '2023-11-23 12:45:09', 66),
('DoctrineMigrations\\Version20240221163144', '2024-02-21 16:31:56', 1376);

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `titre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texte` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `titre`, `texte`, `image_name`, `image_size`, `updated_at`) VALUES
(4, 'Event 1', 'Je suis un event', 'image-site-65d62b059c668749013452.jpg', 3997050, '2024-02-21 16:55:33');

-- --------------------------------------------------------

--
-- Structure de la table `galerie`
--

CREATE TABLE `galerie` (
  `id` int NOT NULL,
  `categorie_galerie` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `galerie`
--

INSERT INTO `galerie` (`id`, `categorie_galerie`, `image_name`, `image_size`, `updated_at`) VALUES
(1, '1', 'capture-d-ecran-2023-10-21-161659-65548dfe98557836980099.png', 666726, '2023-11-15 09:23:10'),
(2, '2', 'capture-d-ecran-2023-11-01-213310-65548e2a914a3556915848.png', 19676, '2023-11-15 09:23:54'),
(3, '4', 'capture-d-ecran-2023-07-28-210624-65548e5d4eb23539621306.png', 280132, '2023-11-15 09:24:45'),
(7, '5', 'eric-65562e4608f6d031961077.png', 452774, '2023-11-16 14:59:18');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id` int NOT NULL,
  `titre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `titre`, `date`, `description`) VALUES
(1, 'La création', '1991', 'Rivages Propres a été créée autour de 2 idées : l’insertion professionnelle des personnes éloignées de l’emploi et l’entretien des littoraux. La multiplication des partenariats permettent d’entamer des démarches de sensibilisation auprès du grand public.'),
(2, 'La professionnalisation', '1996', 'Rivages Propres renforce l\'accompagnement social par le biais de la formation et du suivi, tout en intensifiant ses initiatives environnementales pour inclure la gestion des chemins de randonnées.'),
(3, 'La diversification', '2001', 'L’association élargit et diversifie ses domaines d’activités. En 2004, elle intègre la restauration du patrimoine bâti grâce au chantier des Remparts, atteignant ainsi une centaine de salariés en insertion.'),
(4, 'Le retour aux sources', '2013', 'Rivages Propres lance 2 actions expérimentales liées à la mobilité douce (Cycleco) et à l\'entretien écologique du littoral (Ecolittoral). En parallèle, le partenariat avec le SYMSAGEB est réactivé et l’association confirme son engagement pour le développement durable.'),
(5, 'La pérennisation', '2016', 'Un nouvel élan favorise le rapprochement vers les entreprises grâce à un panel d’activités plus complet. L’expérience des années précédentes nourrit la démarche qualité et les méthodes de travail se formalisent.'),
(6, 'à aujourd’hui', '2019', 'Après 32 ans, Rivages Propres est devenu un acteur crucial de l’insertion professionnelle. La démarche qualité permet de formaliser son expertise de terrain et ses méthodes d’accompagnement socioprofessionnel pour poursuivre l’amélioration continue.');

-- --------------------------------------------------------

--
-- Structure de la table `insertion`
--

CREATE TABLE `insertion` (
  `id` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `insertion`
--

INSERT INTO `insertion` (`id`, `nom`, `description`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'Insertion', 'Les ateliers et chantiers d’insertion (ACI) proposent un accompagnement et une activité professionnelle aux personnes sans emploi rencontrant des difficultés sociales et professionnelles particulières. Les salariés des ateliers et chantiers d’insertion (ACI) bénéficient d’une rémunération au moins égale au Smic.', 'insertion-65d62a1ed570c374989981.jpg', 7594546, '2024-02-21 16:51:42');

-- --------------------------------------------------------

--
-- Structure de la table `kiosque`
--

CREATE TABLE `kiosque` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `kiosque`
--

INSERT INTO `kiosque` (`id`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'capture-d-ecran-2023-06-29-104328-65548eaf6a030249495118.png', 5289, '2023-11-15 09:26:07');

-- --------------------------------------------------------

--
-- Structure de la table `lettreinfo`
--

CREATE TABLE `lettreinfo` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lienvideo`
--

CREATE TABLE `lienvideo` (
  `id` int NOT NULL,
  `lien` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lienvideo`
--

INSERT INTO `lienvideo` (`id`, `lien`) VALUES
(1, 'GAIJNLWVkLo');

-- --------------------------------------------------------

--
-- Structure de la table `logo_demarche`
--

CREATE TABLE `logo_demarche` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logo_demarche`
--

INSERT INTO `logo_demarche` (`id`, `image_name`, `image_size`, `updated_at`) VALUES
(3, 'cedre-65d6638dc5b51960011905.png', 6138, '2024-02-21 20:56:45'),
(4, 'iso-65d66390a3818185710818.png', 4407, '2024-02-21 20:56:48');

-- --------------------------------------------------------

--
-- Structure de la table `logo_region`
--

CREATE TABLE `logo_region` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logo_region`
--

INSERT INTO `logo_region` (`id`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'banniere-eu-65d63364d8509201545430.png', 10859, '2024-02-21 17:31:16');

-- --------------------------------------------------------

--
-- Structure de la table `logo_rivages`
--

CREATE TABLE `logo_rivages` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logo_rivages`
--

INSERT INTO `logo_rivages` (`id`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'rivagespropres-65d62fb4a3556282978659.png', 61452, '2024-02-21 17:15:32');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poste` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `categorie_equipe` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_demarche` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie_demarche2` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `nom`, `prenom`, `poste`, `image_name`, `image_size`, `updated_at`, `categorie_equipe`, `categorie_demarche`, `categorie_demarche2`) VALUES
(1, 'Delbecq', 'Olivier', 'Président', 'odelbecq-65d77761664eb317172100.png', 129566, '2024-02-22 16:33:37', '1', '1', NULL),
(2, 'Vasconi', 'David', 'Directeur', 'dvasconi-65d79b1670c64232063993.jpg', 58593, '2024-02-22 19:05:58', '1', '1', NULL),
(3, 'Crépin', 'Véronique', 'Assistante administrative', 'vcrepin-65d7b0bc834e6316173345.png', 72372, '2024-02-22 20:38:20', '2', '2', NULL),
(4, 'Specq', 'Pascale', 'Secrétaire', 'pspecq-65d7b0c90991c489230420.jpg', 67973, '2024-02-22 20:38:33', '2', '2', NULL),
(5, 'Nssis', 'Salima', 'Comptable', 'snssis-65d7b0d685cc9204175792.jpg', 48166, '2024-02-22 20:38:46', '2', '7', NULL),
(6, 'Gense', 'Dolores', 'Chargée de mission insertion', 'dgense-65d7b0e2ee8ae894976440.jpg', 15036, '2024-02-22 20:38:58', '3', '3', NULL),
(7, 'Soret', 'Gwenaëlle', 'Chargée de mission insertion', 'gsoret-65d7b0f10c905407629787.jpg', 19194, '2024-02-22 20:39:13', '3', '3', NULL),
(8, 'Quéhen', 'Kelly', 'Chargée de mission insertion', 'kquehen-65d7b12d5614a780159734.jpg', 17348, '2024-02-22 20:40:13', '3', '3', NULL),
(9, 'Fournier', 'Amélie', 'Médiatrice Sociale', 'afournier-65d7b13b215dd636935310.png', 122633, '2024-02-22 20:40:27', '3', '6', NULL),
(10, 'Mamelin', 'Lou', 'Chargée de communication', 'lmamelin-65d7b15166d5d533816259.jpg', 6969, '2024-02-22 20:40:49', '4', '4', '5'),
(11, 'Bulot', 'Aymeric', 'Responsable technique', 'abulot-65d7b1756d7ba529853760.jpg', 12416, '2024-02-22 20:41:25', '5', '4', NULL),
(12, 'Gauduin', 'Bruno', 'Responsable technique adjoint', 'bgauduin-65d7b183b9b25081663584.png', 126114, '2024-02-22 20:41:39', '5', '4', NULL),
(13, 'Ducrocq', 'Gabriel', 'Responsable logistique', 'gducrocq-65d7b194394a4038528182.jpg', 49307, '2024-02-22 20:41:56', '5', '6', NULL),
(14, 'Bette', 'David', 'Préparateur magasinier', 'dbette-65d7b1a313410476013377.jpg', 11486, '2024-02-22 20:42:11', '5', '6', NULL),
(15, 'Leleu', 'Thomas', 'Encadrant technqiue Cycleco', 'tleleu-65d7b1b3f0ce1496406796.jpg', 44257, '2024-02-22 20:42:27', '5', '4', NULL),
(16, 'Houart', 'Laurent', 'Encadrant technique Bâtiment', 'lhouart-65d7b1c03b24a777697263.png', 117090, '2024-02-22 20:42:40', '5', '4', NULL),
(17, 'Viandier', 'Dimitri', 'Encadrant technique Environnement', 'dviandier-65d7b1f3328e2244262280.png', 136156, '2024-02-22 20:43:31', '5', NULL, NULL),
(18, 'Falempin', 'Mathieu', 'Encadrant technique Environnement', 'mfalempin-65d7b2044d5b6541562361.jpg', 12453, '2024-02-22 20:43:48', '5', NULL, NULL),
(19, 'Soki', 'Vincent', 'Encadrant technique Environnement', 'vsoki-65d7b21633020162791888.png', 124245, '2024-02-22 20:44:06', '5', NULL, NULL),
(20, 'Leprêtre', 'Yves', 'Encadrant technique Environnement', 'ylepretre-65d7b22c9c2a3118637709.png', 103869, '2024-02-22 20:44:28', '5', NULL, NULL),
(21, 'Boulogne', 'Ludovic', 'Encadrant technique Bâtiment', 'lboulogne-65d7b23ddad71382156008.png', 136978, '2024-02-22 20:44:45', '5', NULL, NULL),
(22, 'Petit', 'Laurent', 'Encadrant technique Bâtiment', 'lpetit-65d7b2507664a499219306.jpg', 14874, '2024-02-22 20:45:04', '5', NULL, NULL),
(23, 'Playoult', 'Rémi', 'Encadrant technique Menuiserie', 'rplayout-65d7b25c28f6e443183262.png', 118232, '2024-02-22 20:45:16', '5', NULL, NULL),
(24, 'Brulin', 'Matthieu', 'Encadrant technique Environnement', 'mbrulin-65d7b2b75e623778587094.jpg', 14915, '2024-02-22 20:46:47', '5', NULL, NULL),
(25, 'Butez', 'Mathieu', 'Encadrant technique Bâtiment', 'mbutez-65d7b2ceb355a235349062.png', 131770, '2024-02-22 20:47:10', '5', NULL, NULL),
(26, 'Tintillier', 'Rodrigue', 'Encadrant technique Environnement', 'rtintillier-65d7b2669cdeb209766209.png', 135591, '2024-02-22 20:45:26', '5', NULL, NULL),
(27, 'Caux', 'Gérald', 'Encadrant technique Environnement', 'gcaux-65d7b273713df639381214.jpg', 13130, '2024-02-22 20:45:39', '5', NULL, NULL),
(28, 'Wasselin', 'Christophe', 'Encadrant technique Environnement', 'cwasselin-65d7b27d35bb7226782259.jpg', 9711, '2024-02-22 20:45:49', '5', NULL, NULL),
(29, 'Leprêtre', 'Mathéo', 'Encadrant technique Environnement', 'mlepretre-65d7b287502a3503113097.jpg', 7937, '2024-02-22 20:45:59', '5', NULL, NULL),
(30, 'Fauviaux', 'Grégory', 'Encadrant technique Environnement', 'gfauviaux-65d7b29156f1f768662981.jpg', 11203, '2024-02-22 20:46:09', '5', NULL, NULL),
(31, 'Hodicq', 'Bernard', 'Encadrant technique Bâtiment', 'bhodicq-65d7b299a6cf0841976577.jpg', 10832, '2024-02-22 20:46:17', '5', NULL, NULL),
(32, 'Modeste', 'Annick', 'Assistante comptable', 'amodeste-65d7b30cd079e913953794.jpg', 11717, '2024-02-22 20:48:12', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parademarche`
--

CREATE TABLE `parademarche` (
  `id` int NOT NULL,
  `titre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionformes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionmenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `partie_contact`
--

CREATE TABLE `partie_contact` (
  `id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numrue` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepostal` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horaires` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partie_contact`
--

INSERT INTO `partie_contact` (`id`, `email`, `telephone`, `numrue`, `rue`, `codepostal`, `ville`, `horaires`) VALUES
(1, 'contact@rivagespropres.fr', '03 21 33 87 59', '2', 'boulevard Beaucerf, Batiment D', '62200', 'Boulogne-sur-Mer', '8h00 - 12h00 / 13h45 - 17h30');

-- --------------------------------------------------------

--
-- Structure de la table `rapport_activite`
--

CREATE TABLE `rapport_activite` (
  `id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supports_act`
--

CREATE TABLE `supports_act` (
  `id` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `supports_act`
--

INSERT INTO `supports_act` (`id`, `nom`, `description`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'Environnement', 'Rivages Propres réalise des travaux environnementaux', 'environnement-654e061346cb0228789239.jpg', 13594389, '2023-11-10 10:29:39'),
(2, 'Bâtiment', 'Rivages Propres réalise des travaux environnementaux', 'construction-projet-pro-654e0654b99e8769121090.jpg', 526148, '2023-11-10 10:30:44'),
(3, 'Menuiserie', 'Rivages Propres réalise des travaux environnementaux', 'menuiserie-654e068074ca3527780499.jpg', 12934491, '2023-11-10 10:31:28'),
(4, 'Mobilité douce', 'Rivages Propres réalise des travaux environnementaux', 'velo-654e06ae96f8e299593863.jpg', 6788804, '2023-11-10 10:32:14');

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` int NOT NULL,
  `citation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `citation`, `auteur`) VALUES
(1, 'Je suis un témoignage tranquille', 'Je suis l\'auteur');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(3, 'Gavois.k@hotmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$/d2Q.5esIaxbkgRZRxoc5evDJrSHF4rZruJVmnlPRqIhvousJxwVC');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accompagnement`
--
ALTER TABLE `accompagnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `accueil_img`
--
ALTER TABLE `accueil_img`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chiffres`
--
ALTER TABLE `chiffres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demarche_base`
--
ALTER TABLE `demarche_base`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `derniers_chantiers`
--
ALTER TABLE `derniers_chantiers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `galerie`
--
ALTER TABLE `galerie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `insertion`
--
ALTER TABLE `insertion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kiosque`
--
ALTER TABLE `kiosque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lettreinfo`
--
ALTER TABLE `lettreinfo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lienvideo`
--
ALTER TABLE `lienvideo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logo_demarche`
--
ALTER TABLE `logo_demarche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logo_region`
--
ALTER TABLE `logo_region`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logo_rivages`
--
ALTER TABLE `logo_rivages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parademarche`
--
ALTER TABLE `parademarche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partie_contact`
--
ALTER TABLE `partie_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rapport_activite`
--
ALTER TABLE `rapport_activite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `supports_act`
--
ALTER TABLE `supports_act`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accompagnement`
--
ALTER TABLE `accompagnement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `accueil_img`
--
ALTER TABLE `accueil_img`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `chiffres`
--
ALTER TABLE `chiffres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `demarche_base`
--
ALTER TABLE `demarche_base`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `derniers_chantiers`
--
ALTER TABLE `derniers_chantiers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `galerie`
--
ALTER TABLE `galerie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `insertion`
--
ALTER TABLE `insertion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `kiosque`
--
ALTER TABLE `kiosque`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `lettreinfo`
--
ALTER TABLE `lettreinfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lienvideo`
--
ALTER TABLE `lienvideo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `logo_demarche`
--
ALTER TABLE `logo_demarche`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `logo_region`
--
ALTER TABLE `logo_region`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `logo_rivages`
--
ALTER TABLE `logo_rivages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parademarche`
--
ALTER TABLE `parademarche`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partie_contact`
--
ALTER TABLE `partie_contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `rapport_activite`
--
ALTER TABLE `rapport_activite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `supports_act`
--
ALTER TABLE `supports_act`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
