FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install mariadb-server procps -y

# CONFIG TO OPEN PORT
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf

# MARIADB SETUP
COPY ./tools/* /
COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# VOLUMES
VOLUME /var/lib/mysql

# EXPOSING PORTS
EXPOSE 3306