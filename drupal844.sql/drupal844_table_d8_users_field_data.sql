
-- --------------------------------------------------------

--
-- Structure de la table `d8_users_field_data`
--

DROP TABLE IF EXISTS `d8_users_field_data`;
CREATE TABLE IF NOT EXISTS `d8_users_field_data` (
  `uid` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `preferred_langcode` varchar(12) CHARACTER SET ascii DEFAULT NULL,
  `preferred_admin_langcode` varchar(12) CHARACTER SET ascii DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `timezone` varchar(32) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL,
  `login` int(11) DEFAULT NULL,
  `init` varchar(254) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`uid`,`langcode`),
  UNIQUE KEY `user__name` (`name`,`langcode`),
  KEY `user__id__default_langcode__langcode` (`uid`,`default_langcode`,`langcode`),
  KEY `user_field__mail` (`mail`(191)),
  KEY `user_field__created` (`created`),
  KEY `user_field__access` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for user entities.';

--
-- Déchargement des données de la table `d8_users_field_data`
--

INSERT INTO `d8_users_field_data` (`uid`, `langcode`, `preferred_langcode`, `preferred_admin_langcode`, `name`, `pass`, `mail`, `timezone`, `status`, `created`, `changed`, `access`, `login`, `init`, `default_langcode`) VALUES
(0, 'en', 'en', NULL, '', NULL, NULL, '', 0, 1516355020, 1516355020, 0, 0, NULL, 1),
(1, 'en', 'en', NULL, 'admin', '$S$ETwzxcv0d0HtDIytG/fsPHCWbVSk03aWqRVmKCO6ZNlI8ogGcyN2', 'christophe.thoorens@laposte.net', 'Europe/Paris', 1, 1516355020, 1517393780, 1518097512, 1517910364, 'christophe.thoorens@laposte.net', 1),
(7, 'en', 'en', NULL, 'prowriue', '$S$Em1uyGDOf6jye1aPnI8qElYEejOSYF4Y5MWgX0MUfeUpdRddLZyV', 'prowriue@example.com', 'Europe/Paris', 1, 1492204331, 1516615161, 0, 0, NULL, 1),
(8, 'en', 'en', NULL, 'tritreshusli', '$S$EsY24rHwfCkjiEguwo463KiJI5RazQduxSruYqF9OIpIZCnRw/LW', 'tritreshusli@example.com', 'Europe/Paris', 1, 1491652763, 1516615161, 0, 0, NULL, 1),
(9, 'en', 'en', NULL, 'dothevaw', '$S$EIJMq.HFDjPzsp58QGg0Je8RjTu5t3vhHc5jyqAW3qejtls8imM9', 'dothevaw@example.com', 'Europe/Paris', 1, 1511449699, 1516615161, 0, 0, NULL, 1),
(10, 'en', 'en', NULL, 'dradadrefr', '$S$EPa/Fg/d./DllLV4slzjtIl5Uzqzf6Rmg/voxjdDO88x7jUvJ0tC', 'dradadrefr@example.com', 'Europe/Paris', 1, 1495758164, 1516615161, 0, 0, NULL, 1),
(11, 'en', 'en', NULL, 'cruslespip', '$S$EvqGeVvskZwo0xJcrM7GlbC6cURPLxGbzhUk1yCqsC4JhLzXQjJd', 'cruslespip@example.com', 'Europe/Paris', 1, 1491205909, 1516615161, 0, 0, NULL, 1),
(12, 'en', 'en', NULL, 'baloci', '$S$E7eFKNommsJOO9gaaueq7ILGou5hX94LYChS9LtDcQ9rXFW.KlzW', 'baloci@example.com', 'Europe/Paris', 1, 1492894662, 1516615161, 0, 0, NULL, 1),
(13, 'en', 'en', NULL, 'canuwroj', '$S$E7X85Yxdo8z4zXRNJdioPuwu2Idj53gxtZmjERY5qPcUICRoWKEq', 'canuwroj@example.com', 'Europe/Paris', 1, 1486418970, 1516615161, 0, 0, NULL, 1),
(14, 'en', 'en', NULL, 'jamuthas', '$S$El7D6ft0XN.fuV6ZM/5vSsNbhG2mn9v.o8lkwT/2KDRg1Eo5sKvQ', 'jamuthas@example.com', 'Europe/Paris', 1, 1509460382, 1516615161, 0, 0, NULL, 1),
(15, 'en', 'en', NULL, 'dospeb', '$S$ENmdW9Oyw3gbavaHZCBhgUjX8IXHCXfS0aJ1TLO6dv73jA7EXhTw', 'dospeb@example.com', 'Europe/Paris', 1, 1511431435, 1516615161, 0, 0, NULL, 1),
(16, 'en', 'en', NULL, 'slaprah', '$S$EAby6293XFpzZMclJP3EosPFqiFZRVANdgn38j1wGBHAET1lyKlI', 'slaprah@example.com', 'Europe/Paris', 1, 1511368489, 1516615161, 0, 0, NULL, 1),
(49, 'fr', 'fr', 'fr', 'test', '$S$EowsZGxN/l.WCBay48ccUm2WIY2qn2fZbnd5t4Z36j9rKp/cA0kl', 'pipo@pipo.com', NULL, 1, 1517327651, 1517327651, 1517910294, 1517910294, 'pipo@pipo.com', 1);
