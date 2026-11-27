#!/bin/sh
# Rute statis Fuyutsuki (idempotent: pakai 'replace') + DNAT Soal 17
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.145
ip route replace 192.213.3.192/27 via 192.213.4.126   # Maya
ip route replace 192.213.4.72/29 via 192.213.4.154   # Toji

# Soal 17: Alihkan koneksi TCP dari Magi-Casper (192.213.4.58) ke Zeruel (192.213.4.82) menuju Pen-Pen (192.213.3.195)
iptables -t nat -F PREROUTING
iptables -t nat -A PREROUTING -s 192.213.4.58 -d 192.213.4.82 -p tcp -j DNAT --to-destination 192.213.3.195