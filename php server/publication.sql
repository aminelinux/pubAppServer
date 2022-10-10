-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 10 oct. 2022 à 15:37
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `publication`
--

-- --------------------------------------------------------

--
-- Structure de la table `diapo`
--

CREATE TABLE `diapo` (
  `id_diapo` int(100) NOT NULL,
  `pub` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`pub`)),
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `diapo`
--

INSERT INTO `diapo` (`id_diapo`, `pub`, `date`) VALUES
(2, '{\"name\": \"test Diaporam\", \"date\": \"23/09/2022\", \"tache\": [{\"kindOf\": \"photo\", \"link\": \"http://localhost/pubserver/images/bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg\",\"periode\" : 4}, {\"kindOf\": \"photo\", \"link\": \"https://www.tunisienumerique.com/wp-content/uploads/2019/08/Tunisie-Telecom.png\",\"periode\" : 10},{\"kindOf\": \"video\", \"link\": \"http://localhost/pubserver/videos/ERA%20-%20Ameno.mp4\",\"periode\" : 230}]}', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `image`, `date`) VALUES
(1, 'azerty.jpg', '2022-09-15'),
(2, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-09-15'),
(3, 'bobcat-3840x2160-new-york-usa-8230.jpg', '2022-09-15'),
(4, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-09-15'),
(5, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-09-15'),
(6, 'bobcat-3840x2160-new-york-usa-8230.jpg', '2022-09-15'),
(7, 'buildings_city_night_199095_3840x2400.jpg', '2022-09-15'),
(8, 'Awesome_Bridge_11658x6112.jpg', '2022-09-15'),
(9, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-09-15'),
(10, 'Pine_Path_Forest_Tree_4000x2655.jpg', '2022-09-15'),
(11, 'pine-cone-5120x2880-bing-microsoft-5k-23225.jpg', '2022-09-15'),
(12, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-09-15'),
(13, 'Awesome_Bridge_11658x6112.jpg', '2022-09-15'),
(14, 'HARRY_POTTER_DEATHLY_HALLOWS_r_1920x1080.jpg', '2022-09-15'),
(15, 'Capture d’écran 2021-06-17 190557.png', '2022-09-15'),
(16, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-09-15'),
(17, 'Monsters_Fantasy_dragons_warrior_5599x3201.jpg', '2022-09-15'),
(18, 'Awesome_Bridge_11658x6112.jpg', '2022-09-15'),
(19, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-09-15'),
(20, 'fantasy-2560x1440-4k-hd-wallpaper-forest-frog-pond-flowers-256.jpg', '2022-09-15'),
(21, 'pine-cone-5120x2880-bing-microsoft-5k-23225.jpg', '2022-09-15'),
(22, 'bobcat-3840x2160-new-york-usa-8230.jpg', '2022-09-15'),
(23, 'fantasy-2560x1440-4k-hd-wallpaper-forest-frog-pond-flowers-256.jpg', '2022-09-15'),
(24, 'buildings_city_night_199095_3840x2400.jpg', '2022-09-15'),
(25, 'Awesome_Bridge_11658x6112.jpg', '2022-09-15'),
(26, 'buildings_city_night_199095_3840x2400.jpg', '2022-09-15'),
(27, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-09-15'),
(28, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-09-25'),
(29, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-10-05'),
(30, 'fantasy-2560x1440-4k-hd-wallpaper-forest-frog-pond-flowers-256.jpg', '2022-10-06'),
(31, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-10-07'),
(32, 'Awesome_Bridge_11658x6112.jpg', '2022-10-07'),
(33, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-10-07'),
(34, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-10-07'),
(35, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-10-07'),
(36, 'Awesome_Bridge_11658x6112.jpg', '2022-10-07'),
(37, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-10-07'),
(38, 'bison-3840x2160-grand-teton-national-park-wyoming-usa-bing-microsoft-23142.jpg', '2022-10-07'),
(39, 'bobcat-3840x2160-new-york-usa-8230.jpg', '2022-10-07'),
(40, 'bobcat-3840x2160-new-york-usa-8230.jpg', '2022-10-07'),
(41, 'bobcat-3840x2160-new-york-usa-8230.jpg', '2022-10-07'),
(42, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-10-07'),
(43, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-10-07'),
(44, 'dragon-fantasy-uhdpaper.com-4K-8.2842.jpg', '2022-10-07'),
(45, 'fantasy-2560x1440-4k-hd-wallpaper-forest-frog-pond-flowers-256.jpg', '2022-10-10');

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

CREATE TABLE `tache` (
  `id_tache` int(100) NOT NULL,
  `id_images` int(10) NOT NULL,
  `id_videos` int(100) NOT NULL,
  `id_Texts` int(10) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `text`
--

CREATE TABLE `text` (
  `id_text` int(10) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id_video` int(100) NOT NULL,
  `video` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id_video`, `video`, `date`) VALUES
(3, 'Europe - The Final Countdown (Official Video).mp4', '2022-09-15'),
(4, 'Enti Essout sous-titres français + english substitle إنت الصوت.mp4', '2022-09-15'),
(5, 'Gregorian-Moment of Peace vs antarktika.flv.mp4', '2022-09-15'),
(6, 'Armin Van Buuren  -  Our Origin    _ Live at Tomorrowland 2018 _ 1080p @ALİOS.mp4', '2022-09-15'),
(7, 'ERA - Ameno.mp4', '2022-09-15'),
(8, 'Cheb Khaled - Bakhta (Paroles _ Lyrics) - (الشاب خالد - بختة (الكلمات.mp4', '2022-09-15'),
(9, 'Elissa - Masdoma (Audio) _ اليسا -  مصدومة.mp4', '2022-09-15'),
(10, 'Ratten Reich - IMPRESSIVE New World War RTS Where Men of War Meets Company of Heroes.mp4', '2022-09-15'),
(18, '', '2022-10-07'),
(19, '', '2022-10-07'),
(20, 'Ghenya Lik - Tunisian Artists - غنية لك - فنانين تونسيين.mp4', '2022-10-07'),
(21, '', '2022-10-07');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `diapo`
--
ALTER TABLE `diapo`
  ADD PRIMARY KEY (`id_diapo`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`id_tache`);

--
-- Index pour la table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id_text`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `diapo`
--
ALTER TABLE `diapo`
  MODIFY `id_diapo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `tache`
--
ALTER TABLE `tache`
  MODIFY `id_tache` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `text`
--
ALTER TABLE `text`
  MODIFY `id_text` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
