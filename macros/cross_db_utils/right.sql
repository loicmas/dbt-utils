{% macro right(string_text, length_expression) -%}
    {{ adapter_macro('dbt_utils.right', string_text, length_expression) }}
{% endmacro %}

{% macro default__right(string_text, length_expression) %}

    right(
        {{ string_text }},
        {{ length_expression }}
    )
    
{%- endmacro -%}

{% macro bigquery__substr(string_text, length_expression) %}

    substr(
        {{ string_text }},
        - {{ length_expression }}
    )

{%- endmacro -%}