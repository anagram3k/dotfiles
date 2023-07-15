#!/bin/bash

#systemd-resolve --status | grep "DNS Servers:"

ping -c 1 -W 0.7 192.168.0.1 > /dev/null 2>&1
if [ $? -eq 0 ] ; then
    echo "Router Online"
else
    echo "Router Offine"
    exit 1
fi

#DNS=$(systemd-resolve --status | grep '^Current DNS Server:' | awk '{print$4}')
DNS=$(nmcli device show enp4s0 | grep "IP4.DNS" | awk '{ print $2 }' | head -1)
ping -c 1 -W 0.7 $DNS > /dev/null 2>&1
if [ $? -eq 0 ] ; then
    echo "Current DNS Server $DNS Online"
else
    echo "Current DNS Server $DNS Offline"
    exit 1
fi

nc -z 8.8.8.8 53  >/dev/null 2>&1
online=$?
if [ $online -eq 0 ]; then
    echo "Google DNS 8.8.8.8 Online"
else
    echo "Google DNS 8.8.8.8 Offline"
fi

wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
	echo "Google Online"
else
	echo "Google Offline"
fi



