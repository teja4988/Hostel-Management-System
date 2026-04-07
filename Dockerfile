FROM php:8.2-apache

# Copy project files
COPY . /var/www/html/

# Install MySQL extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache rewrite
RUN a2enmod rewrite

EXPOSE 80