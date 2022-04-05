#!/bin/sh

# Wait for database to be created
sleep 5

# Deamonize
php-fpm7.3 --nodaemonize