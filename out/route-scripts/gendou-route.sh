#!/bin/sh
# Rute statis Gendou (idempotent: pakai 'replace')
sysctl -w net.ipv4.ip_forward=1
ip route replace 192.213.2.0/24 via 192.213.4.113   # Hikari
ip route replace 192.213.3.224/27 via 192.213.4.113   # Hikari
ip route replace 192.213.4.128/30 via 192.213.4.113   # Hikari
ip route replace 192.213.0.0/23 via 192.213.4.117   # Yui
ip route replace 192.213.3.0/25 via 192.213.4.117   # Yui
ip route replace 192.213.4.0/27 via 192.213.4.117   # Yui
ip route replace 192.213.4.32/28 via 192.213.4.117   # Yui
ip route replace 192.213.4.108/30 via 192.213.4.117   # Yui
ip route replace 192.213.4.132/30 via 192.213.4.117   # Yui
ip route replace 192.213.4.136/30 via 192.213.4.117   # Yui
ip route replace 192.213.3.192/27 via 192.213.4.145   # Fuyutsuki
ip route replace 192.213.4.56/29 via 192.213.4.145   # Fuyutsuki
ip route replace 192.213.4.72/29 via 192.213.4.145   # Fuyutsuki
ip route replace 192.213.4.124/30 via 192.213.4.145   # Fuyutsuki
ip route replace 192.213.4.152/30 via 192.213.4.145   # Fuyutsuki
ip route replace 192.213.4.64/29 via 192.213.4.149   # Misato
ip route replace 192.213.4.80/28 via 192.213.4.157   # Shigeru
ip route replace 192.213.4.160/30 via 192.213.4.157   # Shigeru
ip route replace 192.213.3.128/26 via 192.213.4.165   # Asuka
ip route replace 192.213.4.48/29 via 192.213.4.165   # Asuka
ip route replace 192.213.4.96/30 via 192.213.4.165   # Asuka
ip route replace 192.213.4.120/30 via 192.213.4.165   # Asuka
ip route replace 192.213.4.140/30 via 192.213.4.165   # Asuka
ip route replace 192.213.4.100/30 via 192.213.4.169   # Kaji
