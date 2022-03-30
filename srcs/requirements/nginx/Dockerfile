FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install nginx openssl -y

# SET VOLUME ??
# VOLUME /var/www/wordpress

# COPY NECESSARY FILES
COPY ./tools/* /
COPY ./conf/nginx.conf /etc/nginx/conf.d/wordpress.conf

# EXPOSING PORTS
EXPOSE 443