<?php

/**
 * @file
 * Contains \Drupal\hello\Controller\NodelistController.
 */

namespace Drupal\hello\Controller;

use Drupal\Core\Controller\ControllerBase;

class HelloNodelistController extends ControllerBase {

	public function content($nodetype){

		$nodetypes = $this->getNodeTypes();

		if ($nodetype && !in_array($nodetype, $nodetypes)){
			$nodetype = $nodetypes[0];
		}

		$storage = \Drupal::entityTypeManager()->getStorage('node');
		$ids = $nodetype ?
			\Drupal::entityQuery('node')
				->condition('type', $nodetype)
				->execute() :
			\Drupal::entityQuery('node')->execute();
		$entities = $storage->loadMultiple($ids);

		//var_dump($entities);exit;

/*
		$links = '<a href="/hello/nodelist">all</a> /';
		foreach ($nodetypes as $nt){
			$links .= ' <a href="/hello/nodelist/'.$nt.'">'.$nt.'</a>,';
		}
		$links = trim($links, ',');

		$html = '';
		$html .= '<p>'.$links.'</p>';
		$html .= '<ul>';
		foreach ($entities as $entity){
			$html .= '<li><a href="/node/'.$entity->get('nid')->value.'">';
			$html .= $entity->getTitle().'</a></li>';
		}
		$html .= '</ul>';

		return [
			'#markup' => $html,
			'#title' => t('Nodes list')
		];
*/
		$menu = '<a href="/hello/nodelist">all</a> /';
		foreach ($nodetypes as $nt){
			$menu .= ' <a href="/hello/nodelist/'.$nt.'">'.$nt.'</a>,';
		}
		$menu = trim($menu, ',');

		$links = [];
		foreach ($entities as $entity){
			$links[] = $entity->toLink();
		}

		return [
			[
				'#markup' => '<p>'.$menu.'</p>',
				'#theme' => 'item_list',
				'#items' => $links,
			],
			['#type' => 'pager'],
		];
	}

	private function getNodeTypes(){
		$types = \Drupal::entityTypeManager()
			->getStorage('node_type')
			->loadMultiple();

		return array_keys($types);
	}

}
