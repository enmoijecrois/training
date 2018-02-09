<?php

/* modules/webform/templates/webform-message.html.twig */
class __TwigTemplate_a71965dcebaef6d598e1c6ddf363fa177c04b6f0efb993aae1ed5c1c1743fa35 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_278150b4d10074c1437d64e407a348bd4b7e44f88ee575709e7a10233b387950 = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_278150b4d10074c1437d64e407a348bd4b7e44f88ee575709e7a10233b387950->enter($__internal_278150b4d10074c1437d64e407a348bd4b7e44f88ee575709e7a10233b387950_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "modules/webform/templates/webform-message.html.twig"));

        $tags = array("set" => 20, "if" => 25);
        $filters = array();
        $functions = array();

        try {
            $this->env->getExtension('Twig_Extension_Sandbox')->checkSecurity(
                array('set', 'if'),
                array(),
                array()
            );
        } catch (Twig_Sandbox_SecurityError $e) {
            $e->setSourceContext($this->getSourceContext());

            if ($e instanceof Twig_Sandbox_SecurityNotAllowedTagError && isset($tags[$e->getTagName()])) {
                $e->setTemplateLine($tags[$e->getTagName()]);
            } elseif ($e instanceof Twig_Sandbox_SecurityNotAllowedFilterError && isset($filters[$e->getFilterName()])) {
                $e->setTemplateLine($filters[$e->getFilterName()]);
            } elseif ($e instanceof Twig_Sandbox_SecurityNotAllowedFunctionError && isset($functions[$e->getFunctionName()])) {
                $e->setTemplateLine($functions[$e->getFunctionName()]);
            }

            throw $e;
        }

        // line 20
        $context["classes"] = array(0 => ((        // line 21
($context["has_parent"] ?? null)) ? ("js-form-wrapper") : ("")), 1 => ((        // line 22
($context["has_parent"] ?? null)) ? ("form-wrapper") : ("")));
        // line 25
        if ( !($context["closed"] ?? null)) {
            // line 26
            echo "<div";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->getAttribute(($context["attributes"] ?? null), "addClass", array(0 => ($context["classes"] ?? null)), "method"), "html", null, true));
            echo ">";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, ($context["message"] ?? null), "html", null, true));
            echo "</div>
";
        }
        
        $__internal_278150b4d10074c1437d64e407a348bd4b7e44f88ee575709e7a10233b387950->leave($__internal_278150b4d10074c1437d64e407a348bd4b7e44f88ee575709e7a10233b387950_prof);

    }

    public function getTemplateName()
    {
        return "modules/webform/templates/webform-message.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  52 => 26,  50 => 25,  48 => 22,  47 => 21,  46 => 20,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{#
/**
 * @file
 * Default theme implementation of a Webform message container.
 *
 * Available variables:
 * - attributes: HTML attributes for the containing element.
 * - message: The rendered status_messages elements.
 * - has_parent: A flag to indicate that the container has one or more parent
 *    containers.
 * - closed: A flag to indicate that the message has been been closed and should
 *    not be displayed.
 *
 * @see template_preprocess_webform_message()
 *
 * @ingroup themeable
 */
#}
{%
  set classes = [
    has_parent ? 'js-form-wrapper',
    has_parent ? 'form-wrapper',
  ]
%}
{% if not closed %}
<div{{ attributes.addClass(classes) }}>{{ message }}</div>
{% endif %}
", "modules/webform/templates/webform-message.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\modules\\webform\\templates\\webform-message.html.twig");
    }
}
