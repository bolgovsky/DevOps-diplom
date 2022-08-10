Node Exporter
=========

Install `node_exporter` to the host.

Requirements
------------

Ubuntu20.04

Role Variables
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| node_exporter_version | 0.18.1 | version|
| node_exporter_arch | amd64 | architecture |
| node_exporter_download_url |https://github.com/prometheus/node_exporter/releases/download/v{{ node_exporter_version }}/node_exporter-{{ node_exporter_version }}.linux-{{ node_exporter_arch }}.tar.gz | url to archive |
| node_exporter_bin_path | /usr/local/bin/node_exporter| where to install |

Templates
------------

`node_exporter.service.j2` - node exporter settings

Dependencies
------------

No

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - node_exporter

License
-------

MIT

Author Information
------------------

Bolgov D.Yu.
