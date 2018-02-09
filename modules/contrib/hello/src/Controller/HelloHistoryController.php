<?php

/**
 * @file
 * Contains \Drupal\hello\Controller\HelloHistoryController.
 */

namespace Drupal\hello\Controller;

use Drupal\Core\Controller\ControllerBase;
use Drupal\node\NodeInterface;

class HelloHistoryController extends ControllerBase {
  /**
   * @param NodeInterface $node
   * @return array
   */
  public function content (NodeInterface $node) {
    $node_id = $node->id();
    $node_title = $node->getTitle();

    $database = \Drupal::database();

    $id_database = $database
      ->select('hello_node_history')
      ->fields('hello_node_history', array('uid', 'update_time'))
      ->condition('nid', $node_id)
      ->execute();

    $result = $id_database->fetchAll();
    $num_result = count($result);

    $user_storage = \Drupal::entityTypeManager()->getStorage('user');

    $rows = [];
    foreach ($result as $value) {
      $author = $user_storage->load($value->uid);
      $author_name = $author->getAccountName();
      $date = date('d M Y G\hi', $value->update_time);
      $rows[] = [$author_name, $date];
    }
    $tab = [
      '#theme' => 'table',
      '#header' => ['Author', 'Update time'],
      '#rows' => $rows,
    ];

    $output = [
        '#theme' => 'hello_node_history',
        '#count' => $num_result,
        '#node' => $node_title,
    ];
    return [$output, $tab];
  }

}