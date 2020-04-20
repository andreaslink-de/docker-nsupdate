FROM php:7.2-alpine

COPY www /var/www/

RUN apk update \
  && apk add bind-tools

CMD php -S 0.0.0.0:80 -t /var/www/
