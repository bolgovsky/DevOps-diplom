Nginx and certbot
=========

Role install mysql in master-slave mode with replication.

Requirements
------------

* two nodes
* Ubuntu20.04

Variables
--------------

All variables are defined in `/defaults` and may be overloaded (for example in `/vars` ). 

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| db_user | wordpress | as in task 4.
| db_password | wordpress  | as in task 4.
| db_name | wordpress  | as in task 4.
| mysql_replication_master | db01  | as in task 4.
| mysql_replication_user| replica_user | as default
| mysql_replication_user_password | Repl1c@P@$$w0rd | as default


Templates
------------

`master.cnf` - settings for master-node.

`slave.cnf` - settings for slave-node.


Example Playbook
----------------

    - hosts: servers
      roles:
         - mysql
