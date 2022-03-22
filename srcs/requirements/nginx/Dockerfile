FROM debian:buster

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apt-get update && apt-get install nginx openssl gettext -y

# COPY NECESSARY FILES
COPY ./conf/input-ssl.txt /input-ssl.txt
COPY ./tools/entrypoint.sh /entrypoint.sh

# EXPOSING PORTS
EXPOSE 80
EXPOSE 443