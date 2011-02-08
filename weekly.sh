#!/bin/sh

curl http://ws.audioscrobbler.com/2.0/user/$1/weeklytrackchart.xml | xsltproc lastfm2txt.xsl - >weeklytrackchart.$1.txt

