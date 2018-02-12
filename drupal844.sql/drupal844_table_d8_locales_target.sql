
-- --------------------------------------------------------

--
-- Structure de la table `d8_locales_target`
--

DROP TABLE IF EXISTS `d8_locales_target`;
CREATE TABLE IF NOT EXISTS `d8_locales_target` (
  `lid` int(11) NOT NULL DEFAULT '0' COMMENT 'Source string ID. References d8_locales_source.lid.',
  `translation` blob NOT NULL COMMENT 'Translation string value in this language.',
  `language` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Language code. References d8_language.langcode.',
  `customized` int(11) NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether the translation is custom to this site.',
  PRIMARY KEY (`language`,`lid`),
  KEY `lid` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores translated versions of strings.';

--
-- Déchargement des données de la table `d8_locales_target`
--

INSERT INTO `d8_locales_target` (`lid`, `translation`, `language`, `customized`) VALUES
(30, 0x496d616765, 'fr', 1),
(114, 0x6c206a2046205920c3a020485c6869, 'fr', 1),
(116, 0x442064204d205920c3a020485c6869, 'fr', 1),
(118, 0x642f6d2f59202d20483a69, 'fr', 1),
(388, 0x54726164756374696f6e, 'fr', 1),
(398, 0x5472616475697265, 'fr', 1),
(1933, 0x536f756d6973207061722040617574686f725f6e616d65206c65204064617465, 'fr', 1),
(2057, 0x536f756d697320706172, 'fr', 1),
(2386, 0x536f756d6973207061722040617574686f725f6e616d65206c65204064617465, 'fr', 1),
(2395, 0x5472616475637469626c65, 'fr', 1),
(3188, 0x436f6d6d656e7461697265732064657320766973697465757273, 'fr', 1);
