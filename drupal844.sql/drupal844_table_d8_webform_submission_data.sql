
-- --------------------------------------------------------

--
-- Structure de la table `d8_webform_submission_data`
--

DROP TABLE IF EXISTS `d8_webform_submission_data`;
CREATE TABLE IF NOT EXISTS `d8_webform_submission_data` (
  `webform_id` varchar(32) NOT NULL COMMENT 'The webform id.',
  `sid` int(10) UNSIGNED NOT NULL COMMENT 'The unique identifier for this submission.',
  `name` varchar(128) NOT NULL COMMENT 'The name of the element.',
  `property` varchar(128) NOT NULL DEFAULT '' COMMENT 'The property of the element''s value.',
  `delta` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The delta of the element''s value.',
  `value` mediumtext NOT NULL COMMENT 'The element''s value.',
  PRIMARY KEY (`sid`,`name`,`property`,`delta`),
  KEY `webform_id` (`webform_id`),
  KEY `sid_webform_id` (`sid`,`webform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores all submitted data for webform submissions.';
