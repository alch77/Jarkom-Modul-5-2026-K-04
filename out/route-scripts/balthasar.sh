#!/bin/sh
# Soal 13 - Brankas Balthasar (Casper & Pilot Only, selainnya REJECT tcp-reset)
echo "nameserver 8.8.8.8" > /etc/resolv.conf
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F

# Izinkan Casper (192.213.4.58) dan semua Pilot (Unit-01: .4.66, Unit-02: .4.67, Unit-00: .4.68, Sachiel: .3.130)
for src in 192.213.4.58 192.213.4.66 192.213.4.67 192.213.4.68 192.213.3.130; do
    iptables -A INPUT -p tcp -s "$src" -m multiport --dports 5000,5001 -j ACCEPT
done

# Tolak seketika node lain di TCP 5000 & 5001
iptables -A INPUT -p tcp -m multiport --dports 5000,5001 -j REJECT --reject-with tcp-reset

pkill -f "nc -l -p 5000" 2>/dev/null || true
pkill -f "nc -l -p 5001" 2>/dev/null || true
nohup sh -c 'while true; do nc -l -p 5000 >> /root/nc5000.log; done' >/dev/null 2>&1 &
nohup sh -c 'while true; do nc -l -p 5001 >> /root/nc5001.log; done' >/dev/null 2>&1 &