FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install wget php php-fpm php-mysqli php-mbstring -y

# COPY NECESSARY FILES
# COPY ./conf/wp-config.php /var/www/wordpress/
COPY ./tools/* /
COPY ./conf/wp-config.php /var/www/wordpress/

RUN wget https://wordpress.org/wordpress-5.9.2.tar.gz \
	&& mkdir -p /var/www/wordpress \
	&& tar xzf /wordpress-5.9.2.tar.gz --strip-components=1 -C /var/www/wordpress/ \
	&& rm -rf /wordpress-5.9.2.tar.gz \
	&& chmod -R 777 /var/www/wordpress

# SET VOLUME
VOLUME /var/www/wordpress

RUN chown -R www-data:www-data /var/www/wordpress/
RUN mkdir -p /run/php/
RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

# EXPOSING PORTS
EXPOSE 9000