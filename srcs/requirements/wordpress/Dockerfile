FROM alpine:3.14

RUN apk update && apk upgrade
RUN apk add nginx curl
RUN apk add php8 php8-fpm php8-json php8-gd php8-curl php8-mysqli php8-zlib php8-opcache php8-session php8-common php8-iconv php8-xml php8-imap php8-cgi php8-pdo php8-pdo_mysql php8-soap php8-posix php8-gettext php8-ldap php8-ctype php8-dom php8-mbstring php8-phar

COPY ./wp-config.php /

EXPOSE 9000

COPY wp.sh /
RUN chmod +x /wp.sh

RUN cp /usr/bin/php8 /usr/bin/php

CMD ["./wp.sh"]
