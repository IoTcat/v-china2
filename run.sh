#!/bin/bash
ajiasu -c /etc/ajiasu.conf login
nohup ajiasu -c /etc/ajiasu.conf connect &
sleep 10
#rm -f /etc/profile
#cp -f /etc/profile_ /etc/profile
#echo export ALL_PROXY="socks5://127.0.0.1:1080">>/etc/profile
#source /etc/profile
v2ray -config=/etc/v2ray/config.json
