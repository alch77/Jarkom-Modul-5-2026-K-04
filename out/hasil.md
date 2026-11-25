# Prefix 192.213.0.0/21

Total terpakai: 1196 dari 2048 alamat

## 1. Tabel VLSM (urut alokasi)

| # | Jenis | Nama | Kebutuhan (host+gw) | Network | Prefix | Gateway | Broadcast | Terpakai | Usable | Sisa |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | LAN | Switch-Quarters (Rei) | 500+1=501 | 192.213.0.0 | /23 | 192.213.0.1 | 192.213.1.255 | 501 | 510 | 9 |
| 2 | LAN | Switch-Comm (Hikari) | 200+1=201 | 192.213.2.0 | /24 | 192.213.2.1 | 192.213.2.255 | 201 | 254 | 53 |
| 3 | LAN | Switch-Hangar (Yui) | 100+1=101 | 192.213.3.0 | /25 | 192.213.3.1 | 192.213.3.127 | 101 | 126 | 25 |
| 4 | LAN | Switch-Bunker (Kensuke) | 55+1=56 | 192.213.3.128 | /26 | 192.213.3.129 | 192.213.3.191 | 56 | 62 | 6 |
| 5 | LAN | Switch-Medic (Maya) | 26+1=27 | 192.213.3.192 | /27 | 192.213.3.193 | 192.213.3.223 | 27 | 30 | 3 |
| 6 | LAN | Switch-Relay (Kaworu) | 25+1=26 | 192.213.3.224 | /27 | 192.213.3.225 | 192.213.3.255 | 26 | 30 | 4 |
| 7 | LAN | Switch-Garden (Shinji) | 14+1=15 | 192.213.4.0 | /27 | 192.213.4.1 | 192.213.4.31 | 15 | 30 | 15 |
| 8 | LAN | Switch-Dock (Mari) | 12+1=13 | 192.213.4.32 | /28 | 192.213.4.33 | 192.213.4.47 | 13 | 14 | 1 |
| 9 | LAN | Switch-Lab (Ritsuko) | 5+1=6 | 192.213.4.48 | /29 | 192.213.4.49 | 192.213.4.55 | 6 | 6 | 0 |
| 10 | LAN | Switch-Terminal (Fuyutsuki) | 3+1=4 | 192.213.4.56 | /29 | 192.213.4.57 | 192.213.4.63 | 4 | 6 | 2 |
| 11 | LAN | Switch-Cage (Misato) | 3+1=4 | 192.213.4.64 | /29 | 192.213.4.65 | 192.213.4.71 | 4 | 6 | 2 |
| 12 | LAN | Switch-Dogma (Toji) | 2+1=3 | 192.213.4.72 | /29 | 192.213.4.73 | 192.213.4.79 | 3 | 6 | 3 |
| 13 | LAN | Switch-Monolith (Shigeru) | 2+1=3 | 192.213.4.80 | /29 | 192.213.4.81 | 192.213.4.87 | 3 | 6 | 3 |
| 14 | LAN | Switch-Radar (Makoto) | 4+1=5 | 192.213.4.88 | /29 | 192.213.4.89 | 192.213.4.95 | 5 | 6 | 1 |
| 15 | LAN | Switch-Archive (Asuka) | 1+1=2 | 192.213.4.96 | /30 | 192.213.4.97 | 192.213.4.99 | 2 | 2 | 0 |
| 16 | LAN | Switch-Intel (Kaji) | 1+1=2 | 192.213.4.100 | /30 | 192.213.4.101 | 192.213.4.103 | 2 | 2 | 0 |
| 17 | LAN | Switch-Cmd (Gendou) | 1+1=2 | 192.213.4.104 | /30 | 192.213.4.105 | 192.213.4.107 | 2 | 2 | 0 |
| 18 | LINK | Yui-Rei | 2 | 192.213.4.108 | /30 | 192.213.4.109 | 192.213.4.111 | 2 | 2 | 0 |
| 19 | LINK | Gendou-Hikari | 2 | 192.213.4.112 | /30 | 192.213.4.113 | 192.213.4.115 | 2 | 2 | 0 |
| 20 | LINK | Gendou-Yui | 2 | 192.213.4.116 | /30 | 192.213.4.117 | 192.213.4.119 | 2 | 2 | 0 |
| 21 | LINK | Asuka-Kensuke | 2 | 192.213.4.120 | /30 | 192.213.4.121 | 192.213.4.123 | 2 | 2 | 0 |
| 22 | LINK | Fuyutsuki-Maya | 2 | 192.213.4.124 | /30 | 192.213.4.125 | 192.213.4.127 | 2 | 2 | 0 |
| 23 | LINK | Hikari-Kaworu | 2 | 192.213.4.128 | /30 | 192.213.4.129 | 192.213.4.131 | 2 | 2 | 0 |
| 24 | LINK | Yui-Shinji | 2 | 192.213.4.132 | /30 | 192.213.4.133 | 192.213.4.135 | 2 | 2 | 0 |
| 25 | LINK | Yui-Mari | 2 | 192.213.4.136 | /30 | 192.213.4.137 | 192.213.4.139 | 2 | 2 | 0 |
| 26 | LINK | Asuka-Ritsuko | 2 | 192.213.4.140 | /30 | 192.213.4.141 | 192.213.4.143 | 2 | 2 | 0 |
| 27 | LINK | Gendou-Fuyutsuki | 2 | 192.213.4.144 | /30 | 192.213.4.145 | 192.213.4.147 | 2 | 2 | 0 |
| 28 | LINK | Gendou-Misato | 2 | 192.213.4.148 | /30 | 192.213.4.149 | 192.213.4.151 | 2 | 2 | 0 |
| 29 | LINK | Fuyutsuki-Toji | 2 | 192.213.4.152 | /30 | 192.213.4.153 | 192.213.4.155 | 2 | 2 | 0 |
| 30 | LINK | Gendou-Shigeru | 2 | 192.213.4.156 | /30 | 192.213.4.157 | 192.213.4.159 | 2 | 2 | 0 |
| 31 | LINK | Shigeru-Makoto | 2 | 192.213.4.160 | /30 | 192.213.4.161 | 192.213.4.163 | 2 | 2 | 0 |
| 32 | LINK | Gendou-Asuka | 2 | 192.213.4.164 | /30 | 192.213.4.165 | 192.213.4.167 | 2 | 2 | 0 |
| 33 | LINK | Gendou-Kaji | 2 | 192.213.4.168 | /30 | 192.213.4.169 | 192.213.4.171 | 2 | 2 | 0 |

## 2. IP interface router

| Router | Interface | Alamat | Terhubung ke |
| --- | --- | --- | --- |
| Gendou | eth0 | DHCP | NAT1 |
| Gendou | eth1 | 192.213.4.105/30 | Switch-Cmd (gateway LAN) |
| Gendou | eth2 | 192.213.4.113/30 | link ke Hikari |
| Gendou | eth3 | 192.213.4.117/30 | link ke Yui |
| Gendou | eth4 | 192.213.4.145/30 | link ke Fuyutsuki |
| Gendou | eth5 | 192.213.4.149/30 | link ke Misato |
| Gendou | eth6 | 192.213.4.157/30 | link ke Shigeru |
| Gendou | eth7 | 192.213.4.165/30 | link ke Asuka |
| Gendou | eth8 | 192.213.4.169/30 | link ke Kaji |
| Rei | eth0 | 192.213.4.110/30 | uplink ke Yui |
| Rei | eth1 | 192.213.0.1/23 | Switch-Quarters (gateway LAN) |
| Hikari | eth0 | 192.213.4.114/30 | uplink ke Gendou |
| Hikari | eth1 | 192.213.2.1/24 | Switch-Comm (gateway LAN) |
| Hikari | eth2 | 192.213.4.129/30 | link ke Kaworu |
| Yui | eth0 | 192.213.4.118/30 | uplink ke Gendou |
| Yui | eth1 | 192.213.3.1/25 | Switch-Hangar (gateway LAN) |
| Yui | eth2 | 192.213.4.109/30 | link ke Rei |
| Yui | eth3 | 192.213.4.133/30 | link ke Shinji |
| Yui | eth4 | 192.213.4.137/30 | link ke Mari |
| Kensuke | eth0 | 192.213.4.122/30 | uplink ke Asuka |
| Kensuke | eth1 | 192.213.3.129/26 | Switch-Bunker (gateway LAN) |
| Maya | eth0 | 192.213.4.126/30 | uplink ke Fuyutsuki |
| Maya | eth1 | 192.213.3.193/27 | Switch-Medic (gateway LAN) |
| Kaworu | eth0 | 192.213.4.130/30 | uplink ke Hikari |
| Kaworu | eth1 | 192.213.3.225/27 | Switch-Relay (gateway LAN) |
| Shinji | eth0 | 192.213.4.134/30 | uplink ke Yui |
| Shinji | eth1 | 192.213.4.1/27 | Switch-Garden (gateway LAN) |
| Mari | eth0 | 192.213.4.138/30 | uplink ke Yui |
| Mari | eth1 | 192.213.4.33/28 | Switch-Dock (gateway LAN) |
| Ritsuko | eth0 | 192.213.4.142/30 | uplink ke Asuka |
| Ritsuko | eth1 | 192.213.4.49/29 | Switch-Lab (gateway LAN) |
| Fuyutsuki | eth0 | 192.213.4.146/30 | uplink ke Gendou |
| Fuyutsuki | eth1 | 192.213.4.57/29 | Switch-Terminal (gateway LAN) |
| Fuyutsuki | eth2 | 192.213.4.125/30 | link ke Maya |
| Fuyutsuki | eth3 | 192.213.4.153/30 | link ke Toji |
| Misato | eth0 | 192.213.4.150/30 | uplink ke Gendou |
| Misato | eth1 | 192.213.4.65/29 | Switch-Cage (gateway LAN) |
| Toji | eth0 | 192.213.4.154/30 | uplink ke Fuyutsuki |
| Toji | eth1 | 192.213.4.73/29 | Switch-Dogma (gateway LAN) |
| Shigeru | eth0 | 192.213.4.158/30 | uplink ke Gendou |
| Shigeru | eth1 | 192.213.4.81/29 | Switch-Monolith (gateway LAN) |
| Shigeru | eth2 | 192.213.4.161/30 | link ke Makoto |
| Makoto | eth0 | 192.213.4.162/30 | uplink ke Shigeru |
| Makoto | eth1 | 192.213.4.89/29 | Switch-Radar (gateway LAN) |
| Asuka | eth0 | 192.213.4.166/30 | uplink ke Gendou |
| Asuka | eth1 | 192.213.4.97/30 | Switch-Archive (gateway LAN) |
| Asuka | eth2 | 192.213.4.121/30 | link ke Kensuke |
| Asuka | eth3 | 192.213.4.141/30 | link ke Ritsuko |
| Kaji | eth0 | 192.213.4.170/30 | uplink ke Gendou |
| Kaji | eth1 | 192.213.4.101/30 | Switch-Intel (gateway LAN) |

## 3. IP node non-router

| Node | IP | Gateway | Switch |
| --- | --- | --- | --- |
| Quarters | 192.213.0.2/23 | 192.213.0.1 | Switch-Quarters |
| Comm-Net | 192.213.2.2/24 | 192.213.2.1 | Switch-Comm |
| Hangar-Crew | 192.213.3.2/25 | 192.213.3.1 | Switch-Hangar |
| Sachiel | 192.213.3.130/26 | 192.213.3.129 | Switch-Bunker |
| Medic-Bay | 192.213.3.194/27 | 192.213.3.193 | Switch-Medic |
| Pen-Pen | 192.213.3.195/27 | 192.213.3.193 | Switch-Medic |
| Relay-Node | 192.213.3.226/27 | 192.213.3.225 | Switch-Relay |
| Garden-Staff | 192.213.4.2/27 | 192.213.4.1 | Switch-Garden |
| Dock-Crew | 192.213.4.34/28 | 192.213.4.33 | Switch-Dock |
| Entry-Plug | 192.213.4.50/29 | 192.213.4.49 | Switch-Lab |
| Dummy-Plug | 192.213.4.51/29 | 192.213.4.49 | Switch-Lab |
| Magi-Casper | 192.213.4.58/29 | 192.213.4.57 | Switch-Terminal |
| Magi-Balthasar | 192.213.4.59/29 | 192.213.4.57 | Switch-Terminal |
| Magi-Melchior | 192.213.4.60/29 | 192.213.4.57 | Switch-Terminal |
| Unit-01 | 192.213.4.66/29 | 192.213.4.65 | Switch-Cage |
| Unit-02 | 192.213.4.67/29 | 192.213.4.65 | Switch-Cage |
| Unit-00 | 192.213.4.68/29 | 192.213.4.65 | Switch-Cage |
| Lilith | 192.213.4.74/29 | 192.213.4.73 | Switch-Dogma |
| Adam | 192.213.4.75/29 | 192.213.4.73 | Switch-Dogma |
| Zeruel | 192.213.4.82/29 | 192.213.4.81 | Switch-Monolith |
| Armisael | 192.213.4.83/29 | 192.213.4.81 | Switch-Monolith |
| Radar-Array | 192.213.4.90/29 | 192.213.4.89 | Switch-Radar |
| Archive-Vault | 192.213.4.98/30 | 192.213.4.97 | Switch-Archive |
| Spy | 192.213.4.102/30 | 192.213.4.101 | Switch-Intel |
| Tokyo3-Core | 192.213.4.106/30 | 192.213.4.105 | Switch-Cmd |

## 4. Rute statis (sudah diringkas)

| Router | Tujuan | Next-hop | Lewat |
| --- | --- | --- | --- |
| Gendou | default | (DHCP NAT1) | NAT1 |
| Gendou | 192.213.2.0/24 | 192.213.4.113 | Hikari |
| Gendou | 192.213.3.224/27 | 192.213.4.113 | Hikari |
| Gendou | 192.213.4.128/30 | 192.213.4.113 | Hikari |
| Gendou | 192.213.0.0/23 | 192.213.4.117 | Yui |
| Gendou | 192.213.3.0/25 | 192.213.4.117 | Yui |
| Gendou | 192.213.4.0/27 | 192.213.4.117 | Yui |
| Gendou | 192.213.4.32/28 | 192.213.4.117 | Yui |
| Gendou | 192.213.4.108/30 | 192.213.4.117 | Yui |
| Gendou | 192.213.4.132/30 | 192.213.4.117 | Yui |
| Gendou | 192.213.4.136/30 | 192.213.4.117 | Yui |
| Gendou | 192.213.3.192/27 | 192.213.4.145 | Fuyutsuki |
| Gendou | 192.213.4.56/29 | 192.213.4.145 | Fuyutsuki |
| Gendou | 192.213.4.72/29 | 192.213.4.145 | Fuyutsuki |
| Gendou | 192.213.4.124/30 | 192.213.4.145 | Fuyutsuki |
| Gendou | 192.213.4.152/30 | 192.213.4.145 | Fuyutsuki |
| Gendou | 192.213.4.64/29 | 192.213.4.149 | Misato |
| Gendou | 192.213.4.80/28 | 192.213.4.157 | Shigeru |
| Gendou | 192.213.4.160/30 | 192.213.4.157 | Shigeru |
| Gendou | 192.213.3.128/26 | 192.213.4.165 | Asuka |
| Gendou | 192.213.4.48/29 | 192.213.4.165 | Asuka |
| Gendou | 192.213.4.96/30 | 192.213.4.165 | Asuka |
| Gendou | 192.213.4.120/30 | 192.213.4.165 | Asuka |
| Gendou | 192.213.4.140/30 | 192.213.4.165 | Asuka |
| Gendou | 192.213.4.100/30 | 192.213.4.169 | Kaji |
| Rei | default | 192.213.4.109 | ke atas (Yui) |
| Hikari | default | 192.213.4.113 | ke atas (Gendou) |
| Hikari | 192.213.3.224/27 | 192.213.4.129 | Kaworu |
| Yui | default | 192.213.4.117 | ke atas (Gendou) |
| Yui | 192.213.0.0/23 | 192.213.4.109 | Rei |
| Yui | 192.213.4.0/27 | 192.213.4.133 | Shinji |
| Yui | 192.213.4.32/28 | 192.213.4.137 | Mari |
| Kensuke | default | 192.213.4.121 | ke atas (Asuka) |
| Maya | default | 192.213.4.125 | ke atas (Fuyutsuki) |
| Kaworu | default | 192.213.4.129 | ke atas (Hikari) |
| Shinji | default | 192.213.4.133 | ke atas (Yui) |
| Mari | default | 192.213.4.137 | ke atas (Yui) |
| Ritsuko | default | 192.213.4.141 | ke atas (Asuka) |
| Fuyutsuki | default | 192.213.4.145 | ke atas (Gendou) |
| Fuyutsuki | 192.213.3.192/27 | 192.213.4.125 | Maya |
| Fuyutsuki | 192.213.4.72/29 | 192.213.4.153 | Toji |
| Misato | default | 192.213.4.149 | ke atas (Gendou) |
| Toji | default | 192.213.4.153 | ke atas (Fuyutsuki) |
| Shigeru | default | 192.213.4.157 | ke atas (Gendou) |
| Shigeru | 192.213.4.88/29 | 192.213.4.161 | Makoto |
| Makoto | default | 192.213.4.161 | ke atas (Shigeru) |
| Asuka | default | 192.213.4.165 | ke atas (Gendou) |
| Asuka | 192.213.3.128/26 | 192.213.4.121 | Kensuke |
| Asuka | 192.213.4.48/29 | 192.213.4.141 | Ritsuko |
| Kaji | default | 192.213.4.169 | ke atas (Gendou) |

Total rute (tanpa default Gendou): 49
