
-- --------------------------------------------------------

--
-- Structure de la table `d8_locale_file`
--

DROP TABLE IF EXISTS `d8_locale_file`;
CREATE TABLE IF NOT EXISTS `d8_locale_file` (
  `project` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A unique short name to identify the project the file belongs to.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Language code of this translation. References d8_language.langcode.',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT 'Filename of the imported file.',
  `version` varchar(128) NOT NULL DEFAULT '' COMMENT 'Version tag of the imported file.',
  `uri` varchar(255) NOT NULL DEFAULT '' COMMENT 'URI of the remote file, the resulting local file or the locally imported file.',
  `timestamp` int(11) DEFAULT '0' COMMENT 'Unix timestamp of the imported file.',
  `last_checked` int(11) DEFAULT '0' COMMENT 'Unix timestamp of the last time this translation was confirmed to be the most recent release available.',
  PRIMARY KEY (`project`,`langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='File import status information for interface translation…';

--
-- Déchargement des données de la table `d8_locale_file`
--

INSERT INTO `d8_locale_file` (`project`, `langcode`, `filename`, `version`, `uri`, `timestamp`, `last_checked`) VALUES
('admin_toolbar', 'fr', '', '8.x-1.22', '', 0, 0),
('ctools', 'fr', '', '8.x-3.0', '', 0, 0),
('devel', 'fr', '', '8.x-1.2', '', 0, 0),
('drupal', 'fr', '', '8.4.4', '', 0, 0),
('ds', 'fr', '', '8.x-3.1', '', 0, 0),
('entity', 'fr', '', '8.x-1.0-beta1', '', 0, 0),
('linkit', 'fr', '', '8.x-4.3', '', 0, 0),
('media_entity', 'fr', '', '8.x-1.7', '', 0, 0),
('page_manager', 'fr', '', '8.x-4.0-beta2', '', 0, 0),
('panelizer', 'fr', '', '8.x-4.0', '', 0, 0),
('panels', 'fr', '', '8.x-4.2', '', 0, 0),
('pathauto', 'fr', '', '8.x-1.0', '', 0, 0),
('redirect', 'fr', '', '8.x-1.0', '', 0, 0),
('token', 'fr', '', '8.x-1.1', '', 0, 0),
('views_slideshow', 'fr', '', '8.x-4.6', '', 0, 0),
('webform', 'fr', '', '8.x-5.0-rc1', '', 0, 0);
