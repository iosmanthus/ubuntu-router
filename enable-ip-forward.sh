#!/usr/bin/env bash

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sysctl -p

