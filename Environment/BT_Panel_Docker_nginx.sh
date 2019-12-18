#!/bin/sh
# chkconfig: 2345 10 90 
# description: myservice ....
bt 1 && /etc/init.d/nginx restart && /etc/init.d/php-fpm-56 restart && /etc/init.d/mysqld restart && bt 14