#!/bin/bash

app_name=shipping
source ./00-common.sh
check_root

app_setup
java_setup
systemd_setup

mysql_client

mysql -h mysql.$domain_name -uroot -pRoboShop@1 < /app/db/master-data.sql
mysql -h mysql.$domain_name -uroot -pRoboShop@1 < /app/db/app-user.sql

restart
total_time