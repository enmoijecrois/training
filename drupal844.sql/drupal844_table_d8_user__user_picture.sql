
-- --------------------------------------------------------

--
-- Structure de la table `d8_user__user_picture`
--

DROP TABLE IF EXISTS `d8_user__user_picture`;
CREATE TABLE IF NOT EXISTS `d8_user__user_picture` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `user_picture_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the file entity.',
  `user_picture_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `user_picture_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `user_picture_width` int(10) UNSIGNED DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `user_picture_height` int(10) UNSIGNED DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `user_picture_target_id` (`user_picture_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for user field user_picture.';

--
-- Déchargement des données de la table `d8_user__user_picture`
--

INSERT INTO `d8_user__user_picture` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `user_picture_target_id`, `user_picture_alt`, `user_picture_title`, `user_picture_width`, `user_picture_height`) VALUES
('user', 0, 1, 1, 'en', 0, 214, '', '', 60, 61),
('user', 0, 7, 7, 'en', 0, 201, 'Meus persto suscipere. Defui dignissim esse feugiat gemino hendrerit os sino tation voco.', 'Causa commodo luctus. Abdo metuo nimis.', 382, 306),
('user', 0, 8, 8, 'en', 0, 202, 'Dolus haero obruo pneum verto vicis.', 'Abbas defui erat humo ibidem in plaga refero.', 482, 387),
('user', 0, 9, 9, 'en', 0, 203, 'Adipiscing autem ideo immitto laoreet lobortis melior occuro pagus.', 'Abdo iusto vicis. Dolor et neo pecus refoveo roto utinam volutpat.', 591, 262),
('user', 0, 10, 10, 'en', 0, 204, 'Aliquip eu quia venio.', 'Melior plaga venio wisi.', 505, 451),
('user', 0, 11, 11, 'en', 0, 205, 'Causa dolor proprius quibus sit vereor.', 'Appellatio cogo decet incassum olim paulatim quia volutpat.', 406, 466),
('user', 0, 12, 12, 'en', 0, 206, 'Autem dolus gilvus hendrerit in praesent roto sit.', 'Consectetuer genitus interdico macto velit.', 411, 273),
('user', 0, 13, 13, 'en', 0, 207, 'Aptent cogo ibidem quidne roto tamen torqueo validus virtus.', 'Causa consectetuer sit. Abigo incassum pala plaga refero velit.', 490, 324),
('user', 0, 14, 14, 'en', 0, 208, 'Elit enim eum facilisi iaceo inhibeo melior.', 'Adipiscing consequat conventio exputo facilisi nunc.', 566, 413),
('user', 0, 15, 15, 'en', 0, 209, 'Accumsan blandit caecus conventio dolore exputo gemino pala vulpes.', 'Autem bene eu gilvus lobortis ludus quibus similis singularis tation.', 568, 443),
('user', 0, 16, 16, 'en', 0, 210, 'Defui eligo ex lenis quidem vulpes.', 'Aliquip nimis secundum. Iusto molior quibus.', 279, 553);
