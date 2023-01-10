# 此脚本用于刷新 github-action 中的dns缓存。
echo '1——————————'
cat '/etc/resolv.conf'
echo '2——————————'
echo "nameserver 114.114.114.114
nameserver 8.8.8.8">>'/etc/resolv.conf'
echo '3——————————'
cat '/etc/resolv.conf'
echo '4——————————'
sudo systemctl restart systemd-resolved
echo '5——————————'
sudo resolvectl statistics
echo '6——————————'
sudo resolvectl flush-caches
