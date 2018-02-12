
-- --------------------------------------------------------

--
-- Structure de la table `d8_shortcut_set_users`
--

DROP TABLE IF EXISTS `d8_shortcut_set_users`;
CREATE TABLE IF NOT EXISTS `d8_shortcut_set_users` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The d8_users.uid for this set.',
  `set_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The d8_shortcut_set.set_name that will be displayed for this user.',
  PRIMARY KEY (`uid`),
  KEY `set_name` (`set_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maps users to shortcut sets.';
