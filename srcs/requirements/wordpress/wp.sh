#!/bin/sh

# sleep 10
wget http://wordpress.org/latest.tar.gz ; tar -xzvf latest.tar.gz ; rm latest.tar.gz ; mv wordpress/* /var/www/wordpress/

mv ./wp-config.php /var/www/wordpress/

chmod 755 -R /var/www/*

sed -i "s/127.0.0.1/0.0.0.0/" /etc/php8/php-fpm.d/www.conf

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /bin/wp

cd /var/www/wordpress

wp core install --allow-root --url=kalexand.42.fr --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --title="INCEPTION" --admin_user=$USERNAME
wp user create --allow-root $MY_USER $U_EMAIL --user_pass=1234 --role=editor 

php-fpm8 -R -F
