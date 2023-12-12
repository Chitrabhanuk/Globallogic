-- -- This is chitrabhanu's editor
-- -- {% set employee='chitrabhanu' -%}
-- -- {% set city='Bangalore'-%}
-- -- my name is {{employee}} based of {{city}} city
-- -- {{employee+"    "}} {{city}}

{% set tools = ['dbt','Snowflake','Databricks','BigQuery','Redshift'] %}

{% for tool in tools -%}
I do training on {{ tool }} 
{%- if tool == 'Redshift' %} 
"That's it"
{% else %}
{{'and'}}
{% endif -%}
{% endfor %}

{% set tools_list = [] %}
{% for tool in tools  -%}
This is tool number {{ loop.index0 + 1}}:  {{ tool }}
{{ tools_list.append(tool) or "" }}
{%- endfor %}
