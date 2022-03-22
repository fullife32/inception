#!/bin/bash

# SSL/TLS Config
mkdir -p /etc/ssl/private
chmod 700 /etc/ssl/private
cat "/input-ssl.txt" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

# nginx -s start
# envsubst '\$DOMAIN_NAME \$NGINX_PORT \$NGINX_PORT_SSL \$CERTS_PUB \$CERTS_KEY' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/conf.d/nginx.conf
# nginx -c /etc/nginx/conf.d/nginx.conf

# Stay on
nginx -g 'daemon off;'