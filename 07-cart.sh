#!/bin/bash

app_name=cart
source ./00-common.sh
check_root

app_setup
nodejs_setup
systemd_setup

restart
total_time