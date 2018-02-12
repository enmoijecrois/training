
-- --------------------------------------------------------

--
-- Structure de la table `d8_block_content_field_revision`
--

DROP TABLE IF EXISTS `d8_block_content_field_revision`;
CREATE TABLE IF NOT EXISTS `d8_block_content_field_revision` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`,`langcode`),
  KEY `block_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for block_content entities.';

--
-- Déchargement des données de la table `d8_block_content_field_revision`
--

INSERT INTO `d8_block_content_field_revision` (`id`, `revision_id`, `langcode`, `info`, `changed`, `default_langcode`, `revision_translation_affected`) VALUES
(1, 1, 'en', 'Menu filter hotel category', 1516364840, 1, 1),
(2, 2, 'en', 'Contact', 1516615044, 1, 1),
(3, 3, 'en', 'Welcome', 1516624252, 1, 1),
(4, 4, 'en', 'Drupal 8', 1516699152, 1, 1);
