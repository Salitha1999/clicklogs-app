FROM php:8.2-apache

# Copy files
COPY . /var/www/html/

# Fix Apache MPM issue (VERY IMPORTANT)
RUN a2dismod mpm_event || true
RUN a2dismod mpm_worker || true
RUN a2enmod mpm_prefork

# Enable rewrite (optional)
RUN a2enmod rewrite

EXPOSE 80
