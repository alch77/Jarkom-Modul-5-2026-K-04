#!/bin/sh
set -eu

sysctl -w net.ipv4.ip_forward=1

# Soal 2: alamat interface internal; eth0 tetap dikelola DHCP NAT1.
ip addr replace 192.213.4.105/30 dev eth1
ip addr replace 192.213.4.113/30 dev eth2
ip addr replace 192.213.4.117/30 dev eth3
ip addr replace 192.213.4.145/30 dev eth4
ip addr replace 192.213.4.149/30 dev eth5
ip addr replace 192.213.4.157/30 dev eth6
ip addr replace 192.213.4.165/30 dev eth7
ip addr replace 192.213.4.169/30 dev eth8

# Soal 3: rute statis cabang Gendou. Default route NAT1 tetap dari DHCP.
ip route replace 192.213.2.0/24 via 192.213.4.113
ip route replace 192.213.3.224/27 via 192.213.4.113
ip route replace 192.213.4.128/30 via 192.213.4.113
ip route replace 192.213.0.0/23 via 192.213.4.117
ip route replace 192.213.3.0/25 via 192.213.4.117
ip route replace 192.213.4.0/27 via 192.213.4.117
ip route replace 192.213.4.32/28 via 192.213.4.117
ip route replace 192.213.4.108/30 via 192.213.4.117
ip route replace 192.213.4.132/30 via 192.213.4.117
ip route replace 192.213.4.136/30 via 192.213.4.117
ip route replace 192.213.3.192/27 via 192.213.4.145
ip route replace 192.213.4.56/29 via 192.213.4.145
ip route replace 192.213.4.72/29 via 192.213.4.145
ip route replace 192.213.4.124/30 via 192.213.4.145
ip route replace 192.213.4.152/30 via 192.213.4.145
ip route replace 192.213.4.64/29 via 192.213.4.149
ip route replace 192.213.4.80/28 via 192.213.4.157
ip route replace 192.213.4.160/30 via 192.213.4.157
ip route replace 192.213.3.128/26 via 192.213.4.165
ip route replace 192.213.4.48/29 via 192.213.4.165
ip route replace 192.213.4.96/30 via 192.213.4.165
ip route replace 192.213.4.120/30 via 192.213.4.165
ip route replace 192.213.4.140/30 via 192.213.4.165
ip route replace 192.213.4.100/30 via 192.213.4.169

# Soal 4: NAT internal ke NAT1; MASQUERADE mengikuti alamat DHCP eth0.
while iptables -t nat -C POSTROUTING -s 192.213.4.64/29 -o eth0 -j RETURN; do
    iptables -t nat -D POSTROUTING -s 192.213.4.64/29 -o eth0 -j RETURN
done
if ! iptables -t nat -C POSTROUTING -s 192.213.0.0/21 -o eth0 -j MASQUERADE; then
    iptables -t nat -A POSTROUTING -s 192.213.0.0/21 -o eth0 -j MASQUERADE
fi

# Soal 5: bangun ulang hanya chain filter yang dikelola skrip ini.
iptables -F INPUT
iptables -F FORWARD
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -i eth0 -p udp --sport 67 --dport 68 -j ACCEPT
iptables -A INPUT -s 192.213.0.0/21 ! -i eth0 -j ACCEPT

iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -s 192.213.0.0/21 ! -i eth0 -o eth0 -j ACCEPT
iptables -A FORWARD -s 192.213.0.0/21 -d 192.213.0.0/21 ! -i eth0 -j ACCEPT
