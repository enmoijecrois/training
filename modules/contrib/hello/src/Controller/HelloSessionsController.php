<?php

/**
 * @file
 * Contains \Drupal\hello\Controller\SessionsController.
 */

namespace Drupal\hello\Controller;

use Drupal\Core\Controller\ControllerBase;

class HelloSessionsController extends ControllerBase {

	public function content(){
		return [
			'#markup' => t('There are @num active sessions at present time.', ['@num' => $this->getActiveSessions()]),
			'#title' => t('Active sessions')
		];
	}

	private function getActiveSessions(){
		return \Drupal::database()
			->select('watchdog', 'w')
			->fields('w', ['message'])
			->countQuery()
			->execute()
			->fetchField();
	}
}
