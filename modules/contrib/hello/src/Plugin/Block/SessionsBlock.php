<?php

/*
 * @file
 * Contains \Drupal\hello\Plugin\Block\SessionsBlock
 */

namespace Drupal\hello\Plugin\Block;

use Drupal\Core\Block\BlockBase;

/**
 * Provides a sessions block.
 *
 * @Block(
 *   id = "sessions_block",
 *   admin_label = @Translation("Active sessions")
 * )
 */
class SessionsBlock extends BlockBase {

  /**
   * Implements Drupal\Core\Block\BlockBase::build()
   */
  public function build() {
    return [
      '#markup' => t('There are @num active sessions at present time.', ['@num' => $this->getActiveSessions()]),
      '#title' => t('Active sessions'),
      /*'#cache' => [
        'key' => ['hello_block'],
        //'max-age' => 20,
        'max-age' => 1000,
      ],*/
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

  protected function blockAccess(AccountInterface $account) {
      if ($account->hasPermission('permission_sessions')) {
          return AccessResult::allowed();
      } else {
          return AccessResult::forbidden();
      }
  }
}
