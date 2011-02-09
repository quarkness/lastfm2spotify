#!/bin/sh
echo "Getting loved tracks from last.fm"
curl http://ws.audioscrobbler.com/2.0/user/$1/lovedtracks.rss | xsltproc rss2txt.xsl - >lovedtracks.$1.txt
echo "Querying Spotify API for track id's"
php txt2spotify.php $1 lovedtracks
cat lovedtracks.$1.spotify |pbcopy
echo "Spotify playlist copied to clipboard. Enjoy"

