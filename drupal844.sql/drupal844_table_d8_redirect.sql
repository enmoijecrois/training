
-- --------------------------------------------------------

--
-- Structure de la table `d8_redirect`
--

DROP TABLE IF EXISTS `d8_redirect`;
CREATE TABLE IF NOT EXISTS `d8_redirect` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `language` varchar(12) CHARACTER SET ascii NOT NULL,
  `hash` varchar(64) DEFAULT NULL,
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `redirect_source__path` varchar(2048) DEFAULT NULL COMMENT 'The source path',
  `redirect_source__query` longblob COMMENT 'Serialized array of path queries',
  `redirect_redirect__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `redirect_redirect__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `redirect_redirect__options` longblob COMMENT 'Serialized array of options for the link.',
  `status_code` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `redirect_field__uuid__value` (`uuid`),
  UNIQUE KEY `hash` (`hash`),
  KEY `redirect_field__uid__target_id` (`uid`),
  KEY `redirect_field__redirect_source__path` (`redirect_source__path`(50)),
  KEY `redirect_field__redirect_redirect__uri` (`redirect_redirect__uri`(30)),
  KEY `source_language` (`redirect_source__path`(191),`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for redirect entities.';
