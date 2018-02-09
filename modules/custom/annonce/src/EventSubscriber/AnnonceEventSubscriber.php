<?php

namespace Drupal\annonce\EventSubscriber;

use Drupal\Core\Controller\ControllerBase;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\EventDispatcher\Events;
use Drupal\Core\Session\AccountProxy;
use \Symfony\Component\HttpKernel\KernelEvents;
use Drupal\Core\Routing\CurrentRouteMatch;
use Drupal\Core\Database\Connection;
use Drupal\Core\Database\Database;

/**
 * Class AnnonceEventSubscriber.
 *
 * @package Drupal\annonce
 */
class AnnonceEventSubscriber implements EventSubscriberInterface {

  /**
   * Drupal\Core\Session\AccountProxy definition.
   *
   * @var Drupal\Core\Session\AccountProxy
   */
  protected $current_user;
  protected $user_name;

  protected $current_route_match;
  protected $current_url;
  protected $database;

  public function __construct(AccountProxy $current_user, CurrentRouteMatch $current_route_match, Connection $database) {
    $this->current_user = $current_user;
    $this->user_name = $current_user->getAccountName();

    $this->current_route_match = $current_route_match;
    $this->current_url = $current_route_match->getRouteName();
    
    $this->database = $database;
  }

  function EnregistrerBdd() {
    if ($this->current_url == 'entity.annonce.canonical') {
      $this->database->insert('annonces_consultees')->fields(
        array(
          'nid' => $this->current_route_match->getRawParameter('annonce'),
          'date_consultation' => time(),
          'uid' => $this->current_user->id(),
        )
      )->execute();
    }
  }

  function GenerateMsg() {
    if (strstr($this->current_url, 'annonce')) {
      drupal_set_message(t('@username, vous êtes sur une page de type ANNONCE', ['@username' => $this->user_name]));
    }
  }

  static function getSubscribedEvents() {
    $events[KernelEvents::REQUEST][] = ['GenerateMsg'];
    $events[KernelEvents::REQUEST][] = ['EnregistrerBdd'];
    return $events;
  }

}
