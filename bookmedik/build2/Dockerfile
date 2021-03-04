FROM php:7.4.3-apache
MAINTAINER Manuel Lora Román "manuelloraroman@gmail.com"
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
COPY bookmedik_origin/ /var/www/html
EXPOSE 80

ENV USER=bookmedik 
ENV PASSWORD=bookmedik 
ENV HOST=db 
ENV DB=bookmedik

