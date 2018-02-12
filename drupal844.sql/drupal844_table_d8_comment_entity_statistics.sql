
-- --------------------------------------------------------

--
-- Structure de la table `d8_comment_entity_statistics`
--

DROP TABLE IF EXISTS `d8_comment_entity_statistics`;
CREATE TABLE IF NOT EXISTS `d8_comment_entity_statistics` (
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The entity_id of the entity for which the statistics are compiled.',
  `entity_type` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT 'node' COMMENT 'The entity_type of the entity to which this comment is a reply.',
  `field_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field_name of the field that was used to add this comment.',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT 'The d8_comment.cid of the last comment.',
  `last_comment_timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp of the last comment that was posted within this node, from d8_comment.changed.',
  `last_comment_name` varchar(60) DEFAULT NULL COMMENT 'The name of the latest author to post a comment on this node, from d8_comment.name.',
  `last_comment_uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The user ID of the latest author to post a comment on this node, from d8_comment.uid.',
  `comment_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The total number of comments on this entity.',
  PRIMARY KEY (`entity_id`,`entity_type`,`field_name`),
  KEY `last_comment_timestamp` (`last_comment_timestamp`),
  KEY `comment_count` (`comment_count`),
  KEY `last_comment_uid` (`last_comment_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maintains statistics of entity and comments posts to show …';

--
-- Déchargement des données de la table `d8_comment_entity_statistics`
--

INSERT INTO `d8_comment_entity_statistics` (`entity_id`, `entity_type`, `field_name`, `cid`, `last_comment_timestamp`, `last_comment_name`, `last_comment_uid`, `comment_count`) VALUES
(3, 'node', 'comment', 0, 1516358899, NULL, 1, 0),
(4, 'node', 'comment', 0, 1516358903, NULL, 1, 0),
(5, 'node', 'comment', 0, 1516358906, NULL, 0, 0),
(6, 'node', 'comment', 0, 1516358906, NULL, 1, 0),
(7, 'node', 'comment', 0, 1516358907, NULL, 0, 0),
(8, 'node', 'comment', 0, 1516358907, NULL, 0, 0),
(9, 'node', 'comment', 0, 1516358909, NULL, 0, 0),
(10, 'node', 'comment', 0, 1516358909, NULL, 0, 0),
(11, 'node', 'comment', 0, 1516358909, NULL, 0, 0),
(12, 'node', 'comment', 0, 1516358911, NULL, 1, 0),
(13, 'node', 'comment', 0, 1516358911, NULL, 0, 0),
(14, 'node', 'comment', 0, 1516358912, NULL, 0, 0),
(15, 'node', 'comment', 2, 1516358912, 'devel generate', 0, 2),
(16, 'node', 'comment', 4, 1516358917, 'devel generate', 0, 2),
(17, 'node', 'comment', 0, 1516358919, NULL, 1, 0),
(18, 'node', 'comment', 10, 1516358919, 'devel generate', 0, 6),
(19, 'node', 'comment', 13, 1516358921, 'devel generate', 0, 3),
(20, 'node', 'comment', 0, 1516358923, NULL, 0, 0),
(21, 'node', 'comment', 0, 1516358926, NULL, 1, 0),
(22, 'node', 'comment', 0, 1516358926, NULL, 0, 0),
(23, 'node', 'comment', 0, 1516358926, NULL, 1, 0),
(24, 'node', 'comment', 19, 1516358929, '', 1, 6),
(25, 'node', 'comment', 25, 1516358931, 'devel generate', 0, 6),
(26, 'node', 'comment', 0, 1516358931, NULL, 0, 0),
(27, 'node', 'comment', 0, 1516358933, NULL, 1, 0),
(28, 'node', 'comment', 31, 1516358936, 'devel generate', 0, 6),
(29, 'node', 'comment', 37, 1516358938, '', 1, 6),
(30, 'node', 'comment', 0, 1516358938, NULL, 0, 0),
(31, 'node', 'comment', 0, 1516358938, NULL, 1, 0),
(32, 'node', 'comment', 0, 1516358939, NULL, 0, 0),
(33, 'node', 'comment', 40, 1516358939, '', 1, 3),
(34, 'node', 'comment', 0, 1516358941, NULL, 0, 0),
(35, 'node', 'comment', 0, 1516358943, NULL, 0, 0),
(36, 'node', 'comment', 0, 1516358943, NULL, 0, 0),
(37, 'node', 'comment', 41, 1516358943, '', 1, 1),
(38, 'node', 'comment', 42, 1516358945, 'devel generate', 0, 1),
(39, 'node', 'comment', 0, 1516358947, NULL, 0, 0),
(40, 'node', 'comment', 0, 1516358947, NULL, 1, 0),
(41, 'node', 'comment', 0, 1516358947, NULL, 0, 0),
(42, 'node', 'comment', 0, 1516358951, NULL, 1, 0),
(43, 'node', 'comment', 44, 1516358953, 'devel generate', 0, 2),
(44, 'node', 'comment', 0, 1516358955, NULL, 0, 0),
(45, 'node', 'comment', 0, 1516358955, NULL, 0, 0),
(46, 'node', 'comment', 0, 1516358955, NULL, 0, 0),
(47, 'node', 'comment', 50, 1516358955, 'devel generate', 0, 6),
(48, 'node', 'comment', 0, 1516358957, NULL, 0, 0),
(49, 'node', 'comment', 0, 1516358957, NULL, 0, 0),
(50, 'node', 'comment', 0, 1516358957, NULL, 0, 0),
(51, 'node', 'comment', 0, 1516358959, NULL, 1, 0),
(52, 'node', 'comment', 0, 1516358959, NULL, 1, 0),
(53, 'node', 'comment', 56, 1516358961, 'devel generate', 0, 6),
(54, 'node', 'comment', 63, 1516358963, 'devel generate', 0, 7),
(55, 'node', 'comment', 64, 1516358963, 'devel generate', 0, 1),
(56, 'node', 'comment', 0, 1516358968, NULL, 1, 0),
(57, 'node', 'comment', 71, 1516358970, '', 1, 7),
(58, 'node', 'comment', 74, 1516358972, 'devel generate', 0, 3),
(59, 'node', 'comment', 79, 1516358972, 'devel generate', 0, 5),
(60, 'node', 'comment', 85, 1516358973, 'devel generate', 0, 6),
(61, 'node', 'comment', 0, 1516358976, NULL, 0, 0),
(62, 'node', 'comment', 0, 1516358977, NULL, 0, 0),
(63, 'node', 'comment', 0, 1516358977, NULL, 0, 0),
(64, 'node', 'comment', 0, 1516358977, NULL, 0, 0),
(65, 'node', 'comment', 0, 1516358977, NULL, 1, 0),
(66, 'node', 'comment', 0, 1516358979, NULL, 0, 0),
(67, 'node', 'comment', 0, 1516358979, NULL, 1, 0),
(68, 'node', 'comment', 0, 1516358981, NULL, 1, 0),
(69, 'node', 'comment', 0, 1516358984, NULL, 1, 0),
(70, 'node', 'comment', 86, 1516358984, '', 1, 6),
(71, 'node', 'comment', 0, 1516358986, NULL, 1, 0),
(72, 'node', 'comment', 0, 1516358986, NULL, 0, 0),
(73, 'node', 'comment', 98, 1516358986, 'devel generate', 0, 7),
(74, 'node', 'comment', 99, 1516358987, '', 1, 4),
(75, 'node', 'comment', 103, 1516358990, 'devel generate', 0, 3),
(76, 'node', 'comment', 0, 1516358990, NULL, 1, 0),
(77, 'node', 'comment', 0, 1516358990, NULL, 1, 0),
(78, 'node', 'comment', 106, 1516358990, 'devel generate', 0, 5),
(79, 'node', 'comment', 0, 1516358992, NULL, 1, 0),
(80, 'node', 'comment', 0, 1516358992, NULL, 1, 0),
(81, 'node', 'comment', 0, 1516358992, NULL, 0, 0),
(82, 'node', 'comment', 0, 1516358993, NULL, 0, 0),
(83, 'node', 'comment', 111, 1516358995, 'devel generate', 0, 4),
(84, 'node', 'comment', 0, 1516358998, NULL, 1, 0),
(85, 'node', 'comment', 115, 1516358998, '', 1, 2),
(86, 'node', 'comment', 0, 1516358998, NULL, 0, 0),
(87, 'node', 'comment', 0, 1516359000, NULL, 1, 0),
(88, 'node', 'comment', 0, 1516359000, NULL, 1, 0),
(89, 'node', 'comment', 0, 1516359000, NULL, 1, 0),
(90, 'node', 'comment', 117, 1516359001, '', 1, 6),
(91, 'node', 'comment', 123, 1516359004, '', 1, 2),
(92, 'node', 'comment', 0, 1516359004, NULL, 1, 0),
(93, 'node', 'comment', 0, 1516359004, NULL, 1, 0),
(94, 'node', 'comment', 0, 1516359004, NULL, 0, 0),
(95, 'node', 'comment', 0, 1516359005, NULL, 0, 0),
(96, 'node', 'comment', 125, 1516359008, '', 1, 7),
(97, 'node', 'comment', 0, 1516359010, NULL, 0, 0),
(98, 'node', 'comment', 132, 1516359010, 'devel generate', 0, 5),
(99, 'node', 'comment', 0, 1516359011, NULL, 0, 0),
(100, 'node', 'comment', 137, 1516359014, 'devel generate', 0, 2),
(101, 'node', 'comment', 0, 1516359014, NULL, 0, 0),
(102, 'node', 'comment', 0, 1516359015, NULL, 1, 0),
(103, 'node', 'comment', 139, 1516359015, '', 1, 2),
(104, 'node', 'comment', 141, 1516359015, 'devel generate', 0, 6),
(105, 'node', 'comment', 147, 1516359018, '', 1, 3),
(106, 'node', 'comment', 150, 1516359020, 'devel generate', 0, 5),
(107, 'node', 'comment', 0, 1516359021, NULL, 1, 0),
(108, 'node', 'comment', 0, 1516359021, NULL, 1, 0),
(109, 'node', 'comment', 0, 1516359024, NULL, 1, 0),
(110, 'node', 'comment', 0, 1516359024, NULL, 1, 0),
(111, 'node', 'comment', 0, 1516359024, NULL, 1, 0),
(112, 'node', 'comment', 0, 1516359024, NULL, 1, 0),
(113, 'node', 'comment', 0, 1516359025, NULL, 1, 0),
(114, 'node', 'comment', 155, 1516359028, '', 1, 5),
(115, 'node', 'comment', 0, 1516359028, NULL, 1, 0),
(116, 'node', 'comment', 0, 1516359030, NULL, 1, 0),
(117, 'node', 'comment', 0, 1516359030, NULL, 1, 0),
(118, 'node', 'comment', 0, 1516359030, NULL, 0, 0),
(119, 'node', 'comment', 160, 1516359030, '', 1, 4),
(120, 'node', 'comment', 0, 1516359034, NULL, 1, 0),
(121, 'node', 'comment', 0, 1516359034, NULL, 1, 0),
(122, 'node', 'comment', 164, 1516359034, 'devel generate', 0, 5),
(123, 'node', 'comment', 169, 1516359035, '', 1, 5),
(124, 'node', 'comment', 0, 1516359037, NULL, 0, 0),
(125, 'node', 'comment', 0, 1516359037, NULL, 1, 0),
(126, 'node', 'comment', 174, 1516359038, 'devel generate', 0, 3),
(127, 'node', 'comment', 0, 1516359038, NULL, 0, 0),
(128, 'node', 'comment', 0, 1516359043, NULL, 1, 0),
(129, 'node', 'comment', 177, 1516359044, 'devel generate', 0, 7),
(130, 'node', 'comment', 0, 1516359046, NULL, 1, 0),
(131, 'node', 'comment', 0, 1516359046, NULL, 0, 0),
(132, 'node', 'comment', 0, 1516359046, NULL, 1, 0),
(133, 'node', 'comment', 0, 1516359046, NULL, 1, 0),
(134, 'node', 'comment', 0, 1516359046, NULL, 1, 0),
(135, 'node', 'comment', 184, 1516359050, 'devel generate', 0, 2),
(136, 'node', 'comment', 186, 1516359053, 'devel generate', 0, 4),
(137, 'node', 'comment', 190, 1516359053, 'devel generate', 0, 2),
(138, 'node', 'comment', 0, 1516359055, NULL, 0, 0),
(139, 'node', 'comment', 192, 1516359055, '', 1, 5),
(140, 'node', 'comment', 197, 1516359057, 'devel generate', 0, 5),
(141, 'node', 'comment', 0, 1516359057, NULL, 1, 0),
(142, 'node', 'comment', 202, 1516359059, '', 1, 3),
(143, 'node', 'comment', 205, 1516359061, 'devel generate', 0, 1),
(144, 'node', 'comment', 206, 1516359061, 'devel generate', 0, 6),
(145, 'node', 'comment', 0, 1516359061, NULL, 1, 0),
(146, 'node', 'comment', 0, 1516359061, NULL, 1, 0),
(147, 'node', 'comment', 0, 1516359061, NULL, 0, 0),
(148, 'node', 'comment', 0, 1516359063, NULL, 1, 0),
(149, 'node', 'comment', 0, 1516359063, NULL, 1, 0),
(150, 'node', 'comment', 0, 1516359065, NULL, 0, 0),
(151, 'node', 'comment', 0, 1516359067, NULL, 0, 0),
(152, 'node', 'comment', 212, 1516359067, '', 1, 6);
