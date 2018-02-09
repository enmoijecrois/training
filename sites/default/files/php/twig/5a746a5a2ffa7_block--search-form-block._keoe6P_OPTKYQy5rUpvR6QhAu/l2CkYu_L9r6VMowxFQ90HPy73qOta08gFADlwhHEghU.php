<?php

/* themes/ive/templates/block--search-form-block.html.twig */
class __TwigTemplate_0c78547e5f0af293a1bd73dd20667a2b9a5bda46b24ad7b3ae1c28c50ef9edf5 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@classy/block/block--search-form-block.html.twig", "themes/ive/templates/block--search-form-block.html.twig", 1);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@classy/block/block--search-form-block.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_dce5def288373b1353e53e4ff92b1d3feddce468f344403dfc096aece3b78d3a = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_dce5def288373b1353e53e4ff92b1d3feddce468f344403dfc096aece3b78d3a->enter($__internal_dce5def288373b1353e53e4ff92b1d3feddce468f344403dfc096aece3b78d3a_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "themes/ive/templates/block--search-form-block.html.twig"));

        $tags = array();
        $filters = array();
        $functions = array();

        try {
            $this->env->getExtension('Twig_Extension_Sandbox')->checkSecurity(
                array(),
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
        
        $__internal_dce5def288373b1353e53e4ff92b1d3feddce468f344403dfc096aece3b78d3a->leave($__internal_dce5def288373b1353e53e4ff92b1d3feddce468f344403dfc096aece3b78d3a_prof);

    }

    // line 19
    public function block_content($context, array $blocks = array())
    {
        $__internal_34d2d49e28136f4d966c0886e9a952af15d17d3431175b0e4af98445e93188f4 = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_34d2d49e28136f4d966c0886e9a952af15d17d3431175b0e4af98445e93188f4->enter($__internal_34d2d49e28136f4d966c0886e9a952af15d17d3431175b0e4af98445e93188f4_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "content"));

        // line 20
        echo "  <div";
        echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->getAttribute(($context["content_attributes"] ?? null), "addClass", array(0 => "content", 1 => "container-inline"), "method"), "html", null, true));
        echo ">
    ";
        // line 21
        $this->displayParentBlock("content", $context, $blocks);
        echo "
  </div>
";
        
        $__internal_34d2d49e28136f4d966c0886e9a952af15d17d3431175b0e4af98445e93188f4->leave($__internal_34d2d49e28136f4d966c0886e9a952af15d17d3431175b0e4af98445e93188f4_prof);

    }

    public function getTemplateName()
    {
        return "themes/ive/templates/block--search-form-block.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  69 => 21,  64 => 20,  58 => 19,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% extends \"@classy/block/block--search-form-block.html.twig\" %}
{#
/**
 * @file
 * Ive's theme implementation for a search form block. Extends Classy's
 * search form block template.
 *
 * Available variables:
 * - content: The content of this block.
 * - content_attributes: A list of HTML attributes applied to the main content
 *   tag that appears in the template.
 *
 * @see template_preprocess_block()
 * @see search_preprocess_block()
 *
 * @ingroup themeable
 */
#}
{% block content %}
  <div{{ content_attributes.addClass('content', 'container-inline') }}>
    {{ parent() }}
  </div>
{% endblock %}
", "themes/ive/templates/block--search-form-block.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\themes\\ive\\templates\\block--search-form-block.html.twig");
    }
}
