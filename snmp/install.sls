# vim: ft=sls
# How to install snmp
{%- from "snmp/map.jinja" import snmp with context %}

snmp_pkg:
  pkg.installed:
    - name: {{ snmp.pkg }}

