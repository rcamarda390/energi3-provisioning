#!/bin/bash

######################################################################
# Copyright (c) 2020
# All rights reserved.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
#
# Desc:   Fix NTP (Network Time Protocol) on Ubuntu Linux
#
# Version:
#   1.0.0  20200328  ZA Initial Script
#
: '
# Run the script to get started:
```
bash -ic "$(wget -4qO- -o- raw.githubusercontent.com/energicryptocurrency/energi3-provisioning/master/scripts/linux/ntp_fix.sh)" ; source ~/.bashrc
```
'
######################################################################

sudo timedatectl set-ntp no

sudo apt install ntp -y
sudo apt install ntpdate -y

sleep 0.3
sudo systemctl start ntp

sleep 0.3
echo -n "NTP status: "
systemctl status ntp | grep Active | awk '{print $2}'
