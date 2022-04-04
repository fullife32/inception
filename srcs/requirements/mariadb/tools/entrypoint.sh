#!/bin/sh

# First config
mysql_install_db

# Config db and admin user
service mysql start
sleep 3
# mysql -uroot -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');"
# mysql -uroot -p$MYSQL_ROOT_PASSWORD < /setup.sql
# mysql -uroot -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
# mysql -uroot -e "CREATE USER IF NOT EXISTS ${MYSQL_USER}@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
# mysql -uroot -e "GRANT ALL PRIVILEGES ON ${MYSQL_USER}.* TO ${MYSQL_USER}@'localhost';"
# mysql -uroot -e "FLUSH PRIVILEGES;"
# mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "exit;"

mysql -uroot -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -uroot -e "CREATE USER IF NOT EXISTS 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';"
mysql -uroot -e "FLUSH PRIVILEGES;"

service mysql stop

# Deamonize
/usr/bin/mysqld_safe --skip-networking=off