#!/bin/sh
# Soal 19 - Isolasi Armisael (192.213.4.83) dari sisi tetangga satu switch (Zeruel 192.213.4.82)
ip addr replace 192.213.4.82/29 dev eth0
ip link set eth0 up
ip route replace default via 192.213.4.81

iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F

iptables -A INPUT -s 192.213.4.83 -j DROP
iptables -A OUTPUT -d 192.213.4.83 -j DROP