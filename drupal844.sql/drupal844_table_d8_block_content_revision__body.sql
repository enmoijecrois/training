
-- --------------------------------------------------------

--
-- Structure de la table `d8_block_content_revision__body`
--

DROP TABLE IF EXISTS `d8_block_content_revision__body`;
CREATE TABLE IF NOT EXISTS `d8_block_content_revision__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `body_format` (`body_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for block_content field body.';

--
-- Déchargement des données de la table `d8_block_content_revision__body`
--

INSERT INTO `d8_block_content_revision__body` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `body_value`, `body_summary`, `body_format`) VALUES
('basic', 0, 1, 1, 'en', 0, '<p><a href=\"/hotels/5\">5 stars hotels</a><br />\r\n<a href=\"/hotels/4\">4 stars hotels</a><br />\r\n<a href=\"/hotels/3\">3 stars hotels</a><br />\r\n<a href=\"/hotels/2\">2 stars hotels</a><br />\r\n<a href=\"/hotels/1\">1 star hotels</a><br />\r\n<a href=\"/hotels/0\">0 star hotels</a></p>\r\n', '', 'basic_html'),
('basic', 0, 2, 2, 'en', 0, '<p><a href=\"/contact/contact_the_site_owner\">Contact the site owner</a></p>\r\n', '', 'basic_html'),
('basic', 0, 3, 3, 'en', 0, '<p>Welcome!</p>\r\n\r\n<p>Here you\'ll find:</p>\r\n\r\n<ul>\r\n	<li>cates and doggos</li>\r\n	<li>code and development</li>\r\n	<li>tricks and treats</li>\r\n</ul>\r\n\r\n<p>and much more!</p>\r\n', '', 'basic_html'),
('basic', 0, 4, 4, 'en', 0, '<p>Meet <em>Drupal 8</em>, a powerful new suite of tools, and the strongest link in your new content supply chain. Interact with countless applications, thanks to REST-first native web services. Use progressive decoupling to break free from back-end restrictions without sacrificing security and accessibility. Deliver faster, with enhanced...</p>\r\n', '', 'basic_html');
