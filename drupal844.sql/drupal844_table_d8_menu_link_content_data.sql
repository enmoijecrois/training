
-- --------------------------------------------------------

--
-- Structure de la table `d8_menu_link_content_data`
--

DROP TABLE IF EXISTS `d8_menu_link_content_data`;
CREATE TABLE IF NOT EXISTS `d8_menu_link_content_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `external` tinyint(4) DEFAULT NULL,
  `rediscover` tinyint(4) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `expanded` tinyint(4) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`,`langcode`),
  KEY `menu_link_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  KEY `menu_link_content_field__link__uri` (`link__uri`(30))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for menu_link_content entities.';

--
-- Déchargement des données de la table `d8_menu_link_content_data`
--

INSERT INTO `d8_menu_link_content_data` (`id`, `bundle`, `langcode`, `title`, `description`, `menu_name`, `link__uri`, `link__title`, `link__options`, `external`, `rediscover`, `weight`, `expanded`, `enabled`, `parent`, `changed`, `default_langcode`) VALUES
(1, 'menu_link_content', 'en', 'About us', NULL, 'main', 'entity:node/1', '', 0x613a303a7b7d, 0, 0, -49, 0, 1, NULL, 1516870418, 1),
(3, 'menu_link_content', 'en', 'Contact', NULL, 'main', 'internal:/contact', '', 0x613a303a7b7d, 0, 1, -41, 0, 1, NULL, 1517230884, 1),
(4, 'menu_link_content', 'en', 'CGU', NULL, 'footer', 'entity:node/2', '', 0x613a303a7b7d, 0, 0, 0, 0, 1, NULL, 1516375267, 1),
(5, 'menu_link_content', 'en', 'Réserver une table', NULL, 'main', 'internal:/form/reservation-de-table', '', 0x613a303a7b7d, 0, 1, -46, 0, 1, NULL, 1516870418, 1),
(6, 'menu_link_content', 'en', '4 ■', NULL, 'main', 'internal:/four-squares', '', 0x613a303a7b7d, 0, 1, -43, 0, 1, NULL, 1517230884, 1);
