FROM alpine:3.15

LABEL maintainer="eassouli <eassouli@student.42.fr>"

RUN apk update && apk add nginx

COPY ./conf/* /

RUN adduser -D -g 'Nginx www user' -h /home/www/ wwweassouli
RUN apk add --no-cache openrc
RUN rc-update add nginx default
# RUN service nginx start

ENTRYPOINT ["/docker-entrypoint.sh"]