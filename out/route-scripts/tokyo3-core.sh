#!/bin/sh
# Soal 15 & 16 - Tokyo3-Core (Rate Limit Ping 5/detik + LOG SCAN-NERV: & REJECT Dummy-Plug)
echo "nameserver 8.8.8.8" > /etc/resolv.conf
ip addr replace 192.213.4.106/30 dev eth0
ip link set eth0 up
ip route replace default via 192.213.4.105

iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F

# Soal 15: Batasi hanya ICMP echo-request maksimal 5 ping per detik, buang kelebihannya
iptables -A INPUT -p icmp --icmp-type echo-request -m limit --limit 5/second --limit-burst 5 -j ACCEPT
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP

# Soal 16: Catat koneksi TCP dari Dummy-Plug (192.213.4.51) ke port 22, 23, 3306 dengan prefix SCAN-NERV: lalu REJECT
iptables -A INPUT -s 192.213.4.51 -p tcp -m multiport --dports 22,23,3306 -j LOG --log-prefix "SCAN-NERV: "
iptables -A INPUT -s 192.213.4.51 -p tcp -m multiport --dports 22,23,3306 -j REJECT --reject-with tcp-reset

pkill -f "nc -l -p 80" 2>/dev/null || true
nohup sh -c 'while true; do echo "Welcome to $(hostname)" | nc -l -p 80   -q 1; done' >/dev/null 2>&1 &
nohup sh -c 'while true; do echo "syifa imutz"            | nc -l -p 8080 -q 1; done' >/dev/null 2>&1 &