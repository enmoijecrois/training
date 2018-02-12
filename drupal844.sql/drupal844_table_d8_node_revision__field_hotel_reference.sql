
-- --------------------------------------------------------

--
-- Structure de la table `d8_node_revision__field_hotel_reference`
--

DROP TABLE IF EXISTS `d8_node_revision__field_hotel_reference`;
CREATE TABLE IF NOT EXISTS `d8_node_revision__field_hotel_reference` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_hotel_reference_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_hotel_reference_target_id` (`field_hotel_reference_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_hotel…';

--
-- Déchargement des données de la table `d8_node_revision__field_hotel_reference`
--

INSERT INTO `d8_node_revision__field_hotel_reference` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_hotel_reference_target_id`) VALUES
('restaurant', 0, 160, 160, 'en', 0, 153),
('restaurant', 0, 163, 163, 'en', 0, 156);
