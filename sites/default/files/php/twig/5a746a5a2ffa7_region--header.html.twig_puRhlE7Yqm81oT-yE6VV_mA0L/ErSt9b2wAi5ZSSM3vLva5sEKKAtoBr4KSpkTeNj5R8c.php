<?php

/* themes/ive/templates/region--header.html.twig */
class __TwigTemplate_e077b507ea4e23ae3de97b4e19a5a859c0d81ef3661c7e8b2d96c0826fa650ec extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("region.html.twig", "themes/ive/templates/region--header.html.twig", 1);
        $this->blocks = array(
        );
    }

    protected function doGetParent(array $context)
    {
        return "region.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_6969a0a8f557136de5173094125b9441c68e7bbd5d384be8100531bb75818ede = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_6969a0a8f557136de5173094125b9441c68e7bbd5d384be8100531bb75818ede->enter($__internal_6969a0a8f557136de5173094125b9441c68e7bbd5d384be8100531bb75818ede_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "themes/ive/templates/region--header.html.twig"));

        $tags = array("set" => 16);
        $filters = array();
        $functions = array();

        try {
            $this->env->getExtension('Twig_Extension_Sandbox')->checkSecurity(
                array('set'),
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

        // line 16
        $context["attributes"] = $this->getAttribute(($context["attributes"] ?? null), "addClass", array(0 => "clearfix"), "method");
        // line 1
        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_6969a0a8f557136de5173094125b9441c68e7bbd5d384be8100531bb75818ede->leave($__internal_6969a0a8f557136de5173094125b9441c68e7bbd5d384be8100531bb75818ede_prof);

    }

    public function getTemplateName()
    {
        return "themes/ive/templates/region--header.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  53 => 1,  51 => 16,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% extends \"region.html.twig\" %}
{#
/**
 * @file
 * Ive's theme implementation to display a header region.
 *
 * Available variables:
 * - content: The content for this region, typically blocks.
 * - attributes: HTML attributes for the region div.
 * - region: The name of the region variable as defined in the theme's
 *   .info.yml file.
 *
 * @see template_preprocess_region()
 */
#}
{% set attributes = attributes.addClass('clearfix') %}
", "themes/ive/templates/region--header.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\themes\\ive\\templates\\region--header.html.twig");
    }
}
