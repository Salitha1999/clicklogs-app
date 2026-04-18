FROM php:8.2-cli

WORKDIR /app

COPY . .

# Force fallback port if Railway PORT not set
ENV PORT=8080

CMD php -S 0.0.0.0:$PORT
