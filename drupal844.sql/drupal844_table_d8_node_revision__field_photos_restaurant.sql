
-- --------------------------------------------------------

--
-- Structure de la table `d8_node_revision__field_photos_restaurant`
--

DROP TABLE IF EXISTS `d8_node_revision__field_photos_restaurant`;
CREATE TABLE IF NOT EXISTS `d8_node_revision__field_photos_restaurant` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_photos_restaurant_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the file entity.',
  `field_photos_restaurant_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `field_photos_restaurant_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `field_photos_restaurant_width` int(10) UNSIGNED DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_photos_restaurant_height` int(10) UNSIGNED DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_photos_restaurant_target_id` (`field_photos_restaurant_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_photos…';

--
-- Déchargement des données de la table `d8_node_revision__field_photos_restaurant`
--

INSERT INTO `d8_node_revision__field_photos_restaurant` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_photos_restaurant_target_id`, `field_photos_restaurant_alt`, `field_photos_restaurant_title`, `field_photos_restaurant_width`, `field_photos_restaurant_height`) VALUES
('restaurant', 0, 160, 160, 'en', 0, 179, '', '', 960, 435),
('restaurant', 0, 160, 160, 'en', 1, 180, '', '', 960, 435),
('restaurant', 0, 160, 160, 'en', 2, 181, '', '', 960, 435),
('restaurant', 0, 160, 160, 'en', 3, 182, '', '', 960, 435),
('restaurant', 0, 161, 161, 'en', 0, 211, '', '', 640, 480),
('restaurant', 0, 161, 161, 'en', 1, 212, '', '', 640, 480),
('restaurant', 0, 161, 161, 'en', 2, 188, '', '', 640, 480),
('restaurant', 0, 161, 161, 'en', 3, 190, '', '', 640, 480),
('restaurant', 0, 161, 161, 'en', 4, 192, '', '', 640, 480),
('restaurant', 0, 162, 162, 'en', 0, 193, '', '', 714, 473),
('restaurant', 0, 162, 162, 'en', 1, 194, '', '', 714, 473),
('restaurant', 0, 162, 162, 'en', 2, 195, '', '', 714, 473),
('restaurant', 0, 162, 162, 'en', 3, 196, '', '', 714, 473),
('restaurant', 0, 163, 163, 'en', 0, 197, '', '', 2362, 1906),
('restaurant', 0, 163, 163, 'en', 1, 198, '', '', 2362, 1906),
('restaurant', 0, 163, 163, 'en', 2, 199, '', '', 2362, 1906);
