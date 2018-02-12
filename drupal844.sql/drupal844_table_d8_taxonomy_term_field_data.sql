
-- --------------------------------------------------------

--
-- Structure de la table `d8_taxonomy_term_field_data`
--

DROP TABLE IF EXISTS `d8_taxonomy_term_field_data`;
CREATE TABLE IF NOT EXISTS `d8_taxonomy_term_field_data` (
  `tid` int(10) UNSIGNED NOT NULL,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) NOT NULL,
  `description__value` longtext,
  `description__format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`tid`,`langcode`),
  KEY `taxonomy_term__id__default_langcode__langcode` (`tid`,`default_langcode`,`langcode`),
  KEY `taxonomy_term_field__name` (`name`(191)),
  KEY `taxonomy_term__tree` (`vid`,`weight`,`name`(191)),
  KEY `taxonomy_term__vid_name` (`vid`,`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for taxonomy_term entities.';

--
-- Déchargement des données de la table `d8_taxonomy_term_field_data`
--

INSERT INTO `d8_taxonomy_term_field_data` (`tid`, `vid`, `langcode`, `name`, `description__value`, `description__format`, `weight`, `changed`, `default_langcode`) VALUES
(1, 'hotel_type', 'en', 'Country', NULL, NULL, 0, 1516374242, 1),
(2, 'hotel_type', 'en', 'City', NULL, NULL, 0, 1516374278, 1),
(3, 'hotel_type', 'en', 'Charme', NULL, NULL, 0, 1516374287, 1),
(4, 'hotel_type', 'en', 'Design', NULL, NULL, 0, 1516374295, 1);
