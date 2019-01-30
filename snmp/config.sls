# vim: ft=sls
# How to configure snmp
{%- from "snmp/map.jinja" import snmp with context %}

snmp_config:
  file.managed:
    - name: '/etc/snmp/snmpd.conf'
    - source: salt://snmp/files/config.conf
    - user: root
    - group: root
    - mode: 0600
    - template: jinja
    - context: {{snmp}}

