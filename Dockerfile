FROM php:5.6-apache
#FROM ubuntu:14.04

# install dependencies
#RUN apt-get update -y
#RUN apt-get install -y git curl apache2 php5 libapache2-mod-php5 php5-mcrypt php5-mysql

# install app
RUN rm -fr /var/www/*
COPY config/apache-site.conf /etc/apache2/sites-available/
COPY . /var/www/app/

# configure apache
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www
RUN a2ensite apache-site.conf

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
