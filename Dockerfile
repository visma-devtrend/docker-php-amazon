FROM php:5.6-apache
COPY . /var/www/www.test.com/
COPY config/apache-site.conf /etc/apache2/sites-available/
RUN a2enmod rewrite
RUN a2ensite apache-site.conf
