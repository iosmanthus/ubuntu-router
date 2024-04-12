#!/usr/bin/env bash

wget -O /tmp/FeiLian.deb https://cdn.isealsuite.com/linux/FeiLian_Linux_amd64_v2.1.27_r2711_551547.deb
dpkg -i /tmp/FeiLian.deb
apt install -y -f
