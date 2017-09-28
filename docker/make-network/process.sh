set -e
npm install
echo "Converting to GeoJSON"
node to-geojson.js ./waynodes.csv ./waytags.csv > ./network.geojson
