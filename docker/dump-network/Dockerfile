# Synopsis : builds container to dump all ways in db.
# build postgresql container
FROM mdillon/postgis:9.4-alpine
# make folder for processing
RUN mkdir -p /dump
# copy the contents of the folder into the dump-network folder
COPY ./ /dump/
# run the data dump
ENTRYPOINT ["/bin/bash", "/dump/main.sh"]
