
-- --------------------------------------------------------

--
-- Structure de la table `d8_webprofiler`
--

DROP TABLE IF EXISTS `d8_webprofiler`;
CREATE TABLE IF NOT EXISTS `d8_webprofiler` (
  `token` varchar(6) NOT NULL COMMENT 'Profile token.',
  `data` longtext NOT NULL COMMENT 'Profile data.',
  `ip` varchar(64) NOT NULL COMMENT 'Request IP.',
  `method` varchar(6) NOT NULL COMMENT 'Request method.',
  `url` varchar(2048) NOT NULL COMMENT 'Requested URL.',
  `time` int(10) UNSIGNED NOT NULL COMMENT 'Request time.',
  `parent` varchar(6) DEFAULT NULL COMMENT 'Profile parent.',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT 'Profile created time.',
  `status_code` smallint(5) UNSIGNED NOT NULL COMMENT 'Profile status code.',
  PRIMARY KEY (`token`),
  KEY `created_at` (`created_at`),
  KEY `ip` (`ip`),
  KEY `method` (`method`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Webprofiler profiles storage.';

