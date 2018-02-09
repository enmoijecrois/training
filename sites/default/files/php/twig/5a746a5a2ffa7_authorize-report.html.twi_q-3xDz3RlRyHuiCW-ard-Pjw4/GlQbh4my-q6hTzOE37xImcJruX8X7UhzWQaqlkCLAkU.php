<?php

/* core/themes/stable/templates/admin/authorize-report.html.twig */
class __TwigTemplate_987120f5863d70c61a5941da0dd7e60a132e14573f6d2f9033b91173b19e1c65 extends Twig_Template
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
        $__internal_2b3966098a28039858c5f5801631fe4ade1d24fa24e442635f135c15cdc167ce = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_2b3966098a28039858c5f5801631fe4ade1d24fa24e442635f135c15cdc167ce->enter($__internal_2b3966098a28039858c5f5801631fe4ade1d24fa24e442635f135c15cdc167ce_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "core/themes/stable/templates/admin/authorize-report.html.twig"));

        $tags = array("if" => 15, "for" => 17);
        $filters = array();
        $functions = array();

        try {
            $this->env->getExtension('Twig_Extension_Sandbox')->checkSecurity(
                array('if', 'for'),
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

        // line 15
        if (($context["messages"] ?? null)) {
            // line 16
            echo "  <div";
            echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->getAttribute(($context["attributes"] ?? null), "addClass", array(0 => "authorize-results"), "method"), "html", null, true));
            echo ">
    ";
            // line 17
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["messages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["message_group"]) {
                // line 18
                echo "      ";
                echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $context["message_group"], "html", null, true));
                echo "
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message_group'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 20
            echo "  </div>
";
        }
        
        $__internal_2b3966098a28039858c5f5801631fe4ade1d24fa24e442635f135c15cdc167ce->leave($__internal_2b3966098a28039858c5f5801631fe4ade1d24fa24e442635f135c15cdc167ce_prof);

    }

    public function getTemplateName()
    {
        return "core/themes/stable/templates/admin/authorize-report.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  66 => 20,  57 => 18,  53 => 17,  48 => 16,  46 => 15,);
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
 * Theme override for authorize.php operation report templates.
 *
 * This report displays the results of an operation run via authorize.php.
 *
 * Available variables:
 * - messages: A list of result messages.
 * - attributes: HTML attributes for the element.
 *
 * @see template_preprocess_authorize_report()
 */
#}
{% if messages %}
  <div{{ attributes.addClass('authorize-results') }}>
    {% for message_group in messages %}
      {{ message_group }}
    {% endfor %}
  </div>
{% endif %}
", "core/themes/stable/templates/admin/authorize-report.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\core\\themes\\stable\\templates\\admin\\authorize-report.html.twig");
    }
}
