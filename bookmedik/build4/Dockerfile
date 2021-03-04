FROM debian
RUN apt-get update && apt-get install -y apache2 libapache2-mod-php php php-mysql php-dom php-xml php-gd php-mbstring && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm /var/www/html/index.html
EXPOSE 80
COPY drupal-9.1.4/ /var/www/html
ADD script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
RUN chmod a+w /var/www/html/sites/default/
RUN cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
RUN chmod a+w /var/www/html/sites/default/settings.php
RUN a2enmod rewrite
CMD ["/usr/local/bin/script.sh"]

