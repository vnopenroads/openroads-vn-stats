# Synopysis: Makes GeoJSON network

# build then run docker container.
docker build -t 'make-network' ./docker/make-network
# run container
docker run -it make-network 
# cp tmp into output folder for handoff
docker cp `docker ps --latest -q`:network/network.geojson ./network.geojson