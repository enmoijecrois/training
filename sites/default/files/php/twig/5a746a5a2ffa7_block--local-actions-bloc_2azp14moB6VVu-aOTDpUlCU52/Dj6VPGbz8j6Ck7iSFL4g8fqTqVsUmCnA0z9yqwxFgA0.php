<?php

/* core/themes/classy/templates/block/block--local-actions-block.html.twig */
class __TwigTemplate_11655e1623dbb79206dd4873b3a0cac7b5a65c15cad605d9d0872e229a09f169 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("block.html.twig", "core/themes/classy/templates/block/block--local-actions-block.html.twig", 1);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "block.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_3f1d5d3a5a1012e283c6f06f1da53e938782959b5edccbc74bc02ace2213f490 = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_3f1d5d3a5a1012e283c6f06f1da53e938782959b5edccbc74bc02ace2213f490->enter($__internal_3f1d5d3a5a1012e283c6f06f1da53e938782959b5edccbc74bc02ace2213f490_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "core/themes/classy/templates/block/block--local-actions-block.html.twig"));

        $tags = array("if" => 9);
        $filters = array();
        $functions = array();

        try {
            $this->env->getExtension('Twig_Extension_Sandbox')->checkSecurity(
                array('if'),
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

        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_3f1d5d3a5a1012e283c6f06f1da53e938782959b5edccbc74bc02ace2213f490->leave($__internal_3f1d5d3a5a1012e283c6f06f1da53e938782959b5edccbc74bc02ace2213f490_prof);

    }

    // line 8
    public function block_content($context, array $blocks = array())
    {
        $__internal_50d9b7217eeb03ae5177128aabdb9d63cb4f5ba6df326e39c544817573b9f683 = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_50d9b7217eeb03ae5177128aabdb9d63cb4f5ba6df326e39c544817573b9f683->enter($__internal_50d9b7217eeb03ae5177128aabdb9d63cb4f5ba6df326e39c544817573b9f683_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "content"));

        // line 9
        echo "  ";
        if (($context["content"] ?? null)) {
            // line 10
            echo "    <nav class=\"action-links\">";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, ($context["content"] ?? null), "html", null, true));
            echo "</nav>
  ";
        }
        
        $__internal_50d9b7217eeb03ae5177128aabdb9d63cb4f5ba6df326e39c544817573b9f683->leave($__internal_50d9b7217eeb03ae5177128aabdb9d63cb4f5ba6df326e39c544817573b9f683_prof);

    }

    public function getTemplateName()
    {
        return "core/themes/classy/templates/block/block--local-actions-block.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  67 => 10,  64 => 9,  58 => 8,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% extends \"block.html.twig\" %}
{#
/**
 * @file
 * Theme override for local actions (primary admin actions.)
 */
#}
{% block content %}
  {% if content %}
    <nav class=\"action-links\">{{ content }}</nav>
  {% endif %}
{% endblock %}
", "core/themes/classy/templates/block/block--local-actions-block.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\core\\themes\\classy\\templates\\block\\block--local-actions-block.html.twig");
    }
}
