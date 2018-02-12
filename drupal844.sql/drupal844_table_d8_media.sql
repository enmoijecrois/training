
-- --------------------------------------------------------

--
-- Structure de la table `d8_media`
--

DROP TABLE IF EXISTS `d8_media`;
CREATE TABLE IF NOT EXISTS `d8_media` (
  `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vid` int(10) UNSIGNED DEFAULT NULL,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `media_field__uuid__value` (`uuid`),
  UNIQUE KEY `media__vid` (`vid`),
  KEY `media_field__bundle__target_id` (`bundle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for media entities.';
