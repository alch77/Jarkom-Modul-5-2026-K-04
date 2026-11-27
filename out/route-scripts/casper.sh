#!/bin/sh
# Soal 12 - Hardening Magi-Casper (Policy INPUT DROP + Stateful + TCP 5000 + Anti-Ping)
echo "nameserver 8.8.8.8" > /etc/resolv.conf
iptables -P INPUT ACCEPT
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
iptables -F

iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport 5000 -j ACCEPT
iptables -P INPUT DROP

pkill -f "nc -l -p 5000" 2>/dev/null || true
nohup sh -c 'while true; do nc -l -p 5000 >> /root/nc5000.log; done' >/dev/null 2>&1 &