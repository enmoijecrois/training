
-- --------------------------------------------------------

--
-- Structure de la table `d8_node_revision__webform`
--

DROP TABLE IF EXISTS `d8_node_revision__webform`;
CREATE TABLE IF NOT EXISTS `d8_node_revision__webform` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `webform_target_id` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the webform entity.',
  `webform_default_data` text COMMENT 'Default submission data.',
  `webform_status` varchar(20) DEFAULT NULL COMMENT 'Flag to control whether this webform should be open, closed, or scheduled for new submissions.',
  `webform_open` varchar(20) DEFAULT NULL COMMENT 'The open date/time.',
  `webform_close` varchar(20) DEFAULT NULL COMMENT 'The close date/time.',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `webform_target_id` (`webform_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field webform.';
