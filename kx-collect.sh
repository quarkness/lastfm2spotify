#!/bin/sh
echo "Getting playing data from kxradio"
curl -s --user-agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b8) Gecko/20100101 Firefox/4.0b8"  http://kxredhot.nl/playing.php >>kx.redhot.txt
cat kx.redhot.txt |grep -v kx |sed 's/^﻿*//g' |sort -u >temp.txt
mv temp.txt kx.redhot.txt
