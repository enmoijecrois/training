<?php

namespace Drupal\hello\Access;

use Drupal\Core\Access\AccessCheckInterface;
use Drupal\Core\Session\AccountInterface;
use Symfony\Component\Routing\Route;
use Symfony\Component\HttpFoundation\Request;
use Drupal\Core\Access\AccessResult;

class HelloAccessCheck implements AccessCheckInterface {

    public function applies(Route $route)
    {
        return NULL;
        // TODO: Implement applies() method.
    }

    public function access(Route $route, Request $request = NULL, AccountInterface $account) {

        $hours = $route->getRequirement('_access_hello');
        $seconds = $hours * 3600;
        $created = $account->getAccount()->created;
        $today = time();

        if ($created < $today - $seconds) {
            return AccessResult::allowed();
        } else {
            return AccessResult::forbidden();
        }
    }
}