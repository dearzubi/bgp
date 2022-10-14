#!/bin/bash

echo "Killing any existing rogue AS"
./stop_rogue.sh

echo "Starting rogue AS"
sudo python run.py --node R4 --cmd "/usr/sbin/zebra -f conf/zebra-R4.conf -d -z /tmp/zserv-R4.api -i /tmp/zebra-R4.pid > logs/R4-zebra-stdout"
sudo python run.py --node R4 --cmd "/usr/sbin/bgpd -f conf/bgpd-R4.conf -d -z /tmp/zserv-R4.api -i /tmp/bgpd-R4.pid > logs/R4-bgpd-stdout"
