# processing pipe
sh ./processes/dump-network.sh
sh ./processes/make-network.sh
# clean up temp files
find . -name '*.csv' -print0 | xargs -0 rm -rf
# find . -name '*.geojson' -print0 | xargs -0 rm -rf
