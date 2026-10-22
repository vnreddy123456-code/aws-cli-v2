#!/bin/bash

app_name=payment
source ./00-common.sh
check_root

app_setup
python_setup
systemd_setup

restart
total_time