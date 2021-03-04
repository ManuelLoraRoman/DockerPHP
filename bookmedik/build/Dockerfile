FROM debian
MAINTAINER Manuel Lora Román "manuelloraroman@gmail.com"
RUN apt-get update && apt-get install -y apache2 php php-mysql && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
RUN rm index.html
COPY bookmedik/ /var/www/html
EXPOSE 80
ADD script.sh /usr/local/bin


ENV USER=bookmedik
ENV PASSWORD=bookmedik
ENV HOST=db
ENV DB=bookmedik

CMD ["script.sh"]

