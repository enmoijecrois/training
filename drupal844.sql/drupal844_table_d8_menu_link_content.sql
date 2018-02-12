
-- --------------------------------------------------------

--
-- Structure de la table `d8_menu_link_content`
--

DROP TABLE IF EXISTS `d8_menu_link_content`;
CREATE TABLE IF NOT EXISTS `d8_menu_link_content` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_link_content_field__uuid__value` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='The base table for menu_link_content entities.';

--
-- Déchargement des données de la table `d8_menu_link_content`
--

INSERT INTO `d8_menu_link_content` (`id`, `bundle`, `uuid`, `langcode`) VALUES
(1, 'menu_link_content', 'da81de55-1832-448c-b366-de30fd4d1a29', 'en'),
(3, 'menu_link_content', '7af35336-8e6f-45af-b188-d9bcaf92bd83', 'en'),
(4, 'menu_link_content', 'df410a8c-ce64-4c22-b193-e92cf46dadca', 'en'),
(5, 'menu_link_content', 'da9d5ce6-ec4a-4a61-ba1c-f1bcce5e5780', 'en'),
(6, 'menu_link_content', '977cc779-97cb-4a8e-92df-ede30b18dd15', 'en');
