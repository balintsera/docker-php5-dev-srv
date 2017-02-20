FROM php:7-cli
MAINTAINER sera.balint@e-vista.hu
EXPOSE 8080

RUN apt-get update -y && apt-get install -y libpng-dev
RUN apt-get update -y && apt-get install -y libxml2-dev
RUN apt-get update -y && apt-get install -y php-pear libssl-dev libcurl4-openssl-dev libcurl4-openssl-dev pkg-config libssl-dev
RUN pecl install mongodb

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install soap


VOLUME /usr/local/etc/php/php.ini

WORKDIR /usr/src/myapp

CMD ["php", "-S", "0.0.0.0:8080" ]
