# 此脚本用于刷新 github-action 中的dns缓存。
cat '/etc/resolv.conf'
sudo systemctl restart systemd-resolved
sudo resolvectl statistics
sudo resolvectl flush-caches
