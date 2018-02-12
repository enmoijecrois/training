
-- --------------------------------------------------------

--
-- Structure de la table `d8_block_content`
--

DROP TABLE IF EXISTS `d8_block_content`;
CREATE TABLE IF NOT EXISTS `d8_block_content` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `revision_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block_content_field__uuid__value` (`uuid`),
  UNIQUE KEY `block_content__revision_id` (`revision_id`),
  KEY `block_content_field__type__target_id` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='The base table for block_content entities.';

--
-- Déchargement des données de la table `d8_block_content`
--

INSERT INTO `d8_block_content` (`id`, `revision_id`, `type`, `uuid`, `langcode`) VALUES
(1, 1, 'basic', '4a4504e9-afd8-4203-bf9e-8ca5774b3fb5', 'en'),
(2, 2, 'basic', '971f3c5c-f6a5-4382-853c-4f4f9dfbcb08', 'en'),
(3, 3, 'basic', 'a0ca1f32-b74e-46b5-b0e0-0ae2314acebb', 'en'),
(4, 4, 'basic', '11da2984-902a-4e52-8b17-15649a71402a', 'en');
