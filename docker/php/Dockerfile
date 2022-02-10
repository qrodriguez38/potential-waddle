ARG PHP_VERSION=8.1

FROM php:${PHP_VERSION}-alpine

ARG UID=1000
ARG GID=1000
ARG USER=docker

ENV HOME=/home/${USER}

COPY --from=composer /usr/bin/composer /usr/local/bin/composer
COPY conf.d/error_reporting.ini ${PHP_INI_DIR}/conf.d/error_reporting.ini
COPY conf.d/xdebug.ini ${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini

RUN addgroup \
        --gid ${GID} \
        --system ${USER} \
    && adduser \
        --disabled-password \
        --gecos \
        --no-create-home \
        --home ${HOME} \
        --ingroup ${USER} \
        --uid ${UID} ${USER}
        
RUN apk update \
    && apk add --no-cache --virtual .build-deps ${PHPIZE_DEPS} postgresql-dev \
    && docker-php-source extract \
    && pecl install xdebug \
    && docker-php-ext-install pdo pdo_pgsql intl \
    && docker-php-ext-enable xdebug \
    && apk del -f .build-deps postgresql-dev

USER ${USER}

WORKDIR /var/www/html
EXPOSE 9000 9003