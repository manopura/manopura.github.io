{%- comment -%}
<!--
Formats a post's date in Dutch, e.g. 17 Maart 2019
usage:
{%- include dd.liq post=post -%}
-->
{%- endcomment -%}

<!-- Whitespace added for readability -->
{{ include.post.date | date: "%-d" }}
{% assign m = include.post.date | date: "%-m" %}
{% case m %}
  {% when '1' %}Januari
  {% when '2' %}Februari
  {% when '3' %}Maart
  {% when '4' %}April
  {% when '5' %}Mei
  {% when '6' %}Juni
  {% when '7' %}Juli
  {% when '8' %}Augustus
  {% when '9' %}September
  {% when '10' %}Oktober
  {% when '11' %}November
  {% when '12' %}December
{% endcase %}
{{ include.post.date | date: "%Y" }}