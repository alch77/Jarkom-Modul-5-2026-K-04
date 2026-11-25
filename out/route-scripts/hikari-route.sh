#!/bin/sh
# Rute statis Hikari (idempotent: pakai 'replace')
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.113
ip route replace 192.213.3.224/27 via 192.213.4.129   # Kaworu
