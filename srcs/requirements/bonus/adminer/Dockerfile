FROM alpine:3.14

RUN apk update && apk upgrade && apk add curl php8 php8-fpm php8-session php8-pdo_mysql php8-mysqli php8-mysqlnd php8-pgsql php8-pdo

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
RUN mv adminer-4.8.1.php index.php

CMD php8 -S '[::]: 8080'

