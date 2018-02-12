
-- --------------------------------------------------------

--
-- Structure de la table `d8_shortcut_field_data`
--

DROP TABLE IF EXISTS `d8_shortcut_field_data`;
CREATE TABLE IF NOT EXISTS `d8_shortcut_field_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `shortcut_set` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`,`langcode`),
  KEY `shortcut__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  KEY `shortcut_field__shortcut_set__target_id` (`shortcut_set`),
  KEY `shortcut_field__link__uri` (`link__uri`(30))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for shortcut entities.';

--
-- Déchargement des données de la table `d8_shortcut_field_data`
--

INSERT INTO `d8_shortcut_field_data` (`id`, `shortcut_set`, `langcode`, `title`, `weight`, `link__uri`, `link__title`, `link__options`, `default_langcode`) VALUES
(1, 'default', 'en', 'Add content', -20, 'internal:/node/add', NULL, 0x613a303a7b7d, 1);
