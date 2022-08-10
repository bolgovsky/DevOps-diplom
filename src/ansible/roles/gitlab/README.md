Gitlab-CE
=========

Install Gitlab (Community Edition as default) on host

Requirements
------------

Ubuntu20.04

Variables
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| gitlab_domain | gitlab.bolgovsky.ru | gitlab FQ domain name|
| gitlab_external_url | http://{{ gitlab_domain }}/ | external URL gitlab |
| gitlab_edition |gitlab-ce | version(default - Community Edition) |
| gitlab_config_template | gitlab.rb.j2 | settings file for initial configuration gitlab (and runner) |
| gitlab_repository_installation_script_url | "https://packages.gitlab.com/install/repositories/gitlab/{{ gitlab_edition }}/script.deb.sh"| .sh for install gitlab|
| gitlab_dependencies: |postfix, curl, tzdata| gitlab-dependencies |
| gitlab_time_zone | UTF | timezone |
| gitlab_default_theme | 2 | gitlab-theme |
| gitlab_root_pass |  G1tl@bP@$$w0rd | default root password  |
| gitlab_runner_token | 45817210-36f6-4093-8df5-f76b60481a09 | default token for runner registration (generate by `uuidgen`)|

Templates
------------

`gitlab.rb.j2` - CONFIG FILE FOR GITLAB (gitlab_external_url, gitlab_root_pass, gitlab_runner_token)

Example Playbook
----------------

    - hosts: servers
      roles:
         - gitlab
