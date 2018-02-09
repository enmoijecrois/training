<?php

/*
 * @file
 * Contains \Drupal\hello\Plugin\Block\HelloBlock
 */

namespace Drupal\hello\Plugin\Block;

use Drupal\Core\Block\BlockBase;
use Drupal\Core\Plugin\ContainerFactoryPluginInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\Core\Datetime\DateFormatterInterface;
//use Drupal\Core\Cache\Context\CacheContextInterface;

/**
 * Provides a hello block.
 *
 * @Block(
 *   id = "hello_block",
 *   admin_label = @Translation("Hello block")
 * )
 */
class HelloBlock extends BlockBase implements ContainerFactoryPluginInterface/*, CacheContextInterface*/ {

  protected $dateFormatter;

  public function __construct(array $configuration, $plugin_id, $plugin_definition, DateFormatterInterface $dateFormatter) {
    parent::__construct($configuration, $plugin_id, $plugin_definition);
    $this->dateFormatter = $dateFormatter;
  }

  public static function create(ContainerInterface $container, array $configuration, $plugin_id, $plugin_definition) {
    return new static(
      $configuration,
      $plugin_id,
      $plugin_definition,
      $container->get('date.formatter')
    );
  }

  /**
   * Implements Drupal\Core\Block\BlockBase::build()
   */
  public function build() {
    return [
      '#markup' => t('Welcome <strong>@username</strong>. It is @date', [
        '@username' => \Drupal::currentUser()->getUsername(),
        '@date' => $this->dateFormatter->format(time(), 'custom', 'H\hi s\s')
      ]),
      '#title' => t('Yay!'),
      '#cache' => [
        'key' => ['hello_block'],
        //'max-age' => 20,
        'max-age' => 1000,
      ],
    ];
  }

  /**
   * {@inheritdoc}
   */
  /*
  public static function getLabel() {
    return t('Hello block');
  }

  /**
   * {@inheritdoc}
   */
  /*
  public function getContext() {
    //return \Drupal::currentUser()->getUsername();
    return 'user';
  }

  /**
   * {@inheritdoc}
   */
  /*
  public function getCacheableMetadata() {
    return new CacheableMetadata();
  }
  */

}
