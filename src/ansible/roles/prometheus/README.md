Prometheus
=========

Install `prometheus` to the host.

Requirements
------------

Ubuntu20.04

Role Variables
--------------
 
No

Templates
------------

`alert.yml` - alert rules

`prometheus.service` - prometheus service settings

`prometheus.yml` - prometheus settings for alert rules

Dependencies
------------

No

Example Playbook
----------------


    - hosts: servers
      roles:
         - prometheus

License
-------

MIT

Author Information
------------------

Bolgov D.Yu.
