FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install mariadb-server mariadb-client procps -y

# COPY NECESSARY FILES
COPY ./tools/* /

# SETUP WORDPRESS ALREADY MADE DATABASE
COPY ./conf/wordpress_database.sql /

# CONFIG TO OPEN PORT
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# VOLUMES
VOLUME /var/lib/mysql

# EXPOSING PORTS
EXPOSE 3306