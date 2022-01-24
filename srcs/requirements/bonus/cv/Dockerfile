FROM     alpine:3.14

RUN     apk update && apk upgrade
RUN     apk add php8 php8-fpm

ADD     ./tools/img /img
ADD     ./tools/index.html /index.html

CMD     php8 -S '[::]: 8081'


