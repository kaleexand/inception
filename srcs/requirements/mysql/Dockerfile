FROM alpine:3.14

RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client openrc

EXPOSE 3306

COPY ./my.conf /etc/mysql/my.cnf
COPY ./mysql.sh /
RUN chmod +x /mysql.sh

CMD ["./mysql.sh"]
