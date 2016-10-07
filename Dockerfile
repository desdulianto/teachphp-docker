FROM debian:jessie
MAINTAINER Des Dulianto <desdulianto@gmail.com>
RUN apt-get -y update && apt-get -y install php5-fpm php5-mysql
RUN sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php5/fpm/php-fpm.conf
RUN sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = \[::\]:9000/g' /etc/php5/fpm/pool.d/www.conf
EXPOSE 9000
CMD ["/usr/sbin/php5-fpm"]
