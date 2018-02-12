
-- --------------------------------------------------------

--
-- Structure de la table `d8_node_revision__field_description_restaurant`
--

DROP TABLE IF EXISTS `d8_node_revision__field_description_restaurant`;
CREATE TABLE IF NOT EXISTS `d8_node_revision__field_description_restaurant` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_description_restaurant_value` longtext NOT NULL,
  `field_description_restaurant_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_description_restaurant_format` (`field_description_restaurant_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_description…';

--
-- Déchargement des données de la table `d8_node_revision__field_description_restaurant`
--

INSERT INTO `d8_node_revision__field_description_restaurant` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_description_restaurant_value`, `field_description_restaurant_format`) VALUES
('restaurant', 0, 160, 160, 'en', 0, '<p>Le restaurant gastronomique 3 étoiles au guide Michelin a élu résidence côté jardin. Epicure ouvre ses baies vitrées sur le magnifique jardin à la française de l\'hôtel. L\'architecte Pierre-Yves Rochon, en collaboration avec Madame Maja Oetker, a transfiguré l\'ancien restaurant d\'été en un écrin précieux inondé de lumière, dédié à l\'art de vivre et au plaisir de déguster la cuisine du Chef Eric Frechon.<br />\r\nEpicure est ouvert tous les jours pour le petit déjeuner, le déjeuner et le dîner.</p>\r\n', 'full_html'),
('restaurant', 0, 161, 161, 'en', 0, '<p>Intimité, raffinement étudié dans les moindres détails, authenticité d’un art de vivre en montagne porté à sa perfection... notre restaurant gastronomique offre un cadre unique pour un dîner romantique, un déjeuner convivial entre amis ou un repas de famille. Omble Chevalier juste cuit, sabayon thé vert et pommes céramiques...<br />\r\nA sa table proche des cimes, le chef Emmanuel Renaut livre une cuisine aussi subtile qu\'inventive, que vous pourrez accorder à de riches nectars, à découvrir parmi les nombreuses références de notre carte des vins.<br />\r\nLe restaurant gastronomique \"Flocons de Sel\" est fermé tous les mardis et mercredis.</p>\r\n', 'full_html'),
('restaurant', 0, 162, 162, 'en', 0, '<p>Un cube de verre dans un jardin aux essences méditerranéennes. Un lieu lumineux, conçu en amphithéâtre, jouant sur l\'espace entre les tables, les plafonds hauts, l\'ouverture sur le jardin et le bassin, aux lignes pures, où se mêlent art contemporain et cuisine créative à quatre mains. Esprit du Sud dans un environnement «urbain/chic» créé par les jumeaux Jacques &amp; Laurent Pourcel, chefs étoilés et agitateurs de sens.<br />\r\nDedans, dehors, sous le soleil ou sous la lune... ici, le luxe c\'est l\'espace, variation végétale au fil des saisons, lumière naturelle. Le temps s\'arrête, le temps d\'un repas... Exaltation des sens, dans la découverte de l\'essentiel.<br />\r\nModerne, mais confortable, ce lieu hors du temps vous étonnera par sa conception et son design, aux portes de la ville, il vous permettra d\'accéder au centre ville rapidement.</p>\r\n', 'full_html'),
('restaurant', 0, 163, 163, 'en', 0, '<p>Une cuisine presque brute qui fait du bon avec du simple. Le goût est restitué dans sa vérité, sans ingrédient superflu. Les préparations s’épurent pour laisser toute sa place à la force du goût. Le retour à l’essentiel c’est aussi respecter le rythme des saisons, lorsque le produit est le meilleur.<br />\r\nPour Alain Ducasse, le repas raconte une histoire, la table est une scène. Une nouvelle vaisselle trouve sa place au restaurant le Meurice. De rares objets de table donnent le rythme. Des créations originales signées Pierre Tachon, ou de précieuses pièces d’artisanat japonais de Shinichiro Ogata.<br />\r\nInspirée du Salon de la Paix du Château de Versailles, la salle s’impose majestueusement : les miroirs anciens, les lustres en cristal, les bronzes, les marbres, les fresques… Une élégance romantique, un décor raffiné hors du temps. Sans oublier la vue magique, qui se dessine à travers de larges fenêtres, sur le jardin des Tuileries voisin.<br />\r\nLa décoration du restaurant a été revisitée par Philippe Starck en 2007.</p>\r\n', 'full_html');
