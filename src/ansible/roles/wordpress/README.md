Wordpress
=========

* Install items:  apache, wordpress. 
* Copy file `authorized_keys` for  gitlab runner connection to wordpress.

Requirements
------------

Ubuntu20.04

Variables
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| php_modules | [ 'php-curl', 'php-gd', 'php-mbstring', 'php-xml', 'php-xmlrpc', 'php-soap', 'php-intl', 'php-zip' ] | dependencies php|
| app_packages | [ 'apache2', 'python3-pymysql', 'php', 'php-mysql', 'libapache2-mod-php', 'git' ] | dependencies wordpress |
| http_host | "app.bolgovsky.ru" | host apache2 |
| http_port | "80" | port apache2 |
| db_host | "db01" | master-node mysql for wordpress connection |
| mysql_user| "wordpress" | mysql user with grants |
| mysql_password | "wordpress" | my_user password |
| mysql_db| "wordpress" | database name |


Templates
------------

`apache.conf.j2` - apache settings 

`authorized_keys` - for  gitlab runner connection to wordpress by ssh.

`wp-config.php.j2` - wordpress settings

Example Playbook
----------------

    - hosts: servers
      roles:
         - wordpress

