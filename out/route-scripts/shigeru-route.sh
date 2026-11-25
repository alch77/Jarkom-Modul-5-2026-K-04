#!/bin/sh
# Rute statis Shigeru (idempotent: pakai 'replace')
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.157
ip route replace 192.213.4.88/29 via 192.213.4.161   # Makoto
