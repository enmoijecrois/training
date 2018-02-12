
-- --------------------------------------------------------

--
-- Structure de la table `d8_webform_submission_log`
--

DROP TABLE IF EXISTS `d8_webform_submission_log`;
CREATE TABLE IF NOT EXISTS `d8_webform_submission_log` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique log event ID.',
  `webform_id` varchar(32) NOT NULL COMMENT 'The webform id.',
  `sid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The webform submission id.',
  `handler_id` varchar(64) DEFAULT NULL COMMENT 'The webform handler id.',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The d8_users.uid of the user who triggered the event.',
  `operation` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Type of operation, for example "save", "sent", or "update."',
  `message` longtext NOT NULL COMMENT 'Text of log message.',
  `data` longblob NOT NULL COMMENT 'Serialized array of data.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp of when event occurred.',
  PRIMARY KEY (`lid`),
  KEY `webform_id` (`webform_id`),
  KEY `sid` (`sid`),
  KEY `uid` (`uid`),
  KEY `handler_id` (`handler_id`),
  KEY `handler_id_operation` (`handler_id`,`operation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table that contains logs of all webform submission events.';
