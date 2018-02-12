
-- --------------------------------------------------------

--
-- Structure de la table `d8_history`
--

DROP TABLE IF EXISTS `d8_history`;
CREATE TABLE IF NOT EXISTS `d8_history` (
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'The d8_users.uid that read the d8_node nid.',
  `nid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The d8_node.nid that was read.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp at which the read occurred.',
  PRIMARY KEY (`uid`,`nid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A record of which d8_users have read which d8_nodes.';

--
-- Déchargement des données de la table `d8_history`
--

INSERT INTO `d8_history` (`uid`, `nid`, `timestamp`) VALUES
(1, 1, 1517562783),
(1, 2, 1516879229),
(1, 11, 1517562741),
(1, 65, 1516791757),
(1, 98, 1517825614),
(1, 136, 1516894245),
(1, 153, 1516621519),
(1, 154, 1516363826),
(1, 155, 1516361128),
(1, 156, 1516375347),
(1, 157, 1516363161),
(1, 158, 1517824429),
(1, 160, 1516372590),
(1, 161, 1516696701),
(1, 162, 1516367084),
(1, 163, 1516972736);
