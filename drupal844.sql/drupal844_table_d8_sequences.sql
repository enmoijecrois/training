
-- --------------------------------------------------------

--
-- Structure de la table `d8_sequences`
--

DROP TABLE IF EXISTS `d8_sequences`;
CREATE TABLE IF NOT EXISTS `d8_sequences` (
  `value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The value of the sequence.',
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COMMENT='Stores IDs.';

--
-- Déchargement des données de la table `d8_sequences`
--

INSERT INTO `d8_sequences` (`value`) VALUES
(56);
