FROM alpine:3.15.0

RUN apk --no-cache add \
    php8 \
    php8-apcu \
    php8-ctype \
    php8-curl \
    php8-dom \
    php8-fileinfo \
    php8-fpm \
    php8-iconv \
    php8-intl \
    php8-json \
    php8-mbstring \
    php8-opcache \
    php8-openssl \
    php8-pcntl \
    php8-pdo \
    php8-pdo_pgsql \
    php8-pgsql \
    php8-phar \
    php8-posix \
    php8-session \
    php8-simplexml \
    php8-tokenizer \
    php8-xdebug \
    php8-xml \
    php8-xmlwriter \
    php8-zlib \
    make \
    nano \
    htop \
    curl \
    openrc \
    nginx \
    supervisor

# Create symlink so programs depending on `php` still function
RUN ln -s /usr/bin/php8 /usr/bin/php
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN composer self-update --2 && rm -rf /var/cache/apk/* && rm -rf /tmp/*

# Configure nginx
COPY config/nginx.conf /etc/nginx/
COPY config/fpm.conf /etc/php8/php-fpm.d/
COPY config/supervisord.conf /etc/supervisor/conf.d/
COPY init/php.ini /etc/php8/conf.d/

# Make sure files/folders needed by the processes are accessable when they run under the nobody user
RUN mkdir -p /var/www && \
    chown -R nobody.nobody /var/www && \
    chown -R nobody.nobody /run && \
    chown -R nobody.nobody /var/lib/nginx && \
    chown -R nobody.nobody /var/log/nginx

# Switch to use a non-root user from here on
USER nobody
WORKDIR /var/www
EXPOSE 8080

# Let supervisord start nginx & php-fpm
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

# Configure a healthcheck to validate that everything is up&running
HEALTHCHECK --timeout=10s CMD curl --silent --fail http://127.0.0.1:8080/fpm-ping
