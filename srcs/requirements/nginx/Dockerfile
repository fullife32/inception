FROM alpine:3.15

LABEL maintainer="eassouli <eassouli@student.42.fr>"

RUN apk update && apk add nginx openssl

# RUN adduser -D -g 'Nginx www user' -h /home/www/ wwweassouli
RUN apk add --no-cache openrc
RUN rc-update add nginx default

COPY ./conf/entrypoint.sh /entrypoint.sh
COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./conf/input-ssl.txt /input-ssl.txt

# RUN service nginx start

ENTRYPOINT ["/entrypoint.sh"]