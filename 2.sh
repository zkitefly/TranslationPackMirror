#!/bin/bash

cd './files-2444'
ls
echo '=================flashresources===================='
shopt -s extglob
rm -f !(README.md)
wget --no-hsts --no-dns-cache --random-wait -d -T 30 -t 60 -i 'https://cfpa.cyan.cafe/project-hex/'
rm "index.html.1"
echo '==================================================='
ls