#!/bin/bash

mysql_install_db
service mysql start
sleep 5
mariadb < /setup.sql
service mysql stop
mysqld_safe