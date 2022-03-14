#!/bin/sh

# service nginx start

mkdir /etc/ssl/private
chmod 700 /etc/ssl/private
cat "/input-ssl.txt" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

nginx -c /etc/nginx/conf.d/nginx.conf
nginx -s reload

nginx -g "daemon off;"