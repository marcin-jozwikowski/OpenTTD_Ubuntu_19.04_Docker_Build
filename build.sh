#!/bin/sh

now=$(date +%Y%m%d_%H%M%S)
cd /

git clone https://github.com/OpenTTD/OpenTTD.git && \
cd /OpenTTD && \ 
./configure && \
make && \
mkdir /OpenTTDReleases/$now -p && \
cp /OpenTTD/bin/* /OpenTTDReleases/$now -r
