#start with our base image (the foundation) - version 7.1.5
FROM richarvey/nginx-php-fpm:1.4.1

#install all the system dependencies and enable PHP modules
RUN apk add --update \
    && composer self-update

#install composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

# Copy base Nginx config
#RUN rm /etc/nginx/nginx.conf
#ADD nginx.conf /etc/nginx/nginx.conf

# Copy base Nginx sites-enabled
RUN rm /etc/nginx/sites-enabled/default.conf
ADD sites-enabled /etc/nginx/sites-enabled


#set our application folder as an environment variable
ENV APP_HOME /var/www/html

#copy source files and run composer
COPY . $APP_HOME

#change ownership of our applications
#RUN chown -R www-data:www-data $APP_HOME
#
#USER www-data

WORKDIR $APP_HOME

# install all PHP dependencies
RUN composer install --no-interaction