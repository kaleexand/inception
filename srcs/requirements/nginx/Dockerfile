FROM alpine:3.14

RUN apk update && apk upgrade
RUN apk add nginx openssl net-tools

COPY ./nginx.conf /etc/nginx/http.d/default.conf

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj \
"/C=RU/ST=Kazan/L=Kazan/O=School21/OU=kalexand/CN=my_domain" \
-keyout /etc/ssl/private/kalexand.key -out /etc/ssl/private/kalexand.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

