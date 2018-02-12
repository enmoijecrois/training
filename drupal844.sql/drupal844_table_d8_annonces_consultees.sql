
-- --------------------------------------------------------

--
-- Structure de la table `d8_annonces_consultees`
--

DROP TABLE IF EXISTS `d8_annonces_consultees`;
CREATE TABLE IF NOT EXISTS `d8_annonces_consultees` (
  `hid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique history ID.',
  `nid` int(10) UNSIGNED NOT NULL COMMENT 'Node ID.',
  `uid` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `date_consultation` int(10) UNSIGNED NOT NULL COMMENT 'date de consultation des annonces',
  PRIMARY KEY (`hid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='annonces_consultees par l''utilisateur';

--
-- Déchargement des données de la table `d8_annonces_consultees`
--

INSERT INTO `d8_annonces_consultees` (`hid`, `nid`, `uid`, `date_consultation`) VALUES
(1, 1, 1, 1517846922),
(2, 1, 1, 1517910407),
(3, 1, 1, 1517995620),
(4, 1, 1, 1517998700),
(5, 1, 1, 1518018233),
(6, 1, 1, 1518018467),
(7, 1, 1, 1518018629),
(8, 1, 1, 1518018669),
(9, 2, 1, 1518018853);
