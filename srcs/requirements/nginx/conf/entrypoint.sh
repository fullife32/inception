#!/bin/sh

mkdir -p /etc/ssl/private
chmod 700 /etc/ssl/private
cat "/input-ssl.txt" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
echo coucou >> /test.html
nginx -g "daemon off;"