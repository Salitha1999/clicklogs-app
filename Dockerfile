FROM php:8.2-cli

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Railway uses PORT environment variable
CMD php -S 0.0.0.0:$PORT
