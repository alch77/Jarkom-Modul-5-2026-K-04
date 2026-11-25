#!/bin/sh
# Rute statis Fuyutsuki (idempotent: pakai 'replace')
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.145
ip route replace 192.213.3.192/27 via 192.213.4.125   # Maya
ip route replace 192.213.4.72/29 via 192.213.4.153   # Toji
