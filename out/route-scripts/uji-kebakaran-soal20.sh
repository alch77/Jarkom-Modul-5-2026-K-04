#!/bin/sh
# Soal 20 - Uji Kebakaran Geofront (Simpan, Hapus, dan Pulihkan 2x Berturut-turut secara Idempoten)
NODE="$(hostname | tr 'A-Z' 'a-z')"
RULES_FILE="/root/${NODE}.rules"
SH_FILE="/root/${NODE}.sh"

echo "=== [1] Menyimpan rule aktif ke $RULES_FILE ==="
iptables-save > "$RULES_FILE"

echo "=== [2] Menghapus semua rule iptables (filter & nat) serta rute tambahan ==="
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables -X 2>/dev/null || true
iptables -t nat -F
iptables -t nat -X 2>/dev/null || true
ip route del default 2>/dev/null || true

echo "=== [3] Pemulihan PERTAMA ==="
sh "$SH_FILE"
iptables-restore < "$RULES_FILE"
echo "Jumlah baris iptables -S       : $(iptables -S | wc -l)"
echo "Jumlah baris iptables -t nat -S: $(iptables -t nat -S | wc -l)"
echo "Jumlah baris ip route          : $(ip route | wc -l)"

echo "=== [4] Pemulihan KEDUA (Berturut-turut) ==="
sh "$SH_FILE"
iptables-restore < "$RULES_FILE"
echo "Jumlah baris iptables -S       : $(iptables -S | wc -l)"
echo "Jumlah baris iptables -t nat -S: $(iptables -t nat -S | wc -l)"
echo "Jumlah baris ip route          : $(ip route | wc -l)"
iptables -S
iptables -t nat -S
ip route