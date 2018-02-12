
-- --------------------------------------------------------

--
-- Structure de la table `d8_taxonomy_term_hierarchy`
--

DROP TABLE IF EXISTS `d8_taxonomy_term_hierarchy`;
CREATE TABLE IF NOT EXISTS `d8_taxonomy_term_hierarchy` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Primary Key: The d8_taxonomy_term_data.tid of the term.',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Primary Key: The d8_taxonomy_term_data.tid of the term''s parent. 0 indicates no parent.',
  PRIMARY KEY (`tid`,`parent`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores the hierarchical relationship between terms.';

--
-- Déchargement des données de la table `d8_taxonomy_term_hierarchy`
--

INSERT INTO `d8_taxonomy_term_hierarchy` (`tid`, `parent`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0);
