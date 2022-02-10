ARG NGINX_VERSION=1.21

FROM nginx:${NGINX_VERSION}-alpine

COPY sites/default.conf /etc/nginx/sites-available/default.conf

EXPOSE 80 443

WORKDIR /var/www
