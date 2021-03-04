FROM php:7-fpm
MAINTAINER Manuel Lora Román "manuelloraroman@gmail.com"
RUN docker-php-ext-install mysqli
COPY bookmedik_origin /var/www/html

ENV USER=bookmedik
ENV PASSWORD=bookmedik
ENV HOST=db
ENV DB=bookmedik
