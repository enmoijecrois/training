
-- --------------------------------------------------------

--
-- Structure de la table `d8_users`
--

DROP TABLE IF EXISTS `d8_users`;
CREATE TABLE IF NOT EXISTS `d8_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_field__uuid__value` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for user entities.';

--
-- Déchargement des données de la table `d8_users`
--

INSERT INTO `d8_users` (`uid`, `uuid`, `langcode`) VALUES
(0, '2a9e28cb-9381-4b92-881c-13df70d8e15f', 'en'),
(1, '7db3b8e7-dca5-4ffa-8a68-23f9bf0a1111', 'en'),
(7, 'd88a0c72-72cc-4715-8d60-73649216ff98', 'en'),
(8, 'c98a8ea6-b79b-4473-bc56-37adfb744005', 'en'),
(9, 'd616d8ce-ab06-42fa-b6d3-2ce53b43f078', 'en'),
(10, 'f069efdf-2f61-487e-89d8-a101b3c09952', 'en'),
(11, '6d103e5d-c571-4927-956e-37ecf5df67b1', 'en'),
(12, 'c9b2c0e9-a5b8-4e15-a2e1-28e65bb0e214', 'en'),
(13, 'a7720327-2fcf-4228-adf2-7adb74c5ed5c', 'en'),
(14, '75de7d64-fc2b-4d70-bf7f-c91971eb16eb', 'en'),
(15, 'd39635ad-9875-4965-a86a-b5326c39c162', 'en'),
(16, '18b72ddf-dd7a-43f9-b4c2-a0d1500d86a9', 'en'),
(49, '73ff6bfb-8e1f-4d07-aabc-5d9649b0d1b0', 'fr');
