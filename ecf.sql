-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 avr. 2022 à 14:56
-- Version du serveur : 8.0.28
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecf`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_article`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `user_id`, `title`, `content`, `created_at`) VALUES
(1, 1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue posuere ipsum at euismod. Nullam tristique, augue vel lacinia lobortis, dui nibh rhoncus est, ac pretium ligula ex ultricies arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc eu ligula ut nibh porta dictum eget sed nisl. Curabitur vitae laoreet dolor, ac interdum magna. Etiam dignissim hendrerit dapibus. Integer dictum facilisis nisi eget posuere. Integer et accumsan libero. Phasellus quis risus mattis, imperdiet nisi vel, varius mauris. Aenean fringilla risus nisl, a dignissim lacus tincidunt sit amet. Maecenas sagittis tortor metus, a dignissim nulla mollis non. Nunc mattis est venenatis interdum tincidunt. Vestibulum lacinia ex vitae risus facilisis, at mattis dui dapibus. Ut feugiat vitae neque in scelerisque. Phasellus augue mi, dapibus ornare magna eu, placerat lobortis neque.\r\n\r\nCras sed ullamcorper est, vitae tincidunt elit. Praesent at elit vel mi aliquam vehicula vel vel lectus. Etiam quis dapibus nisl, tincidunt elementum odio. Proin nec varius nisl. Sed congue orci risus, id auctor lacus fringilla quis. Cras pretium lectus vel elementum posuere. Sed varius luctus metus at condimentum. Aliquam elementum augue in scelerisque placerat. Morbi pharetra lectus ac erat pretium pellentesque.\r\n\r\nNulla eu justo tellus. Etiam convallis lacinia arcu, eget posuere dolor condimentum vitae. Nunc vitae porttitor mi. Curabitur vel nunc in augue posuere placerat id sed nulla. Nam nec mollis quam. Aenean mauris nisl, porttitor consequat pharetra ut, euismod vel tortor. Phasellus facilisis magna quis nisi porttitor ultrices. Curabitur egestas ligula eget sem pharetra eleifend eget nec nulla. Morbi sit amet sodales neque. Aenean at risus felis. Mauris consectetur est vitae enim bibendum vulputate. Maecenas in velit nec diam iaculis lobortis id id turpis. Phasellus non quam eget ligula porta suscipit eget ut purus. Fusce gravida lacinia sapien id vehicula.\r\n\r\nQuisque vel ultrices libero. Ut pellentesque odio id lacinia dignissim. Mauris lacinia velit a sapien egestas iaculis. Proin convallis porttitor ornare. Nulla ut dolor eget augue suscipit tristique eu et lectus. Nulla vel justo porttitor, cursus lectus venenatis, porttitor sem. In laoreet mi quis condimentum congue. Proin tellus lacus, eleifend et aliquam id, condimentum quis nibh. Suspendisse vel euismod ipsum, eu lacinia augue. Nam facilisis mollis leo. Maecenas consectetur posuere arcu ac euismod. Curabitur hendrerit ullamcorper mauris quis laoreet. Duis eget velit vel nunc tincidunt vulputate vitae in nibh. Nam libero arcu, tempus pharetra sapien eu, commodo congue leo. Proin massa diam, auctor sed leo in, luctus consectetur lacus. Nullam in tincidunt felis, ut posuere mi.\r\n\r\nCurabitur blandit mauris metus, sed suscipit erat eleifend a. Nullam rutrum ligula at odio finibus ullamcorper. Proin tincidunt lorem sit amet malesuada lobortis. Sed ut orci nisi. Morbi purus turpis, venenatis quis metus ut, scelerisque ornare urna. Curabitur elementum facilisis bibendum. Donec dapibus leo ligula, eget sagittis sapien blandit non. Donec vel velit sodales, varius ligula luctus, posuere est. Quisque tortor erat, aliquet scelerisque lacus in, porttitor elementum dolor. Maecenas vel eros tincidunt, condimentum diam vel, gravida nisi. ', '2022-03-09 13:53:53'),
(2, 1, 'Nulla eu justo tellus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue posuere ipsum at euismod. Nullam tristique, augue vel lacinia lobortis, dui nibh rhoncus est, ac pretium ligula ex ultricies arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc eu ligula ut nibh porta dictum eget sed nisl. Curabitur vitae laoreet dolor, ac interdum magna. Etiam dignissim hendrerit dapibus. Integer dictum facilisis nisi eget posuere. Integer et accumsan libero. Phasellus quis risus mattis, imperdiet nisi vel, varius mauris. Aenean fringilla risus nisl, a dignissim lacus tincidunt sit amet. Maecenas sagittis tortor metus, a dignissim nulla mollis non. Nunc mattis est venenatis interdum tincidunt. Vestibulum lacinia ex vitae risus facilisis, at mattis dui dapibus. Ut feugiat vitae neque in scelerisque. Phasellus augue mi, dapibus ornare magna eu, placerat lobortis neque.\r\n\r\nCras sed ullamcorper est, vitae tincidunt elit. Praesent at elit vel mi aliquam vehicula vel vel lectus. Etiam quis dapibus nisl, tincidunt elementum odio. Proin nec varius nisl. Sed congue orci risus, id auctor lacus fringilla quis. Cras pretium lectus vel elementum posuere. Sed varius luctus metus at condimentum. Aliquam elementum augue in scelerisque placerat. Morbi pharetra lectus ac erat pretium pellentesque.\r\n\r\nNulla eu justo tellus. Etiam convallis lacinia arcu, eget posuere dolor condimentum vitae. Nunc vitae porttitor mi. Curabitur vel nunc in augue posuere placerat id sed nulla. Nam nec mollis quam. Aenean mauris nisl, porttitor consequat pharetra ut, euismod vel tortor. Phasellus facilisis magna quis nisi porttitor ultrices. Curabitur egestas ligula eget sem pharetra eleifend eget nec nulla. Morbi sit amet sodales neque. Aenean at risus felis. Mauris consectetur est vitae enim bibendum vulputate. Maecenas in velit nec diam iaculis lobortis id id turpis. Phasellus non quam eget ligula porta suscipit eget ut purus. Fusce gravida lacinia sapien id vehicula.\r\n\r\nQuisque vel ultrices libero. Ut pellentesque odio id lacinia dignissim. Mauris lacinia velit a sapien egestas iaculis. Proin convallis porttitor ornare. Nulla ut dolor eget augue suscipit tristique eu et lectus. Nulla vel justo porttitor, cursus lectus venenatis, porttitor sem. In laoreet mi quis condimentum congue. Proin tellus lacus, eleifend et aliquam id, condimentum quis nibh. Suspendisse vel euismod ipsum, eu lacinia augue. Nam facilisis mollis leo. Maecenas consectetur posuere arcu ac euismod. Curabitur hendrerit ullamcorper mauris quis laoreet. Duis eget velit vel nunc tincidunt vulputate vitae in nibh. Nam libero arcu, tempus pharetra sapien eu, commodo congue leo. Proin massa diam, auctor sed leo in, luctus consectetur lacus. Nullam in tincidunt felis, ut posuere mi.\r\n\r\nCurabitur blandit mauris metus, sed suscipit erat eleifend a. Nullam rutrum ligula at odio finibus ullamcorper. Proin tincidunt lorem sit amet malesuada lobortis. Sed ut orci nisi. Morbi purus turpis, venenatis quis metus ut, scelerisque ornare urna. Curabitur elementum facilisis bibendum. Donec dapibus leo ligula, eget sagittis sapien blandit non. Donec vel velit sodales, varius ligula luctus, posuere est. Quisque tortor erat, aliquet scelerisque lacus in, porttitor elementum dolor. Maecenas vel eros tincidunt, condimentum diam vel, gravida nisi.', '2022-03-10 10:54:47'),
(3, 1, 'Quisque vel ultrices libero', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue posuere ipsum at euismod. Nullam tristique, augue vel lacinia lobortis, dui nibh rhoncus est, ac pretium ligula ex ultricies arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc eu ligula ut nibh porta dictum eget sed nisl. Curabitur vitae laoreet dolor, ac interdum magna. Etiam dignissim hendrerit dapibus. Integer dictum facilisis nisi eget posuere. Integer et accumsan libero. Phasellus quis risus mattis, imperdiet nisi vel, varius mauris. Aenean fringilla risus nisl, a dignissim lacus tincidunt sit amet. Maecenas sagittis tortor metus, a dignissim nulla mollis non. Nunc mattis est venenatis interdum tincidunt. Vestibulum lacinia ex vitae risus facilisis, at mattis dui dapibus. Ut feugiat vitae neque in scelerisque. Phasellus augue mi, dapibus ornare magna eu, placerat lobortis neque.\r\n\r\nCras sed ullamcorper est, vitae tincidunt elit. Praesent at elit vel mi aliquam vehicula vel vel lectus. Etiam quis dapibus nisl, tincidunt elementum odio. Proin nec varius nisl. Sed congue orci risus, id auctor lacus fringilla quis. Cras pretium lectus vel elementum posuere. Sed varius luctus metus at condimentum. Aliquam elementum augue in scelerisque placerat. Morbi pharetra lectus ac erat pretium pellentesque.\r\n\r\nNulla eu justo tellus. Etiam convallis lacinia arcu, eget posuere dolor condimentum vitae. Nunc vitae porttitor mi. Curabitur vel nunc in augue posuere placerat id sed nulla. Nam nec mollis quam. Aenean mauris nisl, porttitor consequat pharetra ut, euismod vel tortor. Phasellus facilisis magna quis nisi porttitor ultrices. Curabitur egestas ligula eget sem pharetra eleifend eget nec nulla. Morbi sit amet sodales neque. Aenean at risus felis. Mauris consectetur est vitae enim bibendum vulputate. Maecenas in velit nec diam iaculis lobortis id id turpis. Phasellus non quam eget ligula porta suscipit eget ut purus. Fusce gravida lacinia sapien id vehicula.\r\n\r\nQuisque vel ultrices libero. Ut pellentesque odio id lacinia dignissim. Mauris lacinia velit a sapien egestas iaculis. Proin convallis porttitor ornare. Nulla ut dolor eget augue suscipit tristique eu et lectus. Nulla vel justo porttitor, cursus lectus venenatis, porttitor sem. In laoreet mi quis condimentum congue. Proin tellus lacus, eleifend et aliquam id, condimentum quis nibh. Suspendisse vel euismod ipsum, eu lacinia augue. Nam facilisis mollis leo. Maecenas consectetur posuere arcu ac euismod. Curabitur hendrerit ullamcorper mauris quis laoreet. Duis eget velit vel nunc tincidunt vulputate vitae in nibh. Nam libero arcu, tempus pharetra sapien eu, commodo congue leo. Proin massa diam, auctor sed leo in, luctus consectetur lacus. Nullam in tincidunt felis, ut posuere mi.\r\n\r\nCurabitur blandit mauris metus, sed suscipit erat eleifend a. Nullam rutrum ligula at odio finibus ullamcorper. Proin tincidunt lorem sit amet malesuada lobortis. Sed ut orci nisi. Morbi purus turpis, venenatis quis metus ut, scelerisque ornare urna. Curabitur elementum facilisis bibendum. Donec dapibus leo ligula, eget sagittis sapien blandit non. Donec vel velit sodales, varius ligula luctus, posuere est. Quisque tortor erat, aliquet scelerisque lacus in, porttitor elementum dolor. Maecenas vel eros tincidunt, condimentum diam vel, gravida nisi.', '2022-03-13 18:55:15'),
(4, 1, 'Cras sed ullamcorper est', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue posuere ipsum at euismod. Nullam tristique, augue vel lacinia lobortis, dui nibh rhoncus est, ac pretium ligula ex ultricies arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc eu ligula ut nibh porta dictum eget sed nisl. Curabitur vitae laoreet dolor, ac interdum magna. Etiam dignissim hendrerit dapibus. Integer dictum facilisis nisi eget posuere. Integer et accumsan libero. Phasellus quis risus mattis, imperdiet nisi vel, varius mauris. Aenean fringilla risus nisl, a dignissim lacus tincidunt sit amet. Maecenas sagittis tortor metus, a dignissim nulla mollis non. Nunc mattis est venenatis interdum tincidunt. Vestibulum lacinia ex vitae risus facilisis, at mattis dui dapibus. Ut feugiat vitae neque in scelerisque. Phasellus augue mi, dapibus ornare magna eu, placerat lobortis neque.\r\n\r\nCras sed ullamcorper est, vitae tincidunt elit. Praesent at elit vel mi aliquam vehicula vel vel lectus. Etiam quis dapibus nisl, tincidunt elementum odio. Proin nec varius nisl. Sed congue orci risus, id auctor lacus fringilla quis. Cras pretium lectus vel elementum posuere. Sed varius luctus metus at condimentum. Aliquam elementum augue in scelerisque placerat. Morbi pharetra lectus ac erat pretium pellentesque.\r\n\r\nNulla eu justo tellus. Etiam convallis lacinia arcu, eget posuere dolor condimentum vitae. Nunc vitae porttitor mi. Curabitur vel nunc in augue posuere placerat id sed nulla. Nam nec mollis quam. Aenean mauris nisl, porttitor consequat pharetra ut, euismod vel tortor. Phasellus facilisis magna quis nisi porttitor ultrices. Curabitur egestas ligula eget sem pharetra eleifend eget nec nulla. Morbi sit amet sodales neque. Aenean at risus felis. Mauris consectetur est vitae enim bibendum vulputate. Maecenas in velit nec diam iaculis lobortis id id turpis. Phasellus non quam eget ligula porta suscipit eget ut purus. Fusce gravida lacinia sapien id vehicula.\r\n\r\nQuisque vel ultrices libero. Ut pellentesque odio id lacinia dignissim. Mauris lacinia velit a sapien egestas iaculis. Proin convallis porttitor ornare. Nulla ut dolor eget augue suscipit tristique eu et lectus. Nulla vel justo porttitor, cursus lectus venenatis, porttitor sem. In laoreet mi quis condimentum congue. Proin tellus lacus, eleifend et aliquam id, condimentum quis nibh. Suspendisse vel euismod ipsum, eu lacinia augue. Nam facilisis mollis leo. Maecenas consectetur posuere arcu ac euismod. Curabitur hendrerit ullamcorper mauris quis laoreet. Duis eget velit vel nunc tincidunt vulputate vitae in nibh. Nam libero arcu, tempus pharetra sapien eu, commodo congue leo. Proin massa diam, auctor sed leo in, luctus consectetur lacus. Nullam in tincidunt felis, ut posuere mi.\r\n\r\nCurabitur blandit mauris metus, sed suscipit erat eleifend a. Nullam rutrum ligula at odio finibus ullamcorper. Proin tincidunt lorem sit amet malesuada lobortis. Sed ut orci nisi. Morbi purus turpis, venenatis quis metus ut, scelerisque ornare urna. Curabitur elementum facilisis bibendum. Donec dapibus leo ligula, eget sagittis sapien blandit non. Donec vel velit sodales, varius ligula luctus, posuere est. Quisque tortor erat, aliquet scelerisque lacus in, porttitor elementum dolor. Maecenas vel eros tincidunt, condimentum diam vel, gravida nisi. ', '2022-03-21 09:38:43');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id_comment` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_comment`),
  KEY `fk_article_id` (`article_id`),
  KEY `fk_comment_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id_comment`, `article_id`, `user_id`, `content`, `created_at`) VALUES
(3, 1, NULL, 'hello', '2022-04-29 15:58:04'),
(4, 3, NULL, 'hello', '2022-04-29 15:58:10'),
(5, 1, NULL, 'hello', '2022-04-29 15:58:34'),
(6, 1, NULL, 'hello', '2022-04-29 15:59:10'),
(7, 1, NULL, 'hello', '2022-04-29 16:09:14'),
(8, 1, NULL, 'allo', '2022-04-29 16:13:02'),
(9, 1, NULL, 'allo', '2022-04-29 16:14:23'),
(10, 1, NULL, 'hello', '2022-04-29 16:52:24');

-- --------------------------------------------------------

--
-- Structure de la table `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE IF NOT EXISTS `file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `pseudo`, `pwd`, `email`, `created_at`) VALUES
(1, 'Admin', '$argon2i$v=19$m=65536,t=4,p=1$Z253VDlRSWNFUGNZZ0tlUg$I5nIoToVjVwDYR3kJDCWvYJOiDeuUqguXxgmxCcQ1UY', 'admin@test.com', '2022-03-09 12:08:54'),
(2, 'estelle', '$argon2i$v=19$m=65536,t=4,p=1$bTgweHZWZ0xkYlI3UjV2Lg$wp4WOBuF7XcZIFzp7oTAeiep9BdoDWqaZyjr6z/EM+8', 'testestelle@test.com', '2022-04-29 10:25:29');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE SET NULL;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id_article`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE SET NULL ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
