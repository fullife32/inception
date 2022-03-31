#!/bin/sh

mysql_install_db
service mysql start
sleep 5

# mysql -uroot -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');"
# mysql -uroot -p$MYSQL_ROOT_PASSWORD < /setup.sql
mysql -uroot -e "CREATE DATABASE ${MYSQL_DATABASE};"
mysql -uroot -e "CREATE USER ${MYSQL_USER}@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON ${MYSQL_USER}.* TO ${MYSQL_USER}@'localhost';"
mysql -uroot -e "FLUSH PRIVILEGES;"
# mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "exit;"

service mysql stop
# mysqld
/usr/bin/mysqld_safe --skip-networking=off