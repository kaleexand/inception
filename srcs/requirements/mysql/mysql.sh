#!/bin/sh

openrc default
/etc/init.d/mariadb setup

rc-service mariadb start
echo "mariadb start"

# имя хоста `localhost` - подключиться к серверу можно только с локального хоста
# имя хоста `%` - подключиться к серверу можно с любого хоста
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;" -u root
mysql -e "CREATE USER IF NOT EXISTS '$USERNAME'@'%' IDENTIFIED BY '$SQL_PASSWORD';" -u root
# неограниченные права доступа к БД
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$USERNAME'@'%' IDENTIFIED BY '$SQL_PASSWORD' WITH GRANT OPTION;" -u root
# сохранение и активация изменений
mysql -e "FLUSH PRIVILEGES;" -u root
#mysql -u root password qwerty12345
rc-service mariadb stop
echo "mariadb stop"
mysqld --user=root


