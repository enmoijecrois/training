
-- --------------------------------------------------------

--
-- Structure de la table `d8_media_revision`
--

DROP TABLE IF EXISTS `d8_media_revision`;
CREATE TABLE IF NOT EXISTS `d8_media_revision` (
  `mid` int(10) UNSIGNED NOT NULL,
  `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_timestamp` int(11) DEFAULT NULL,
  `revision_log` longtext,
  PRIMARY KEY (`vid`),
  KEY `media__mid` (`mid`),
  KEY `media_field__revision_uid__target_id` (`revision_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for media entities.';
