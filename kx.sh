#!/bin/sh
echo "Querying Spotify API for track id's"
php txt2spotify.php redhot kx
cat kx.redhot.spotify |pbcopy
echo "Spotify playlist copied to clipboard. Enjoy"