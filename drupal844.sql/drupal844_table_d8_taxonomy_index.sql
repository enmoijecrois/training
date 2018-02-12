
-- --------------------------------------------------------

--
-- Structure de la table `d8_taxonomy_index`
--

DROP TABLE IF EXISTS `d8_taxonomy_index`;
CREATE TABLE IF NOT EXISTS `d8_taxonomy_index` (
  `nid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The d8_node.nid this record tracks.',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The term ID.',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether the node is published (visible to non-administrators).',
  `sticky` tinyint(4) DEFAULT '0' COMMENT 'Boolean indicating whether the node is sticky.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when the node was created.',
  PRIMARY KEY (`nid`,`tid`),
  KEY `term_node` (`tid`,`status`,`sticky`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maintains denormalized information about node/term…';

--
-- Déchargement des données de la table `d8_taxonomy_index`
--

INSERT INTO `d8_taxonomy_index` (`nid`, `tid`, `status`, `sticky`, `created`) VALUES
(154, 1, 1, 0, 1516360967),
(155, 1, 1, 0, 1516361045),
(158, 1, 1, 0, 1516361258),
(153, 2, 1, 0, 1516360805),
(156, 2, 1, 0, 1516361133),
(157, 2, 1, 0, 1516361195),
(153, 3, 1, 0, 1516360805),
(158, 3, 1, 0, 1516361258),
(154, 4, 1, 0, 1516360967),
(156, 4, 1, 0, 1516361133);
