#!/bin/sh
# Rute statis Kaji (idempotent: pakai 'replace')
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.169
