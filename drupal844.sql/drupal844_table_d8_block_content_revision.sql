
-- --------------------------------------------------------

--
-- Structure de la table `d8_block_content_revision`
--

DROP TABLE IF EXISTS `d8_block_content_revision`;
CREATE TABLE IF NOT EXISTS `d8_block_content_revision` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_user` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_created` int(11) DEFAULT NULL,
  `revision_log` longtext,
  PRIMARY KEY (`revision_id`),
  KEY `block_content__id` (`id`),
  KEY `block_content_field__revision_user__target_id` (`revision_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for block_content entities.';

--
-- Déchargement des données de la table `d8_block_content_revision`
--

INSERT INTO `d8_block_content_revision` (`id`, `revision_id`, `langcode`, `revision_user`, `revision_created`, `revision_log`) VALUES
(1, 1, 'en', NULL, 1516364840, NULL),
(2, 2, 'en', NULL, 1516615044, NULL),
(3, 3, 'en', NULL, 1516624088, NULL),
(4, 4, 'en', NULL, 1516632488, NULL);
