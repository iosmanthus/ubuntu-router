#!/usr/bin/env bash

./enable-ip-forwarding.sh
cp share-corplink.sh /usr/bin
cp share-corplink.service /etc/systemd/system
systemctl daemon-reload
systemctl enable --now share-corplink.service