FROM php:7.4-cli-alpine

RUN apk update && apk add icu-dev autoconf g++ make zlib-dev libzip-dev libpng-dev libwebp-dev freetype-dev libjpeg-turbo-dev libpng-dev \
    && docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install intl pdo_mysql gd zip pcntl

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN apk add unzip

# fix work iconv library with alphine
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin --filename=composer --quiet \
    && rm -rf /root/.composer/cache

ENTRYPOINT ["/entrypoint.sh"]
