#!/bin/bash
NOW=$(date +"%F")
NOWT=$(date +"%T")
echo "OpenStreetMic is on" | mail -s "OSM is live!" nathanfreitas@gmail.com
cp /var/www/osm/index.html.on /var/www/osm/index.html
cat /dev/fd/3 | ffmpeg -f s16le -ar 8000 -ab 32k -ac 1 -i - -ab 32k -f mp3 - | tee "/var/www/osm/archive/$NOW-$NOWT.mp3" | ezstream -c /var/lib/asterisk/ices/stream.mp3.xml
