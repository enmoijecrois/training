
-- --------------------------------------------------------

--
-- Structure de la table `d8_node_revision__field_description`
--

DROP TABLE IF EXISTS `d8_node_revision__field_description`;
CREATE TABLE IF NOT EXISTS `d8_node_revision__field_description` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_description_value` longtext NOT NULL,
  `field_description_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_description_format` (`field_description_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_description.';

--
-- Déchargement des données de la table `d8_node_revision__field_description`
--

INSERT INTO `d8_node_revision__field_description` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `field_description_value`, `field_description_format`) VALUES
('hotel', 0, 153, 153, 'en', 0, '<p>Le Bristol Paris est un lieu unique dans la capitale, par son service exemplaire et son grand raffinement.<br />\r\nSitué sur l\'élégante rue du Faubourg Saint-Honoré, au cœur du quartier de la mode et des arts, l\'hôtel accueille depuis 1925 ses clients privilégiés dans ses 188 chambres et suites, spacieuses et lumineuses, décorées dans un pur style XVIIIème.</p>\r\n', 'full_html'),
('hotel', 0, 154, 154, 'en', 0, '<p>La Villa Florentine, Hôtel, Relais &amp; Châteaux 5 étoiles, vous accueille à Lyon pour un séjour d\'exception au coeur d\'un véritable havre de paix... Idéalement situé sur les hauteurs de la colline de Fourvière, le Relais &amp; Châteaux Villa Florentine vous offre un fantastique panorama sur Lyon et le quartier historique du Vieux Lyon classé au patrimoine mondial de l\'UNESCO.</p>\r\n', 'basic_html'),
('hotel', 0, 155, 155, 'en', 0, '<p>Grâce à ses infrastructures de luxe et ses installations à la pointe de la technologie, l\'Hôtel du Palais s\'apparente parfaitement à un second chez soi.</p>\r\n\r\n<p>Surplombant la Grand Plage, cette piscine d\'eau salée de style californien, chauffée à 27°C, est comme une extension naturelle de l\'océan Atlantique. Elle dispose de deux couloirs de nage de 33 mètres cabanas disponibles sur réservation.<br />\r\nLa terrasse de la piscine est idéale pour prendre un bain de soleil ou savourer un cocktail en admirant le coucher de soleil sur la mer.<br />\r\nOuvert d\'avril à septembre</p>\r\n', 'full_html'),
('hotel', 0, 156, 156, 'en', 0, '<p>Idéalement situé face au Jardin des Tuileries, entre la Place de la Concorde et le Musée du Louvre, Le Meurice, hôtel cinq étoiles, s\'impose depuis 1835, comme étant le joyau des palaces français. Fidèle à ses valeurs d\'art de vivre à la française, Le Meurice est un lieu magique, calme et élégant, où se croisent en douceur les splendeurs de l’architecture du XVIIIe et le raffinement du confort le plus contemporain. De nombreux artistes peintres et écrivains ont marqué l\'histoire du Meurice, qui a été, et sera toujours, un lieu d\'expression du Génie Français et de l\'art de vivre. Les sept étages possèdent leurs propres univers, avec 160 chambres décorées dans un style évoquant l’époque de Louis XVI, chacune équipée d’une superbe salle de bains en marbre, avec baignoire et douche séparées.<br />\r\nEn 2007, les espaces d\'accueil du Meurice ont été redécorés par Philippe Starck. Il a su apporter une touche de modernité et un chic contemporain tout en préservant l’atmosphère d’écrin de luxe liée a l’âme de l\'établissement.<br />\r\nLe Restaurant Gastronomique le Meurice 3 étoiles Michelin propose des menus à la fois audacieux et modestes, élevant au rang des beaux arts la gastronomie parisienne et crée pour le Restaurant le Dalí un nouveau concept culinaire et tisse ainsi un lien délicieux et malicieux entre le passé et le présent. Vous aurez ainsi une petite pensée pour Salvador Dali qui fut l\'un des hôtes célèbres du Meurice... En plein cœur de Paris, à deux pas de la place Vendôme et de la rue Saint-Honoré, où foisonnent les boutiques de luxe et celles des jeunes créateurs, Le Meurice se laisse découvrir, comme un véritable havre de paix ou il fait bon d’être soi-même.</p>\r\n', 'full_html'),
('hotel', 0, 157, 157, 'en', 0, '<p>Chic et contemporain, l\'Hôtel de Sèze, entièrement rénové et redécoré, vous ouvre ses portes.<br />\r\nCette belle maison parisienne élégante et raffinée, est remarquablement située place de la Madeleine, au carrefour des 9ème et 8ème arrondissements de Paris, à deux pas des très chics enseignes : Fauchon, Hédiard, Dior, Chanel, Ladurée etc…<br />\r\nSes chambres et Suites, dans l\'inattendu de leurs détails, vous inviteront à un séjour d\'authentique raffinement, un lieu de quiétude où l\'on se sent chez soi, grâce au soin prévenant d\'une hôtellerie de style.<br />\r\nUne situation exceptionnelle pour un hôtel d\'exception !</p>\r\n', 'full_html'),
('hotel', 0, 158, 158, 'en', 0, '<p>Hôtel 3 étoiles alliant confort et tradition à Toulouse, l’Albert 1er est situé à 100 mètres du Capitole dans le centre historique, au sein d’une une petite rue calme qui a abrité les ateliers du peintre Pierre Rivals (grande famille de peintres toulousains du XVIe siècle).<br />\r\nL’hôtel Albert 1er est un hôtel indépendant et familial, idéalement placé sur la Via Tolosana, l’un des chemins de Saint-Jacques de Compostelle passant par Toulouse. L’hôtel Albert 1er est le point de départ privilégié pour découvrir ou de redécouvrir les charmes de la Ville Rose et de la région Midi-Pyrénées.</p>\r\n', 'full_html');
