#!/bin/bash

#service mysql restart
#chmod -R 777 /tmp/

service mysql start

sleep 5
mysql -uroot -e "CREATE DATABASE wp;"
mysql -uroot -e "CREATE USER 'ceddibao'@'%' IDENTIFIED BY 'ceddibao';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON wp.* to 'ceddibao'@'%';"
mysql -uroot -e "FLUSH PRIVILEGES;"
mysqladmin -uroot shutdown
exec $@


