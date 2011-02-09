#!/bin/sh
echo "Getting weekly track chart from last.fm"
curl http://ws.audioscrobbler.com/2.0/user/$1/weeklytrackchart.xml | xsltproc lastfm2txt.xsl - >weeklytrackchart.$1.txt
echo "Querying Spotify API for track id's"
php txt2spotify.php $1
cat weeklytrackchart.$1.spotify |pbcopy
echo "Spotify playlist copied to clipboard. Enjoy"