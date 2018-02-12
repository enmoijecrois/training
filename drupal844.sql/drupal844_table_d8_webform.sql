
-- --------------------------------------------------------

--
-- Structure de la table `d8_webform`
--

DROP TABLE IF EXISTS `d8_webform`;
CREATE TABLE IF NOT EXISTS `d8_webform` (
  `webform_id` varchar(32) NOT NULL COMMENT 'The webform id.',
  `next_serial` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The serial number to give to the next submission to this webform.',
  PRIMARY KEY (`webform_id`,`next_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores all webform data.';

--
-- Déchargement des données de la table `d8_webform`
--

INSERT INTO `d8_webform` (`webform_id`, `next_serial`) VALUES
('contact', 1),
('reservation_de_table', 1),
('template_contact', 1),
('template_donation', 1),
('template_employee_evaluation', 1),
('template_feedback', 1),
('template_issue', 1),
('template_job_application', 1),
('template_job_seeker_profile', 1),
('template_registration', 1),
('template_session_evaluation', 1),
('template_subscribe', 1),
('template_user_profile', 1);
