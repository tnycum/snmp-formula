# vim: ft=sls
# Init snmp
{%- from "snmp/map.jinja" import snmp with context %}
{# Below is an example of having a toggle for the state #}

{% if snmp.enabled %}
include:
  - snmp.install
  - snmp.config
  - snmp.service
{% else %}
'snmp-formula disabled':
  test.succeed_without_changes
{% endif %}

