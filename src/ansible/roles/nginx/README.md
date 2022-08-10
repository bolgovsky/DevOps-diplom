Nginx and certbot
=========


Install nginx, iptable-persistent and certbot(for getiing SSL-sertificates).
Add update SSL-sertificate to crone.

Requirements
------------

Ubuntu20.04

Переменные
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| domain | bolgovsky.ru |  |

Templates
------------

`http.j2` - settings for testing nginx by http.

`index.html` - simple http-page for test.

`http_301.j2` - rewrite settings nginx to redirect http to https.

`https.j2` - settings for testing nginx by https.

Example Playbook
----------------

    - hosts: servers
      roles:
         - nginx
