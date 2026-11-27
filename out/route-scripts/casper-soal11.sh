#!/bin/sh
# Soal 11 - Casper harus jadi hantu (prefix 192.213.0.0/21)
iptables -C INPUT -p icmp --icmp-type echo-request -j DROP 2>/dev/null || \
    iptables -I INPUT 1 -p icmp --icmp-type echo-request -j DROP

if ! pgrep -f "nc -l -p 5000" >/dev/null 2>&1; then
    nohup sh -c 'while true; do nc -l -p 5000 >> /root/nc5000.log; done' >/dev/null 2>&1 &
fi