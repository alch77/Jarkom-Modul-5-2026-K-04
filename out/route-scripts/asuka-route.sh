#!/bin/sh
# Rute statis Asuka (idempotent: pakai 'replace')
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.165
ip route replace 192.213.3.128/26 via 192.213.4.121   # Kensuke
ip route replace 192.213.4.48/29 via 192.213.4.141   # Ritsuko
