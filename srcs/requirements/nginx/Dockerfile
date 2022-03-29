FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install nginx openssl -y

# SET VOLUME ??
# VOLUME /var/www/wordpress

# COPY NECESSARY FILES
COPY ./tools/* /

# EXPOSING PORTS
# EXPOSE 80
EXPOSE 443