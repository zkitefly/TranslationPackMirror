echo '--'
cat '/etc/resolv.conf'
echo '--'
sudo systemctl restart systemd-resolved
echo '--'
sudo resolvectl statistics
echo '--'
sudo resolvectl flush-caches