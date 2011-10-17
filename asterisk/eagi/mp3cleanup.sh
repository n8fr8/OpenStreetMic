#!/bin/bash
cp /var/www/osm/index.html.off /var/www/osm/index.html
echo "OpenStreetMic is off" | mail -s "OSM is off :(" nathanfreitas@gmail.com
