FROM php:8.2-apache

# Copy project files
COPY . /var/www/html/

# Enable Apache rewrite (optional but safe)
RUN a2enmod rewrite

# Fix port issue for Railway
RUN sed -i 's/80/${PORT}/g' /etc/apache2/ports.conf /etc/apache2/sites-enabled/000-default.conf

EXPOSE 80
