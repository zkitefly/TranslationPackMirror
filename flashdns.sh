# 此脚本用于刷新 github-action 中的dns缓存。
echo '1cat '/etc/resolv.conf''
cat '/etc/resolv.conf'
echo '2echo "nameserver 114.114.114.114
nameserver 8.8.8.8">'/etc/resolv.conf''
echo "nameserver 114.114.114.114
nameserver 8.8.8.8">'/etc/resolv.conf'
echo '3cat '/etc/resolv.conf''
cat '/etc/resolv.conf'
echo '4sudo systemctl restart systemd-resolved'
sudo systemctl restart systemd-resolved
echo '5sudo resolvectl statistics'
sudo resolvectl statistics
echo '6sudo resolvectl flush-caches'
sudo resolvectl flush-caches