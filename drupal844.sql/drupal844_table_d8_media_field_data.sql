
-- --------------------------------------------------------

--
-- Structure de la table `d8_media_field_data`
--

DROP TABLE IF EXISTS `d8_media_field_data`;
CREATE TABLE IF NOT EXISTS `d8_media_field_data` (
  `mid` int(10) UNSIGNED NOT NULL,
  `vid` int(10) UNSIGNED NOT NULL,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thumbnail__target_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the file entity.',
  `thumbnail__alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `thumbnail__title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `thumbnail__width` int(10) UNSIGNED DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `thumbnail__height` int(10) UNSIGNED DEFAULT NULL COMMENT 'The height of the image in pixels.',
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `status` tinyint(4) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mid`,`langcode`),
  KEY `media__id__default_langcode__langcode` (`mid`,`default_langcode`,`langcode`),
  KEY `media__vid` (`vid`),
  KEY `media_field__bundle__target_id` (`bundle`),
  KEY `media_field__thumbnail__target_id` (`thumbnail__target_id`),
  KEY `media_field__uid__target_id` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for media entities.';
