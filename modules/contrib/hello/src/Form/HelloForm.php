<?php

/**
 * @file
 * Contains \Drupal\hello\Form\HelloForm.
 */

namespace Drupal\hello\Form;

use Drupal\Core\Ajax\CssCommand;
use Drupal\Core\Ajax\HtmlCommand;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Ajax\AjaxResponse;

/**
 * Implements an hello form
 */

class HelloForm extends FormBase {
    /**
     *  {@inheritdoc}
     */
    public function getFormId(){
        return 'hello_form';
    }

    /**
     *  {@inheritdoc}
     */
    public function buildForm(array $form, FormStateInterface $form_state){
        $form['champ_nombre_1'] = array(
            '#type' => 'textfield',
            '#title' => t('Number 1:'),
            '#placeholder' => t('1st value'),
            '#required' => TRUE,
            '#ajax' => array(
                'callback' => array($this, 'validateTextAjax'),
                'event' => 'change',
            ),
            '#suffix' =>'<span class="champ-erreur-1"></span>',
        );

        $form['radios'] = array(
            '#type' => 'radios',
            '#title' => $this->t('Operation'),
            '#required' => TRUE,
            '#ajax' => array(
                'callback' => array($this, 'validateTextAjax'),
                'event' => 'change',
            ),
            '#options' => array(
                'add' => $this->t('Add'),
                'substract' => $this->t('Substract'),
                'multiply' => $this->t('Multiply'),
                'divide' => $this->t('Divide'))
        );

        $form['champ_nombre_2'] = array(
            '#type' => 'textfield',
            '#title' => t('Number 2:'),
            '#placeholder' => t('2nd value'),
            '#required' => TRUE,
            '#ajax' => array(
                'callback' => array($this, 'validateTextAjax'),
                'event' => 'change',
            ),
            '#suffix' =>'<span class="champ-erreur-2"></span>',
        );

        $form['bouton_submit'] = array (
            '#type' => 'submit',
            '#value' => t('Calculate')
        );

        $resultat = $form_state->getTemporaryValue('result');
        return array('#markup' => $this->t('Result: ' . $resultat), $form);
    }

    /**
     *  {@inheritdoc}
     */
    public function validateForm(array &$form, FormStateInterface $form_state){
        $champ_nbr_1 = $form_state->getValue('champ_nombre_1');
        $champ_nbr_2 = $form_state->getValue('champ_nombre_2');
        $radios_btn = $form_state->getValue('radios');

        if (!is_numeric($champ_nbr_1)) {
            $form_state->setErrorByName('champ_nombre_1', t('Numerical value only!'));
        }
        if (!is_numeric($champ_nbr_2)) {
            $form_state->setErrorByName('champ_nombre_2', t('Numerical value only!'));
        }
        if ($radios_btn == 'divide' && $champ_nbr_2 == '0') {
            $form_state->setErrorByName('champ_nombre_2', t('Division by 0 is impossible!'));
        }
    }

    /**
     *  {@inheritdoc}
     */
    public function submitForm(array &$form, FormStateInterface $form_state){
        $champ_nbr_1 = $form_state->getValue('champ_nombre_1');
        $champ_nbr_2 = $form_state->getValue('champ_nombre_2');
        $radios_btn = $form_state->getValue('radios');

        switch ($radios_btn) {
            case 'add' :
                $resultat = $champ_nbr_1 + $champ_nbr_2;
                break;
            case 'substract' :
                $resultat = $champ_nbr_1 - $champ_nbr_2;
                break;
            case 'multiply' :
                $resultat = $champ_nbr_1 * $champ_nbr_2;
                break;
            case 'divide' :
                $resultat = $champ_nbr_1 / $champ_nbr_2;
                break;
        }
        //Afficher le résultat sur la page en msd status
        //drupal_set_message(t('Result: ' . $resultat), 'status');

        //Afficher le résultat sur une autre page
        //$form_state->setRedirect('hello.result', array('result' => $resultat));

        // Réaffiche le formulaire en tenant compte des données utilisateur
        $form_state->setTemporaryValue('result', $resultat);
        $form_state->setRebuild();
    }

    /**
     *  {@inheritdoc}
     */
    public function validateTextAjax(array &$form, FormStateInterface $form_state) {
        $css_on = ['border' => '2px solid red'];
        $css_off = ['border' => '1px solid #ccc'];
        $css_message_on = ['color' => 'red', 'display' => 'block'];
        $css_message_off = ['display' => 'none'];
        $message = 'Numerical value only';
        $message2 = 'Numerical value other than 0';
        $champ_nbr_1 = $form_state->getValue('champ_nombre_1');
        $champ_nbr_2 = $form_state->getValue('champ_nombre_2');
        $radios_btn = $form_state->getValue('radios');

        $response = new AjaxResponse();
        if ($champ_nbr_1 == '') {
            $response->addCommand(new CssCommand('#edit-champ-nombre-1', $css_off));
            $response->addCommand(new CssCommand('.champ-erreur-1', $css_message_off));
        }
        if ($champ_nbr_2 == '') {
            $response->addCommand(new CssCommand('#edit-champ-nombre-2', $css_off));
            $response->addCommand(new CssCommand('.champ-erreur-2', $css_message_off));
        }
        if (!is_numeric($champ_nbr_1) && $champ_nbr_1 != '') {
            $response->addCommand(new CssCommand('#edit-champ-nombre-1', $css_on));
            $response->addCommand(new CssCommand('#edit-champ-nombre-2', $css_off));
            $response->addCommand(new CssCommand('.champ-erreur-1', $css_message_on));
            $response->addCommand(new CssCommand('.champ-erreur-2', $css_message_off));
            $response->addCommand(new HtmlCommand('.champ-erreur-1', $message));
        }
        if (!is_numeric($champ_nbr_2) && $champ_nbr_2 != '') {
            $response->addCommand(new CssCommand('#edit-champ-nombre-2', $css_on));
            $response->addCommand(new CssCommand('#edit-champ-nombre-1', $css_off));
            $response->addCommand(new CssCommand('.champ-erreur-2', $css_message_on));
            $response->addCommand(new CssCommand('.champ-erreur-1', $css_message_off));
            $response->addCommand(new HtmlCommand('.champ-erreur-2', $message));
        }
        if ($radios_btn == 'divide' && $champ_nbr_2 == '0' || $radios_btn == 'divide' && $champ_nbr_1 == '0') {
            $response->addCommand(new CssCommand('#edit-champ-nombre-2', $css_on));
            $response->addCommand(new CssCommand('#edit-champ-nombre-1', $css_off));
            $response->addCommand(new CssCommand('.champ-erreur-2', $css_message_on));
            $response->addCommand(new CssCommand('.champ-erreur-1', $css_message_off));
            $response->addCommand(new HtmlCommand('.champ-erreur-2', $message2));
        }
        return $response;
    }
}
