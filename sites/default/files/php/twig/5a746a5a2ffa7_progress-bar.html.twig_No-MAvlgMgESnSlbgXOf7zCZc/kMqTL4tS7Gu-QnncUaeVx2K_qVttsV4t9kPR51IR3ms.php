<?php

/* core/themes/classy/templates/misc/progress-bar.html.twig */
class __TwigTemplate_1b26d5c2296a8e47f942918664b190410df0f0db35dba9d6ed9ef9c4419ff56e extends Twig_Template
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
        $__internal_b7d8779854c46c2c0a9b468d0f8136ceee7b370ba285991ffa37855a10d1a2fc = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_b7d8779854c46c2c0a9b468d0f8136ceee7b370ba285991ffa37855a10d1a2fc->enter($__internal_b7d8779854c46c2c0a9b468d0f8136ceee7b370ba285991ffa37855a10d1a2fc_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "core/themes/classy/templates/misc/progress-bar.html.twig"));

        $tags = array("if" => 16);
        $filters = array();
        $functions = array("attach_library" => 14);

        try {
            $this->env->getExtension('Twig_Extension_Sandbox')->checkSecurity(
                array('if'),
                array(),
                array('attach_library')
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

        // line 14
        echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->env->getExtension('Drupal\Core\Template\TwigExtension')->attachLibrary("classy/progress"), "html", null, true));
        echo "
<div class=\"progress\" data-drupal-progress>
  ";
        // line 16
        if (($context["label"] ?? null)) {
            // line 17
            echo "    <div class=\"progress__label\">";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, ($context["label"] ?? null), "html", null, true));
            echo "</div>
  ";
        }
        // line 19
        echo "  <div class=\"progress__track\"><div class=\"progress__bar\" style=\"width: ";
        echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, ($context["percent"] ?? null), "html", null, true));
        echo "%\"></div></div>
  <div class=\"progress__percentage\">";
        // line 20
        echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, ($context["percent"] ?? null), "html", null, true));
        echo "%</div>
  <div class=\"progress__description\">";
        // line 21
        echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, ($context["message"] ?? null), "html", null, true));
        echo "</div>
</div>
";
        
        $__internal_b7d8779854c46c2c0a9b468d0f8136ceee7b370ba285991ffa37855a10d1a2fc->leave($__internal_b7d8779854c46c2c0a9b468d0f8136ceee7b370ba285991ffa37855a10d1a2fc_prof);

    }

    public function getTemplateName()
    {
        return "core/themes/classy/templates/misc/progress-bar.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  68 => 21,  64 => 20,  59 => 19,  53 => 17,  51 => 16,  46 => 14,);
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
 * Theme override for a progress bar.
 *
 * Note that the core Batch API uses this only for non-JavaScript batch jobs.
 *
 * Available variables:
 * - label: The label of the working task.
 * - percent: The percentage of the progress.
 * - message: A string containing information to be displayed.
 */
#}
{{ attach_library('classy/progress') }}
<div class=\"progress\" data-drupal-progress>
  {% if label %}
    <div class=\"progress__label\">{{ label }}</div>
  {% endif %}
  <div class=\"progress__track\"><div class=\"progress__bar\" style=\"width: {{ percent }}%\"></div></div>
  <div class=\"progress__percentage\">{{ percent }}%</div>
  <div class=\"progress__description\">{{ message }}</div>
</div>
", "core/themes/classy/templates/misc/progress-bar.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\core\\themes\\classy\\templates\\misc\\progress-bar.html.twig");
    }
}
