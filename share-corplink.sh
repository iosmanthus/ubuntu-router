#!/usr/bin/env bash

iptables=/usr/sbin/iptables
device=utun
output=enp1s0

# Wait corplink online
while [ ! -d /sys/class/net/utun ]; do
        sleep 1;
done

$iptables -t nat -A POSTROUTING -o $device -j MASQUERADE
$iptables -A FORWARD -i $output -o $device -j ACCEPT
$iptables -A FORWARD -o $device -j ACCEPT
$iptables -A FORWARD -i $device -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
$iptables -A INPUT -i $device -j ACCEPT
