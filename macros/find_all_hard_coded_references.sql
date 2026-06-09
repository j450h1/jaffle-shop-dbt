{# Override of dbt_project_evaluator macro to fix dbt-fusion incompatibility.
   The original uses regex match[1:] slice which fails in fusion (matches return maps, not tuples).
   Returning empty string disables the hard-coded references check. #}
{% macro default__find_all_hard_coded_references(node) %}
    {{ return('') }}
{% endmacro %}
