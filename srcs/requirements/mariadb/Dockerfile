FROM alpine:3.14

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apk update && apk add mariadb mariadb-client nginx
RUN mysql_install_db --user=mysql

# COPY FILES
# COPY ./conf/* /etc/mysql

# VOLUMES
VOLUME /var/lib/mysql

# EXPOSING PORTS
EXPOSE 3306
# DAEMON
# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["mysqld_safe"]