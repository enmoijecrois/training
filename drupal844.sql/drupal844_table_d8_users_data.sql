
-- --------------------------------------------------------

--
-- Structure de la table `d8_users_data`
--

DROP TABLE IF EXISTS `d8_users_data`;
CREATE TABLE IF NOT EXISTS `d8_users_data` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Primary key: d8_users.uid for user.',
  `module` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the module declaring the variable.',
  `name` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The identifier of the data.',
  `value` longblob COMMENT 'The value.',
  `serialized` tinyint(3) UNSIGNED DEFAULT '0' COMMENT 'Whether value is serialized.',
  PRIMARY KEY (`uid`,`module`,`name`),
  KEY `module` (`module`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores module data as key/value pairs per user.';

--
-- Déchargement des données de la table `d8_users_data`
--

INSERT INTO `d8_users_data` (`uid`, `module`, `name`, `value`, `serialized`) VALUES
(1, 'contact', 'enabled', 0x31, 0),
(1, 'webform', 'webform.element.message', 0x613a313a7b733a32353a22776562666f726d2e68656c702e696e74726f64756374696f6e223b623a313b7d, 1),
(49, 'contact', 'enabled', 0x31, 0);
