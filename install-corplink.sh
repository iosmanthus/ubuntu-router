#!/usr/bin/env bash

apt install -y aria2

aria2c -c -s 16 -x 16 -k 1M -j 1 --dir /tmp -o FeiLian.deb https://oss-s3.ifeilian.com/linux/FeiLian_Linux_v2.0.8_r14_b413a2.deb
dpkg -i /tmp/FeiLian.deb
apt install -y -f
