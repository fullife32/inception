#!/bin/sh

# SSL/TLS Config
mkdir -p /etc/ssl/private
chmod 700 /etc/ssl/private
cat "/input-ssl.txt" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $CERTS_KEY -out $CERTS_PUB

# Stay on
nginx -g 'daemon off;'