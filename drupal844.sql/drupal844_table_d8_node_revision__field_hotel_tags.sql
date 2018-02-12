
-- --------------------------------------------------------

--
-- Structure de la table `d8_node_revision__field_hotel_tags`
--

DROP TABLE IF EXISTS `d8_node_revision__field_hotel_tags`;
CREATE TABLE IF NOT EXISTS `d8_node_revision__field_hotel_tags` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_hotel_tags_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_hotel_tags_target_id` (`field_hotel_tags_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_hotel_tags.';

--
-- Déchargement des données de la table `d8_node_revision__field_hotel_tags`
--

INSERT INTO `d8_node_revision__field_hotel_tags` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_hotel_tags_target_id`) VALUES
('hotel', 0, 153, 153, 'en', 0, 2),
('hotel', 0, 153, 153, 'en', 1, 3),
('hotel', 0, 154, 154, 'en', 0, 1),
('hotel', 0, 154, 154, 'en', 1, 4),
('hotel', 0, 155, 155, 'en', 0, 1),
('hotel', 0, 156, 156, 'en', 0, 2),
('hotel', 0, 156, 156, 'en', 1, 4),
('hotel', 0, 157, 157, 'en', 0, 2),
('hotel', 0, 158, 158, 'en', 0, 1),
('hotel', 0, 158, 158, 'en', 1, 3);
