
-- --------------------------------------------------------

--
-- Structure de la table `d8_hello_node_history`
--

DROP TABLE IF EXISTS `d8_hello_node_history`;
CREATE TABLE IF NOT EXISTS `d8_hello_node_history` (
  `hid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique history ID.',
  `nid` int(10) UNSIGNED NOT NULL COMMENT 'Node ID.',
  `uid` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT 'Timestamp of node update.',
  PRIMARY KEY (`hid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='Stores node update history.';

--
-- Déchargement des données de la table `d8_hello_node_history`
--

INSERT INTO `d8_hello_node_history` (`hid`, `nid`, `uid`, `update_time`) VALUES
(1, 98, 1, 1517836901);
