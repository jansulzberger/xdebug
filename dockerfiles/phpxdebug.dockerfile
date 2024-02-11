# Use the official PHP-FPM Alpine base image
FROM php:8.2-fpm

RUN pecl config-set php_ini "${PHP_INI_DIR}/php.ini"
RUN pecl install xdebug
COPY dockerfiles/xdebug.ini "${PHP_INI_DIR}/conf.d"