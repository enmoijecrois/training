<?php

/**
 * @file
 * Contains \Drupal\hello\Controller\HelloResultController.
 */

namespace Drupal\hello\Controller;

use Drupal\Core\Controller\ControllerBase;

class HelloResultController extends ControllerBase {
  public function content($result) {
    return ['#markup' => $this->t('Result: ') . $result];
  }
}
