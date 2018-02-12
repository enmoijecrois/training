
-- --------------------------------------------------------

--
-- Structure de la table `d8_webform_submission`
--

DROP TABLE IF EXISTS `d8_webform_submission`;
CREATE TABLE IF NOT EXISTS `d8_webform_submission` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `webform_id` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `serial` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `uri` varchar(2000) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `in_draft` tinyint(4) DEFAULT NULL,
  `current_page` varchar(128) DEFAULT NULL,
  `remote_addr` varchar(128) DEFAULT NULL,
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `entity_type` varchar(32) CHARACTER SET ascii DEFAULT NULL,
  `entity_id` varchar(255) DEFAULT NULL,
  `sticky` tinyint(4) DEFAULT NULL,
  `notes` longtext,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `webform_submission_field__uuid__value` (`uuid`),
  KEY `webform_submission_field__webform_id__target_id` (`webform_id`),
  KEY `webform_submission_field__uid__target_id` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for webform_submission entities.';
