
-- --------------------------------------------------------

--
-- Structure de la table `d8_shortcut`
--

DROP TABLE IF EXISTS `d8_shortcut`;
CREATE TABLE IF NOT EXISTS `d8_shortcut` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shortcut_set` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortcut_field__uuid__value` (`uuid`),
  KEY `shortcut_field__shortcut_set__target_id` (`shortcut_set`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='The base table for shortcut entities.';

--
-- Déchargement des données de la table `d8_shortcut`
--

INSERT INTO `d8_shortcut` (`id`, `shortcut_set`, `uuid`, `langcode`) VALUES
(1, 'default', '011123d3-64be-45ec-88e1-9735a2e64820', 'en');
