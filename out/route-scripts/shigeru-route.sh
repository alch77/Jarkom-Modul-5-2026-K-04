#!/bin/sh
# Rute statis Shigeru (idempotent: pakai 'replace') + Gerbang Zona Sensitif (Soal 18) + Isolasi Armisael (Soal 19)
sysctl -w net.ipv4.ip_forward=1
ip route replace default via 192.213.4.157
ip route replace 192.213.4.88/29 via 192.213.4.162   # Makoto

iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F

# Soal 19: Blokir seluruh lalu lintas keluar/masuk Armisael (192.213.4.83) termasuk ke gateway Shigeru
iptables -A INPUT -s 192.213.4.83 -j DROP
iptables -A OUTPUT -d 192.213.4.83 -j DROP
iptables -A FORWARD -s 192.213.4.83 -j DROP
iptables -A FORWARD -d 192.213.4.83 -j DROP

# Soal 18: Gerbang Monolith dan Radar
iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -i eth0 -s 192.213.4.56/29 -p icmp --icmp-type echo-request -j ACCEPT
iptables -A FORWARD -i eth0 -j DROP