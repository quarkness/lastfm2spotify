#!/bin/sh

curl http://ws.audioscrobbler.com/2.0/user/$1/weeklytrackchart.xml | xsltproc lastfm2txt.xsl - >weeklytrackchart.$1.txt
php txt2spotify.php $1
mate weeklytrackchart.$1.spotify
