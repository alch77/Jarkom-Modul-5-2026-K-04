#!/bin/sh
# Rute statis Yui (idempotent: pakai 'replace')
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.117
ip route replace 192.213.0.0/23 via 192.213.4.109   # Rei
ip route replace 192.213.4.0/27 via 192.213.4.133   # Shinji
ip route replace 192.213.4.32/28 via 192.213.4.137   # Mari
