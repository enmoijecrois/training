
-- --------------------------------------------------------

--
-- Structure de la table `d8_annonce`
--

DROP TABLE IF EXISTS `d8_annonce`;
CREATE TABLE IF NOT EXISTS `d8_annonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `name` varchar(50) DEFAULT NULL,
  `langcode` varchar(12) CHARACTER SET ascii DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `annonce_field__uuid__value` (`uuid`),
  KEY `annonce_field__user_id__target_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='The base table for annonce entities.';

--
-- Déchargement des données de la table `d8_annonce`
--

INSERT INTO `d8_annonce` (`id`, `uuid`, `user_id`, `name`, `langcode`, `created`, `changed`) VALUES
(1, 'ca5b24ad-1415-4a42-a19a-0bba1fb30e38', 1, 'Clou tordu', 'und', 1517846918, 1517846918),
(2, 'a751ba89-ab55-4b00-a940-c1027f35e637', 49, 'test', 'fr', 1518018850, 1518018850);
