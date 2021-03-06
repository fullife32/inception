#!/bin/sh

# Starting mysql
service mysql start
sleep 2

# Creating database and add an admin user
mysql -uroot -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mysql -uroot -e "CREATE USER IF NOT EXISTS '$MYSQL_ADMIN_USER'@'%' IDENTIFIED BY '$MYSQL_ADMIN_PASSWORD';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_ADMIN_USER'@'%';"
mysql -uroot -e "FLUSH PRIVILEGES;"

# https://www.ibm.com/docs/en/spectrum-lsf-rtm/10.2.0?topic=ssl-configuring-default-root-password-mysqlmariadb
# Update root password
PASS=$(mysql -uroot)
if ["$PASS" -eq ""]
then
    mysql -uroot -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
fi

# https://www.digitalocean.com/community/tutorials/how-to-migrate-a-mysql-database-between-two-servers
# Creating already made database for wordpress if it doesn't already exists
DB=$(mysql -uroot --password=$MYSQL_ROOT_PASSWORD -e "USE $MYSQL_DATABASE; SHOW TABLES;")
if ["$DB" -eq ""]
then
    mysql -uroot --password=$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < /database.sql
fi
pkill mysql

# Deamonize
mysqld -uroot --skip-networking=off