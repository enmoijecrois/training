
-- --------------------------------------------------------

--
-- Structure de la table `d8_block_content_field_data`
--

DROP TABLE IF EXISTS `d8_block_content_field_data`;
CREATE TABLE IF NOT EXISTS `d8_block_content_field_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`,`langcode`),
  KEY `block_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  KEY `block_content__revision_id` (`revision_id`),
  KEY `block_content_field__type__target_id` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for block_content entities.';

--
-- Déchargement des données de la table `d8_block_content_field_data`
--

INSERT INTO `d8_block_content_field_data` (`id`, `revision_id`, `type`, `langcode`, `info`, `changed`, `default_langcode`, `revision_translation_affected`) VALUES
(1, 1, 'basic', 'en', 'Menu filter hotel category', 1516364840, 1, 1),
(2, 2, 'basic', 'en', 'Contact', 1516615044, 1, 1),
(3, 3, 'basic', 'en', 'Welcome', 1516624252, 1, 1),
(4, 4, 'basic', 'en', 'Drupal 8', 1516699152, 1, 1);
