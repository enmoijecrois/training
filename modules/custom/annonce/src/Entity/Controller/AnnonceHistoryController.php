<?php

namespace Drupal\annonce\Entity\Controller;

use Drupal\Core\Controller\ControllerBase;

class AnnonceHistoryController extends ControllerBase {

  public function content() {

    $query = \Drupal::database()->select('annonces_consultees', 'h');
    $query->join('annonce', 'a', 'a.id = h.nid');
    $result = $query
      ->fields('h', ['nid', 'uid', 'date_consultation'])
      ->fields('a', ['name'])
      ->orderBy('date_consultation', 'DESC')
      ->execute()
      ->fetchAll();

    $num_result = count($result);

    $user_storage = \Drupal::entityTypeManager()->getStorage('user');

    $rows = [];
    foreach ($result as $value) {
      $author = $user_storage->load($value->uid);
      $author_name = $author->getAccountName();
      $date = date('d M Y G\hi', $value->date_consultation);
      $rows[] = [$value->name, $author_name, $date];
    }

    return [
      '#theme' => 'table',
      '#header' => ['Annonce', 'Viewed by', 'Date'],
      '#rows' => $rows,
    ];

/*
    $build = [
      '#markup' => t('Hello World!'),
    ];
    return $build;
*/
  }

}

