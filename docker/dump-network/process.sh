# Synopsis : dumps all ways from orma database to csvs
set -e
# TOFIX: make the env variable come by way of the docker file
source .env

# dump tables to csvs
if [ -n "${DATABASE_URL}" ]; then
  echo "Dumping ways"
  echo $DATABASE_URL
  cat ways.sql | psql $DATABASE_URL
else
  echo "environment variable DATABASE_URL is not defined"
  exit 1;
fi
