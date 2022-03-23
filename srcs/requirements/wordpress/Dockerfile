FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install wget php-fpm php-mysql php-mbstring -y

# COPY NECESSARY FILES
COPY ./tools/entrypoint.sh /entrypoint.sh

# SET VOLUME
VOLUME /var/www/

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.1.3/phpMyAdmin-5.1.3-all-languages.tar.gz \
	&& mkdir -p /var/www/phpmyadmin \
	&& tar xzf /phpMyAdmin-5.1.3-all-languages.tar.gz --strip-components=1 -C /var/www/phpmyadmin/ \
	&& rm -rf /phpMyAdmin-5.1.3-all-languages.tar.gz \
	&& chmod -R 777 /var/www/phpmyadmin
	# && mv /root/config.default.php /var/www/html/phpmyadmin/libraries/ \

RUN wget https://wordpress.org/wordpress-5.9.2.tar.gz \
	&& mkdir -p /var/www/wordpress \
	&& tar xzf /wordpress-5.9.2.tar.gz --strip-components=1 -C /var/www/wordpress/ \
	&& rm -rf /wordpress-5.9.2.tar.gz \
	&& chmod -R 777 /var/www/wordpress
	# && mv /root/wp-config.php /var/www/html/wordpress/ \

# RUN chown -R www-data:www-data /var/www/wordpress/
RUN mkdir -p /run/php/
RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

# EXPOSING PORTS
EXPOSE 9000