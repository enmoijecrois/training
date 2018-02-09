<?php

/* themes/ive/templates/form--search-block-form.html.twig */
class __TwigTemplate_00a4cd2f82282e9bb84a0d7c18bd85411785a7cfd08a2e875ed7ad34d8c929ee extends Twig_Template
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
        $__internal_15b46d7e236aeb9251ea262e5d7304bce6c5facb3da86ff0e996f2b109e120a0 = $this->env->getExtension("Drupal\\webprofiler\\Twig\\Extension\\ProfilerExtension");
        $__internal_15b46d7e236aeb9251ea262e5d7304bce6c5facb3da86ff0e996f2b109e120a0->enter($__internal_15b46d7e236aeb9251ea262e5d7304bce6c5facb3da86ff0e996f2b109e120a0_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "themes/ive/templates/form--search-block-form.html.twig"));

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

        // line 13
        echo "<form";
        echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, $this->getAttribute(($context["attributes"] ?? null), "addClass", array(0 => "search-form", 1 => "search-block-form"), "method"), "html", null, true));
        echo ">
  ";
        // line 14
        echo $this->env->getExtension('Twig_Extension_Sandbox')->ensureToStringAllowed($this->env->getExtension('Drupal\Core\Template\TwigExtension')->escapeFilter($this->env, ($context["children"] ?? null), "html", null, true));
        echo "
</form>
";
        
        $__internal_15b46d7e236aeb9251ea262e5d7304bce6c5facb3da86ff0e996f2b109e120a0->leave($__internal_15b46d7e236aeb9251ea262e5d7304bce6c5facb3da86ff0e996f2b109e120a0_prof);

    }

    public function getTemplateName()
    {
        return "themes/ive/templates/form--search-block-form.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  51 => 14,  46 => 13,);
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
 * Default theme implementation for a 'form' element.
 *
 * Available variables:
 * - attributes: A list of HTML attributes for the wrapper element.
 * - children: The child elements of the form.
 *
 * @see template_preprocess_form()
 */
#}
<form{{ attributes.addClass('search-form', 'search-block-form') }}>
  {{ children }}
</form>
", "themes/ive/templates/form--search-block-form.html.twig", "C:\\wamp\\www\\drupal-8.4.4\\themes\\ive\\templates\\form--search-block-form.html.twig");
    }
}
