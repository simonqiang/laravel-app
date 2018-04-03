RUN richarvey/nginx-php-fpm:1.4.1
RUN apk add --update

COPY ../blog/ /var/www/html/

WORKDIR /var/www/html/blog
