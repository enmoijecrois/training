
-- --------------------------------------------------------

--
-- Structure de la table `d8_node__field_photos`
--

DROP TABLE IF EXISTS `d8_node__field_photos`;
CREATE TABLE IF NOT EXISTS `d8_node__field_photos` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_photos_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the file entity.',
  `field_photos_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `field_photos_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `field_photos_width` int(10) UNSIGNED DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_photos_height` int(10) UNSIGNED DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_photos_target_id` (`field_photos_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field field_photos.';

--
-- Déchargement des données de la table `d8_node__field_photos`
--

INSERT INTO `d8_node__field_photos` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_photos_target_id`, `field_photos_alt`, `field_photos_title`, `field_photos_width`, `field_photos_height`) VALUES
('hotel', 0, 153, 153, 'en', 0, 156, '', '', 299, 450),
('hotel', 0, 153, 153, 'en', 1, 157, '', '', 299, 450),
('hotel', 0, 153, 153, 'en', 2, 158, '', '', 299, 450),
('hotel', 0, 153, 153, 'en', 3, 159, '', '', 299, 450),
('hotel', 0, 153, 153, 'en', 4, 160, '', '', 299, 450),
('hotel', 0, 154, 154, 'en', 0, 161, '', '', 1920, 1000),
('hotel', 0, 154, 154, 'en', 1, 162, '', '', 1920, 1000),
('hotel', 0, 154, 154, 'en', 2, 163, '', '', 1920, 1000),
('hotel', 0, 155, 155, 'en', 0, 164, '', '', 4272, 2848),
('hotel', 0, 155, 155, 'en', 1, 165, '', '', 4272, 2848),
('hotel', 0, 155, 155, 'en', 2, 166, '', '', 4272, 2848),
('hotel', 0, 155, 155, 'en', 3, 167, '', '', 4272, 2848),
('hotel', 0, 156, 156, 'en', 0, 168, '', '', 800, 450),
('hotel', 0, 156, 156, 'en', 1, 169, '', '', 800, 450),
('hotel', 0, 156, 156, 'en', 2, 170, '', '', 800, 450),
('hotel', 0, 156, 156, 'en', 3, 171, '', '', 800, 450),
('hotel', 0, 156, 156, 'en', 4, 172, '', '', 800, 450),
('hotel', 0, 157, 157, 'en', 0, 173, '', '', 1394, 472),
('hotel', 0, 157, 157, 'en', 1, 174, '', '', 1394, 472),
('hotel', 0, 157, 157, 'en', 2, 175, '', '', 1394, 472),
('hotel', 0, 158, 158, 'en', 0, 176, '', '', 1024, 683),
('hotel', 0, 158, 158, 'en', 1, 177, '', '', 1024, 683),
('hotel', 0, 158, 158, 'en', 2, 178, '', '', 1024, 683);
