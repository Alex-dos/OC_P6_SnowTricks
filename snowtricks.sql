-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 13 juil. 2023 à 18:25
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `snowtricks`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `trick_id` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CF675F31B` (`author_id`),
  KEY `IDX_9474526CB281BE2E` (`trick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `author_id`, `trick_id`, `content`, `created_at`) VALUES
(2281, 3, 79, 'Cool', '2023-07-11 16:34:47'),
(2282, 3, 79, 'C\'est super', '2023-07-11 16:34:54'),
(2283, 3, 79, 'Au top du top !', '2023-07-11 16:35:05'),
(2286, 3, 76, 'Au top !', '2023-07-12 21:33:55'),
(2289, 3, 79, 'Super', '2023-07-12 21:46:08'),
(2290, 3, 79, 'Waouu !', '2023-07-12 21:46:30'),
(2292, 7, 79, 'Un com !', '2023-07-13 17:45:08');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trick_id` int DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_14B78418B281BE2E` (`trick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`id`, `trick_id`, `path`, `folder_id`) VALUES
(287, 60, 'Capture-d-ecran-2023-07-11-181130-64ad7f43392c9.png', '64ad7f4332a25'),
(288, 61, 'Capture-d-ecran-2023-07-11-181219-64ad7f7eeed3c.png', '64ad7f7eee302'),
(289, 62, 'Capture-d-ecran-2023-07-11-181324-64ad801e89da9.png', '64ad801e89492'),
(290, 63, 'Capture-d-ecran-2023-07-11-181618-64ad80690f943.png', '64ad80690effa'),
(291, 64, 'Capture-d-ecran-2023-07-11-181729-64ad80ae7cc73.png', '64ad80ae7c2f3'),
(292, 65, 'Capture-d-ecran-2023-07-11-181821-64ad80e888e34.png', '64ad80e888476'),
(293, 66, 'Capture-d-ecran-2023-07-11-181932-64ad812d2a350.png', '64ad812d29833'),
(294, 67, 'Capture-d-ecran-2023-07-11-182030-64ad8162da208.png', '64ad8162d9927'),
(295, 68, 'Capture-d-ecran-2023-07-11-182133-64ad81a3c29b6.png', '64ad81a3c1f34'),
(296, 69, 'Capture-d-ecran-2023-07-11-182321-64ad820a0e4d5.png', '64ad820a0d8ac'),
(297, 70, 'Capture-d-ecran-2023-07-11-182405-64ad823a9c9a3.png', '64ad823a9c142'),
(298, 71, 'Capture-d-ecran-2023-07-11-182519-64ad828674400.png', '64ad828673bed'),
(299, 72, 'Capture-d-ecran-2023-07-11-182639-64ad82d396606.png', '64ad82d395b43'),
(300, 73, 'Capture-d-ecran-2023-07-11-182748-64ad831bcfe6b.png', '64ad831bcf54f'),
(301, 74, 'Capture-d-ecran-2023-07-11-182847-64ad835804f04.png', '64ad83580445d'),
(302, 75, 'Capture-d-ecran-2023-07-11-182949-64ad838d0c93c.png', '64ad838d0c0ad'),
(303, 76, 'Capture-d-ecran-2023-07-11-183047-64ad83cb478e1.png', '64ad83cb46d13'),
(304, 77, 'Capture-d-ecran-2023-07-11-183139-64ad840175f1a.png', '64ad84017547a'),
(305, 78, 'Capture-d-ecran-2023-07-11-183237-64ad843729915.png', '64ad843729068'),
(306, 79, 'Capture-d-ecran-2023-07-11-183352-64ad8486b3a7a.png', '64ad8486b30d8'),
(310, 83, 'Capture-d-ecran-2023-07-11-182030-64b037f3e5258.png', '64b037f3e47db');

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `trick`
--

DROP TABLE IF EXISTS `trick`;
CREATE TABLE IF NOT EXISTS `trick` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_id` int DEFAULT NULL,
  `author_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D8F0A91E5E237E06` (`name`),
  KEY `IDX_D8F0A91EC54C8C93` (`type_id`),
  KEY `IDX_D8F0A91EF675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trick`
--

INSERT INTO `trick` (`id`, `type_id`, `author_id`, `name`, `description`, `created_at`, `updated_at`, `slug`) VALUES
(60, 3, 3, 'Nollie Trick', 'This trick is performed just like an ollie but off the nose of your board! Therefore, the motions are reversed. This one is a little trickier, so you should start this one a little slower than an ollie.\r\n\r\nLoad up your pop with the nose of the board by leaning forward a little—not too much.\r\nThen spring off the front leg and follow the same leveling out and landing process as the ollie.\r\nThe key to this one is to really focus on pulling up on your back binding to get the most height possible before you eventually suck up your front knee to level it out.', '2023-07-11 16:11:46', '2023-07-11 16:11:46', 'Nollie-Trick'),
(61, 3, 3, 'Butters', 'These tricks are very easy to learn as all they require is balance and proper weight distribution! You can butter on your nose or tail. All you need to do to butter is:\r\n\r\nLoad up your tail or nose like you are going to ollie, and then lean back a little more so you are riding with the tip of the board off the ground.\r\nWhile you are leaning back, your front leg should be straight, and your body should be in line with your rear knee.\r\nExpert Tip: Butters are easier with a deck, bindings, and boots that are all on the more flexible side.\r\n\r\nButters can be done in various ways to make awesome trick combinations. For example, you can take your newly learned ollie, pop over a little hill, land on your tail, and tail butter over the crest of the hill. Eventually, you can turn that butter sideways after your ollie for a little boardslide action!\r\n\r\nOnce you master butters in a straight line, you can start throwing 180 and 360 butters to do flat spins.', '2023-07-11 16:12:46', '2023-07-11 16:12:46', 'Butters'),
(62, 3, 3, 'Taking Jumps', 'Aerial maneuvers on jumps may look intimidating, but if you start off small and master the fundamentals, they are easy to properly hit! The first few times, you can just ride over the jump. Then move on to popping off of it, and finally, ollie-ing or nollie-ing for maximum height!\r\n\r\nImportant Safety Tips: When hitting jumps, always make sure the landing is clear! If there is a line, wait until you see the person before you ride away so you can drop in safely. Read this for more on terrain park etiquette.\r\n\r\nTo start:\r\n1. Find the smallest jump in the terrain park and start at a point far enough from the jump to get a little speed.\r\n2. Ride straight at the jump with your hands at waist level over your tips.\r\n3. While it\'s ok to take a few heel side or toe side carves to control your speed, try to avoid slowing down at the very last second as this throws off your balance.\r\n4. Once you hit the lip, keep your stance centered over the board—don’t lean too far back or forward so you land nice and even.\r\n5. When you land, absorb the impact with your knees and ride away! This is commonly referred to as a straight air!', '2023-07-11 16:15:26', '2023-07-11 16:15:26', 'Taking-Jumps'),
(63, 1, 3, 'Indy Grabs', 'Now that you can confidently get air off of jumps, you can learn this easy grab trick! To perform an indy grab:\r\n1. Jump off like you normally would, except this time, your rear hand will reach down to grab the board between your legs.\r\n2. Release the grab at the peak height of your jump and bend your knees at the landing and ride away like a pro!\r\n3. Your leading hand (aka your front hand) should stay extended straight out so you keep your positioning centered in the air and look straight ahead to spot your landing.', '2023-07-11 16:16:40', '2023-07-11 16:16:40', 'Indy-Grabs'),
(64, 3, 3, 'Frontside 180s', 'The 180 is a versatile trick that can be performed on snow without leaving the snow, off jumps, onto and off of boxes, and so on. Before attempting this trick, you should be comfortable riding switch because you will need to land your rotation switch.\r\n\r\nFirst, you can practice this frontside spin on flat ground without a jump to get comfortable with the feeling of spinning to switch. Pick a low-traffic area that has a slight slope to it, nothing too crazy. The 180 motion involves a little rotation with your arms, and you should always turn your head to look where you want to land.\r\n\r\nWith that in mind, here are the next steps:\r\n1. As you are riding along with a centered stance, dig your heelside edge in the snow like you are going to turn, and you will feel the board slip.\r\n2. As you feel the board slipping, take your back arm and gently swing it around to your opposite side while turning your head to look over that opposite shoulder. This will keep you moving straight. If you look uphill or downhill while you try this, you will end up off-axis and fall in the way you are looking.', '2023-07-11 16:17:50', '2023-07-11 16:17:50', 'Frontside-180s'),
(65, 4, 3, 'Butter Nose Rolls', 'Now that you can 180, we can start to combine that trick with butters! A butter nose roll is where you get into a nose butter, then combine that with a 180, so you are sliding sideways in the butter position while turning around to complete the 180. These can be done anywhere on the trail or over little hills!', '2023-07-11 16:18:48', '2023-07-11 16:18:48', 'Butter-Nose-Rolls'),
(66, 3, 3, '50/50 Grinds', '50/50 grinds are the easiest way to get into the wonderful world of slides! You should learn these on wider boxes (often called butter boxes) in the park. They will have a mild slope to ride up to the box and aren’t too long.\r\n\r\nMake sure the box you want to hit is clear, then ride up to it straight.\r\nThe same principles as when you hit a jump apply, no last-minute carving or your balance will be off.\r\nYou will need to readjust your balance to be centered once you are on the box because there is a little ramp to ride onto the box with, and you can’t try to turn on the box or go on edge. If you try to turn on with your edge, you will definitely slam.\r\nOnce you get onto the box, keep yourself centered, look towards the end of the box, and ride off straight.\r\nDon’t forget to bend your knees to absorb the landing!\r\nOnce you get comfortable with that, you can start popping and ollie-ing off for extra steeze points!', '2023-07-11 16:19:56', '2023-07-11 16:19:56', '50-50-Grinds'),
(67, 3, 3, '50/50 Tail Press', 'This is a step up from the 50/50 and combines what you have learned with your tail butters earlier. You simply perform a tail butter as you ride across the box, and that’s it. This one looks super cool and is easy to do, but it can take some time to master.\r\n\r\nThe trick is to really get all of your weight over the tail of the board to hold that tail press! Also, remember that while on the box, the base of your board has to remain flat on the feature, or you will slip out. You can start your tail press as soon as you get on the box or do it late for an unexpected trick switch!', '2023-07-11 16:20:50', '2023-07-11 16:20:50', '50-50-Tail-Press'),
(68, 3, 3, '50/50 Nose Press', 'This trick is done the same as the tail press, but with a nose butter across the box instead of a tail butter. These can be a bit trickier than tail presses, and the key is to really get all your weight over the front of your board. One thing to note is that you will need to get yourself back to center as you drop off the box. Otherwise, you will land in a nose press still and be off balance.', '2023-07-11 16:21:55', '2023-07-11 16:21:55', '50-50-Nose-Press'),
(69, 3, 3, 'One Foot Tricks', 'Bode Merril est la preuve vivante que la réincarnation n’est pas un conte de fée. Dans sa vie antérieure de flamant rose, il avait déjà l’habitude d’affronter le quotidien sur une patte. Quelque 200 ans plus tard, il a eu la chance d’être un homme doté d’un snowboard, ce qui a fini par donner à son être l’élan nécessaire. Il aime bien s’avaler quelques one foot double backflips au p’tit déj.', '2023-07-11 16:23:37', '2023-07-11 16:23:37', 'One-Foot-Tricks'),
(70, 3, 3, 'Switch Backside Rodeo', 'Si l’univers du snowboard a jamais disposé d’un scientifique, alors c’était David Benedek. Personne mieux que lui n’a su comment monter un kicker pour qu’un trick marche bien. En musique, on qualifie cela d’expérimental. Ce n’est pas un hasard si c’est précisément lui qui a eu l’idée de faire un switch BS rodeo.', '2023-07-11 16:24:26', '2023-07-11 16:24:26', 'Switch-Backside-Rodeo'),
(71, 3, 3, 'BS 540 Seatbelt', 'Hitsch aurait tout aussi bien pu faire de la danse classique mais il s’est décidé pour la neige. Peut-être tout simplement parce qu’en Engadine, les montagnes sont plus séduisantes que les gymnases. Quoi qu’il en soit, quiconque arrive à attraper aussi tranquillement l’arrière de la planche avec la main avant pendant un BS 5 dans un half-pipe sans s’ouvrir les lèvres sur le coping devrait occuper une chaire à Cambridge sur les prodiges de la coordination.', '2023-07-11 16:25:42', '2023-07-11 16:25:42', 'BS-540-Seatbelt'),
(72, 6, 3, 'FS 720 Japan', 'Si, dans le monde du snowboard, il y avait aujourd’hui encore quelque chose de comparable au rock’n’roll, Ben Ferguson en serait le Jim Morrison, haut la main. Son riding est radical, sans compromis et beau à voir. Bien entendu, rien ne se fait à moins de 200 km/h, pas même les FS 7 Japan dans le pipe.', '2023-07-11 16:26:59', '2023-07-11 16:26:59', 'FS-720-Japan'),
(73, 3, 3, 'Skate Skills', 'Scott «MacGyver» Stevens n’aurait en fait pas besoin de forfait de remontée. Scott n’aurait même pas besoin d’aller à la montagne. Scott a juste à sortir de chez lui, respirer un bon coup et démarrer. Après trois jours de tournage, son rôle serait plus long et plus créatif que pour ceux qui ont dû passer 20 heures en avion, 10 heures en voiture, 5 heures en Ski-Doo et 2 heures en hélicoptère pour leur séquence.', '2023-07-11 16:28:11', '2023-07-11 16:28:11', 'Skate-Skills'),
(74, 4, 3, 'Switch Method', 'Danny Davis est comme ces meilleurs potes qui peuvent faire tous les tricks avec juste un tout petit plus de classe que toi. Aussi difficiles ou aussi faciles soient-ils. Si un nombre incalculable de blessures ne l’avait pas cloué au lit, il aurait mis sens dessus dessous le monde de la compétition en pipe. Heureusement qu’il y a la vidéo. Et puis on peut quand même se faire une compétition de temps en temps. Et alors on peut y mettre un peu de switch method pour faire tomber les juges à la renverse.', '2023-07-11 16:29:11', '2023-07-11 16:29:11', 'Switch-Method'),
(75, 3, 3, 'McTwist', 'Terje se sent mieux dans les transitions que Trump dans sa tour. Pas étonnant, il a détenu pendant longtemps le record du highest air. En mars 2007 à Oslo, il s’est catapulté à un bon 9,8 mètres sur un quarterpipe. Pendant le saut, l’altitude l’a surpris lui-même, c’est pourquoi il a rapidement transformé la méthode prévue en un BS 360. Pourquoi se priver quand on peut. Les McTwists dans un half-pipe par contre c’est plutôt comme une fête d’anniversaire. On a besoin d’un peu d’alley-oop et de chicken wings pour trouver le frisson.', '2023-07-11 16:30:04', '2023-07-11 16:30:04', 'McTwist'),
(76, 3, 3, 'Buttered Tricks', 'Que faire quand passer les kickers devient monotone? Facile, on rend l’approche plus difficile. C’est du moins ce que s’est dit Jussi quand il a filmé son rôle pour Afterbang (Robot Food; 2002). Concrètement, ça veut dire faire du buttering à gogo. Pour Jussi, ce n’est pas vraiment un problème même avant un switch backside 900.', '2023-07-11 16:31:07', '2023-07-11 16:31:07', 'Buttered-Tricks'),
(77, 4, 3, 'Lobster Flip', 'Nommer son trick typique d’après sa propre marque de snowboard est plutôt osé. Les mômes regardent la vidéo, se disent «ouaouh», essaient d’imiter l’acrobatie et avant ça vont s’acheter la planche qu’il faut. D’apparence innocent comme un agneau, Halldor est en fait le businessman le plus dur à cuire d’Islande. Tout cela sans le vouloir évidemment.', '2023-07-11 16:32:01', '2023-07-11 16:32:01', 'Lobster-Flip'),
(78, 3, 3, 'FS 900', 'Quand le style est vraiment original, on le reconnaît même dans les tricks banals. Vous en voulez l’exemple parfait? Travis Parker. Il fait un FS 900 (aujourd’hui aussi banal que l’était l’indy il y a 20 ans) depuis la carre front, tient le nose et pendant un instant le monde s’immobilise. Que Travis soit original est de toute manière indiscutable. Qui d’autre annule du jour au lendemain les contrats avec tous ses sponsors pour devenir cuisinier de sushis?', '2023-07-11 16:32:54', '2023-07-11 16:32:54', 'FS-900'),
(79, 3, 3, 'Layback', 'This one is probably one of the simplest as it requires you to get some momentum while going down the hill.\r\n\r\nAt some point, maybe when trying to get under an object, lean back till you are laying against the ground.\r\n\r\nYou will slide down the slope with your back on the ground. The difficult part now is to stand up.\r\n\r\nThe easiest way is to use your arms and while still sliding push yourself up.\r\n\r\nMAJ Ultime', '2023-07-11 16:34:14', '2023-07-12 21:43:01', 'Layback'),
(83, 2, 7, 'Davy Snow Trick', 'Une description.\r\n\r\nUne mise à jour.', '2023-07-13 17:44:19', '2023-07-13 17:44:37', 'Davy-Snow-Trick');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8CDE57295E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(3, 'Flips'),
(1, 'Grabs'),
(2, 'Les Rotations'),
(7, 'Old school'),
(6, 'One foot tricks'),
(4, 'Rotations désaxées '),
(5, 'Slides');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_in_date` datetime NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D6495E237E06` (`name`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `roles`, `password`, `sign_in_date`, `is_verified`) VALUES
(1, 'Admin', 'admin@gmail.com', '[\"ROLE_USER\"]', '$2y$13$anc/dFzxuhIvlMK/Au1F.usRjlzd.73yJQ/kbM04pKhxs1aeEK7oW', '2023-07-10 19:58:37', 1),
(2, 'Alexandre', 'alex@gmail.com', '[\"ROLE_USER\"]', '$2y$13$KXsQ277v8k7C0SHFOXswsuNxU/HgE1jrM8h.f5INDnQVMj/LphkGq', '2023-07-11 15:32:45', 0),
(3, 'AlexDosseto', 'alexdoss@gmail.com', '[\"ROLE_USER\"]', '$2y$13$gIzkeIMohiBXk.sthtA4ve3ZnFCVQBdwvV3VyjQ7Yv5Ew82FKYieW', '2023-07-11 15:39:59', 0),
(4, 'Totodu13', 'toto@toto.com', '[\"ROLE_USER\"]', '$2y$13$Dcw.gflcIbNNJx5JyUfeF.B5anVT4tV/3ofeAgqh6OW2/k4akKWly', '2023-07-11 15:43:30', 0),
(5, 'AlexandreSnow', 'Alexsnow@gmail.com', '[\"ROLE_USER\"]', '$2y$13$iIBE/AEUGqe6lTMNLBLiN.onrLX6CePGsrA/OjOzAzs9K3.ldg/Wq', '2023-07-11 17:11:40', 1),
(6, 'Testdu13', 'test@gmail.com', '[\"ROLE_USER\"]', '$2y$13$CA8DhSj8V3/v9bldIsehlOywKRfMKGFBEqfrr83gRCn2dpgA49wPq', '2023-07-13 16:19:55', 1),
(7, 'DavySnow', 'davysnow@gmail.com', '[\"ROLE_USER\"]', '$2y$13$Kpm20Ftra3EDoT6TlHpYuOLg3Jd5BG4ZLb2jYdbOEwZddwlVvOOGq', '2023-07-13 17:42:53', 1);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trick_id` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7CC7DA2CB281BE2E` (`trick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `trick_id`, `url`) VALUES
(287, 60, 'https://www.youtube.com/embed/UcamamLlbPg'),
(288, 61, 'https://www.youtube.com/embed/UcamamLlbPg'),
(289, 62, 'https://www.youtube.com/embed/OpC53Tjwfyg'),
(290, 63, 'https://www.youtube.com/embed/6yA3XqjTh_w'),
(291, 64, 'https://www.youtube.com/embed/JMS2PGAFMcE'),
(292, 65, 'https://www.youtube.com/embed/N3ddt_yoxts'),
(293, 66, 'https://www.youtube.com/embed/tgY0Zo2vI0g'),
(294, 67, 'https://www.youtube.com/embed/Kv0Ah4Xd8d0'),
(295, 68, 'https://www.youtube.com/embed/AMWeOoJ5Cmw'),
(296, 69, 'https://www.youtube.com/embed/h0UtyOX9p90'),
(297, 70, 'https://www.youtube.com/embed/yK5GFfqeYfU'),
(298, 71, 'https://www.youtube.com/embed/BH42KlQ0QsE'),
(299, 72, 'https://www.youtube.com/embed/XkkUSEz3I00'),
(300, 73, 'https://www.youtube.com/embed/8KotvBY28Mo'),
(301, 74, 'https://www.youtube.com/embed/2RlDSbxsnyc'),
(302, 75, 'https://www.youtube.com/embed/wlEY-D2F6Yk'),
(303, 76, 'https://www.youtube.com/embed/G9qlTInKbNE'),
(304, 77, 'https://www.youtube.com/embed/q-RAJnV1dfg'),
(305, 78, 'https://www.youtube.com/embed/IPc7cJHt1rc'),
(306, 79, 'https://www.youtube.com/embed/JkARkEOzwIE'),
(310, 83, 'https://www.youtube.com/embed/QMrelVooJR4');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_14B78418B281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `FK_D8F0A91EC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `FK_D8F0A91EF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
