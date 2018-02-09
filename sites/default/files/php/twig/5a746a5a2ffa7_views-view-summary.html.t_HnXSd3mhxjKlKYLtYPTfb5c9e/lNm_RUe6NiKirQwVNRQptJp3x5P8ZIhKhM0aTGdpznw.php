<?php

/* core/themes/classy/templates/views/views-view-summary.html.twig */
class __TwigTemplate_1e49aa78d3e5de0b395c4de57f398ca9ea35884943a04ce55817758dd9cca0e4 extends Twig_Template
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
        $__internal_74a0045e73fd2c035ed301a70068ecb7e224b638999d3ec3304b2d978f59ebf0 = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_74a0045e73fd2c035ed301a70068ecb7e224b638999d3ec3304b2d978f59ebf0->enter($__internal_74a0045e73fd2c035ed301a70068ecb7e224b638999d3ec3304b2d978f59ebf0_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "core/themes/classy/templates/views/views-view-summary.html.twig"));

        $tags = array("for" => 23, "if" => 25);
        $filters = array("without" => 24);
        $functions = array();

        try {
            $this->env->getExtension('Twig_Extension_Sandbox')->checkSecurity(
                array('for', 'if'),
                array('without'),
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

        // line 21
        echo "<div class=\"item-list\">
  <ul class=\"views-summary\">
  ";
        // line 23
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["rows"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["row"]) {
            // line 24
            echo "    <li><a href=\"";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->getAttribute($context["row"], "url", array()), "html", null, true));
            echo "\"";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, twig_without($this->getAttribute($this->getAttribute($context["row"], "attributes", array()), "addClass", array(0 => (($this->getAttribute($context["row"], "active", array())) ? ("is-active") : (""))), "method"), "href"), "html", null, true));
            echo ">";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->getAttribute($context["row"], "link", array()), "html", null, true));
            echo "</a>
      ";
            // line 25
            if ($this->getAttribute(($context["options"] ?? null), "count", array())) {
                // line 26
                echo "        (";
                echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->getAttribute($context["row"], "count", array()), "html", null, true));
                echo ")
      ";
            }
            // line 28
            echo "    </li>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['row'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 30
        echo "  </ul>
</div>
";
        
        $__internal_74a0045e73fd2c035ed301a70068ecb7e224b638999d3ec3304b2d978f59ebf0->leave($__internal_74a0045e73fd2c035ed301a70068ecb7e224b638999d3ec3304b2d978f59ebf0_prof);

    }

    public function getTemplateName()
    {
        return "core/themes/classy/templates/views/views-view-summary.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  78 => 30,  71 => 28,  65 => 26,  63 => 25,  54 => 24,  50 => 23,  46 => 21,);
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
 * Theme override to display a list of summary lines.
 *
 * Available variables:
 * - rows: The rows contained in this view.
 *   Each row contains:
 *   - url: The summary link URL.
 *   - link: The summary link text.
 *   - count: The number of items under this grouping.
 *   - attributes: HTML attributes to apply to each row.
 *   - active: A flag indicating whtether the row is active.
 * - options: Flags indicating how the summary should be displayed.
 *   This contains:
 *   - count: A flag indicating whether the count should be displayed.
 *
 * @see template_preprocess_views_view_summary()
 */
#}
<div class=\"item-list\">
  <ul class=\"views-summary\">
  {% for row in rows %}
    <li><a href=\"{{ row.url }}\"{{ row.attributes.addClass(row.active ? 'is-active')|without('href') }}>{{ row.link }}</a>
      {% if options.count %}
        ({{ row.count }})
      {% endif %}
    </li>
  {% endfor %}
  </ul>
</div>
", "core/themes/classy/templates/views/views-view-summary.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\core\\themes\\classy\\templates\\views\\views-view-summary.html.twig");
    }
}
