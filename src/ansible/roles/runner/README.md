Gitlab-Runner
=========

Install `Gitlab Runner` to the host.

Requirements
------------

Ubuntu20.04

Role Variables
--------------
 
| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
|gitlab_runner_token| 45817210-36f6-4093-8df5-f76b60481a09 | token for runner registration|
|domain| bolgovsky.ru| domain name|

Templates
------------

`id_rsa` - public key for user runner

`id_rsa.pub` - private key for user runner


Dependencies
------------

No

Example Playbook
----------------


    - hosts: servers
      roles:
         - runner

License
-------

MIT

Author Information
------------------

Bolgov D.Yu.
