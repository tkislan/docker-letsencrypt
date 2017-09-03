FROM alpine:3.5

COPY letsencrypt-renew /var/spool/cron/crontabs/root

RUN apk add --no-cache certbot docker && \
  mkdir -p /var/www/html /etc/letsencrypt

CMD crond -l 2 -f
