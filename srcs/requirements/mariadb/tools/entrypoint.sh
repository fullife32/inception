#!/bin/bash

service mysql start
sleep 5
mysql_install_db

mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${MYSQL_ROOT_PASSWORD}');"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE ${MYSQL_DATABASE};"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER ${MYSQL_USER}@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MYSQL_USER}.* TO ${MYSQL_USER}@'localhost';"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"

service mysql stop
# mysqld
mysqld_safe