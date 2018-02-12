
-- --------------------------------------------------------

--
-- Structure de la table `d8_taxonomy_term_data`
--

DROP TABLE IF EXISTS `d8_taxonomy_term_data`;
CREATE TABLE IF NOT EXISTS `d8_taxonomy_term_data` (
  `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `taxonomy_term_field__uuid__value` (`uuid`),
  KEY `taxonomy_term_field__vid__target_id` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='The base table for taxonomy_term entities.';

--
-- Déchargement des données de la table `d8_taxonomy_term_data`
--

INSERT INTO `d8_taxonomy_term_data` (`tid`, `vid`, `uuid`, `langcode`) VALUES
(1, 'hotel_type', '7c973c1b-d710-4121-8a12-4b8170eee681', 'en'),
(2, 'hotel_type', 'cb770f19-fff2-46df-8752-254109d42174', 'en'),
(3, 'hotel_type', 'a82cf9e7-082a-4781-98a2-8fb98205c23c', 'en'),
(4, 'hotel_type', '108b44ee-ad02-4ac9-aa3e-73313aa82c14', 'en');
