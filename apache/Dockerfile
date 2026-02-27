# apache-php/Dockerfile
FROM php:8.2-apache

# Abilita i moduli Apache per il Reverse Proxy
RUN a2enmod proxy proxy_http headers rewrite

# Installa le estensioni PHP per MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Riavvia Apache per applicare le modifiche ai moduli
RUN service apache2 restart

