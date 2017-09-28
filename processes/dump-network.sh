# Synopysis: Dumps network way and node tables to csvs

# output dir to

# build then run docker container.
docker build -t 'dump-network' ./docker/dump-network
docker run -it dump-network 
# cp tmp into output folder for handoff
docker cp `docker ps --latest -q`:dump/waynodes.csv ./docker/make-network/waynodes.csv
docker cp `docker ps --latest -q`:dump/waytags.csv ./docker/make-network/waytags.csv

