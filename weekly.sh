#!/bin/sh
curl http://ws.audioscrobbler.com/2.0/user/quarkness/weeklytrackchart.xml | xsltproc lastfm2csv.xsl - 
