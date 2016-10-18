FROM php:fpm-alpine
MAINTAINER Des Dulianto <desdulianto@gmail.com>
RUN apk update && docker-php-ext-install mysqli pdo_mysql
#RUN sed -i 's/;daemonize = yes/daemonize = no/g' /usr/local/etc/php-fpm.conf
#RUN sed -i 's/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/g' /usr/local/etc/php-fpm.d/www.conf
