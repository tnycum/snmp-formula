# vim: ft=sls
# Manage service for service snmp
{%- from "snmp/map.jinja" import snmp with context %}

snmp_service:
  service.running:
    - name: snmp
    - enable: True
    - watch:
        - file: snmp_config

