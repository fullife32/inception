FROM alpine:3.14

LABEL maintainer="eassouli <eassouli@student.42.fr>"

# INSTALLING DEPENDANCIES
RUN apk update && apk add nginx openssl bash

# COPY NECESSARY FILES
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/input-ssl.txt /input-ssl.txt

# SSL/TLS CONFIG
RUN mkdir -p /etc/ssl/private
RUN chmod 700 /etc/ssl/private
RUN cat "/input-ssl.txt" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

# EXPOSING PORTS
EXPOSE 80
EXPOSE 443

# DAEMON
CMD ["nginx", "-g", "daemon off;"]