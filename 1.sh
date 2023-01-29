cd './files'
ls
echo '=================flashresources===================='
shopt -s extglob
rm -f !(README.md)
wget --no-hsts --no-dns-cache --random-wait -d -T 30 -t 60 -i 'http://downloader1.meitangdehulu.com:22943/'
rm "index.html.1"
echo '==================================================='
ls