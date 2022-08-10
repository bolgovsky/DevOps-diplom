Alertmanager
=========
 
Install alertmanager on host

Requirements
------------

Ubuntu20.04

Variables
--------------

No

Templates
------------

 `alertmanager.service` - for systemd service alertmanager

Example Playbook
----------------

    - hosts: servers
      roles:
         - alertmanager
