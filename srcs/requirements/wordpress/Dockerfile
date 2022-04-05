FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install wget php php-fpm php-mysqli php-mbstring -y

# COPY NECESSARY FILES
COPY ./tools/* /

# DOWNLOADING WORDPRESS
RUN wget https://wordpress.org/wordpress-5.9.2.tar.gz \
	&& mkdir -p /var/www/wordpress \
	&& tar xzf /wordpress-5.9.2.tar.gz --strip-components=1 -C /var/www/wordpress/ \
	&& rm -rf /wordpress-5.9.2.tar.gz \
	&& chmod -R 777 /var/www/wordpress

# ADD WORDPRESS AND PHP CONFIGURATION TO CONNECT TO DB WITH CORRECT PORT
COPY ./conf/wp-config.php /var/www/wordpress/
RUN chmod 777 /var/www/wordpress/wp-config.php
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# SET VOLUME
VOLUME /var/www/wordpress

# CONFIG CONNECTION
RUN chown -R www-data:www-data /var/www/wordpress/
RUN mkdir -p /run/php/

# EXPOSING PORTS
EXPOSE 9000