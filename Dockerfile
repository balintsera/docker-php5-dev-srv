FROM php:5.6-cli
MAINTAINER sera.balint@e-vista.hu
EXPOSE 8080

RUN apt-get update -y && apt-get install -y libpng-dev
RUN apt-get update -y && apt-get install -y libxml2-dev

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install soap

VOLUME /usr/local/etc/php/php.ini

WORKDIR /usr/src/myapp

CMD ["php", "-S", "0.0.0.0:8080" ]
