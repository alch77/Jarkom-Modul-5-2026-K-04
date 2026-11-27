#!/bin/sh
# Soal 14 - Jam Kunjungan Sang Pinguin (Pen-Pen 192.213.3.195 - Waktu UTC)
PILOT_START="01:00"
PILOT_STOP="09:00"
PILOT_DAYS="Mon,Tue,Wed,Thu,Fri"
STAF_START="10:00"
STAF_STOP="16:00"

echo "nameserver 8.8.8.8" > /etc/resolv.conf
ip addr replace 192.213.3.195/27 dev eth0
ip link set eth0 up
ip route replace default via 192.213.3.193

iptables -P INPUT ACCEPT
iptables -F
iptables -X PENPEN_SCHED 2>/dev/null || true
iptables -N PENPEN_SCHED

# 1. Terduga Dummy System (Entry-Plug, Dummy-Plug, Spy) -> Selalu ditolak
for ip in 192.213.4.50 192.213.4.51 192.213.4.102; do
    iptables -A PENPEN_SCHED -s "$ip" -j DROP
done

# 2. Pilot (Unit-01, Unit-02, Unit-00, Sachiel) -> 08.00-16.00 WIB (01:00-09:00 UTC) Senin-Jumat
for ip in 192.213.4.66 192.213.4.67 192.213.4.68 192.213.3.130; do
    iptables -A PENPEN_SCHED -s "$ip" -m time --timestart "$PILOT_START" --timestop "$PILOT_STOP" --weekdays "$PILOT_DAYS" -j ACCEPT
    iptables -A PENPEN_SCHED -s "$ip" -j DROP
done

# 3. Staf Geofront (Lilith, Adam) -> 17.00-23.00 WIB (10:00-16:00 UTC) Setiap hari
for ip in 192.213.4.74 192.213.4.75; do
    iptables -A PENPEN_SCHED -s "$ip" -m time --timestart "$STAF_START" --timestop "$STAF_STOP" -j ACCEPT
    iptables -A PENPEN_SCHED -s "$ip" -j DROP
done

# 4. Lainnya -> Bebas tanpa batasan
iptables -A PENPEN_SCHED -j ACCEPT

iptables -A INPUT -p icmp --icmp-type echo-request -j PENPEN_SCHED
iptables -A INPUT -p tcp --dport 80 -j PENPEN_SCHED

pkill -f "nc -l -p 80" 2>/dev/null || true
nohup sh -c 'while true; do echo "Welcome to $(hostname)" | nc -l -p 80 -q 1; done' >/dev/null 2>&1 &