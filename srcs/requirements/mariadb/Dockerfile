FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install mariadb-server nginx -y
# openrc nginx

# MYSQL SETUP
# RUN sed -i "s/999/99/" /etc/group
# RUN userdel mysql
# RUN useradd -u 999 mysql
# RUN chown -R mysql:mysql /var/lib/mysql
# RUN chown -R mysql:mysql /var/log/mysql

# MARIADB SETUP
COPY ./conf/setup.sql /
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
RUN mysql_install_db
RUN service mysql start
RUN mariadb < /setup.sql
RUN service mysql stop

# RUN mkdir -p /run/openrc
# RUN touch /run/openrc/softlevel
# RUN /etc/init.d/mariadb setup

# COPY FILES
# COPY ./conf/* /etc/mysql

# VOLUMES
# VOLUME /var/lib/mysql

# EXPOSING PORTS
EXPOSE 3306

# DAEMON
# CMD ["nginx", "-g", "daemon off;"]
# ENTRYPOINT ["/usr/bin/mysqld_safe"]
ENTRYPOINT ["/usr/bin/mysqld"]