<?php

/**
 * @file
 * Contains \Drupal\hello\Controller\HelloController.
 */

namespace Drupal\hello\Controller;

use Drupal\Core\Controller\ControllerBase;

class HelloController extends ControllerBase {

	public function content($param){
		return [
			'#markup' => t('You are on the Hello page. Your username is <strong>@username</strong>, and the parameter in the URL is %param.',
				[
					'@username' => $this->currentUser()->getUsername(),
					'%param' => $param,
				]
			)
		];
	}

}
