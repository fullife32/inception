FROM alpine:3.15

LABEL maintainer="eassouli <eassouli@student.42.fr>"

RUN apk update && apk add nginx

COPY ./conf/* /root/

RUN mv /root/nginx.conf /etc/nginx/conf.d/

RUN echo "PASS PASS" | adduser -g 'Nginx www user' -h /home/www/ wwweassouli
RUN rc-update add nginx default
RUN /etc/init.d/nginx start

RUN tail -f /var/log/nginx/access.log /var/log/nginx/error.log