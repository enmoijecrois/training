<?php

/**
 * @file
 * Contains \Drupal\hello\Form\HelloFormCouleurs.
 */

namespace Drupal\hello\Form;


use Drupal\Core\Form\ConfigFormBase;
use Drupal\Core\Form\FormStateInterface;

/**
 * Implements an hello form
 */
class HelloFormColors extends ConfigFormBase {

    public function getFormId(){
        return 'hello_form';
    }

    public function buildForm(array $form, FormStateInterface $form_state){
        $default_value = $this->config('hello.config')->get('color');
        $form['select_colors'] = [
            '#type' => 'select',
            '#title' => t('Choose a color'),
            '#default_value' => $default_value,
            '#options' => [
                'green-class' => t('green'),
                'orange-class' => t('orange'),
                'blue-class' => t('blue'),
            ],
        ];
        return parent::buildForm($form, $form_state);
    }


    public function submitForm(array &$form, FormStateInterface $form_state){
        $color = $form_state->getValue('select_colors');
        $this->config('hello.config')->set('color', $color)->save();
        parent::submitForm($form, $form_state);
    }

    public function getEditableConfigNames(){
        return ['hello.config'];
    }

    public function validateForm(array &$form, FormStateInterface $form_state){
        return 'hello_form';
    }
}