#!/bin/sh

sleep 7
# Setup Wordpress
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root --locale=fr_FR --path="/var/www/wordpress"
# wp core install --allow-root --path="/var/www/wordpress" --url=$DOMAIN_NAME --title="Blog Title" --admin_user=$WP_USER_ONE --admin_password=$WP_PASSWORD_ONE --admin_email="eassouli@student.42.fr"
# wp config create --allow-root --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb:3306
# wp core config --allow-root --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb:3306

# Deamonize
php-fpm7.3 --nodaemonize