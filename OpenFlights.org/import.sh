#!/bin/bash -x

ENDPOINT="redis-13402.demo.francois.demo-rlec.redislabs.com:13402"

DATAFILE="openflights.redis"
LOGFILE="openflights.log"

REDISCLI="redis-cli -h ${ENDPOINT/:/ -p }"

> $DATAFILE
sed -f airlines.sed airlines.dat >> $DATAFILE
sed -f airlines_idx.sed airlines.dat >> $DATAFILE

sed -f airports.sed airports.dat >> $DATAFILE
sed -f airports_idx.sed airports.dat >> $DATAFILE
sed -f airports_IdByICAO.sed airports.dat >> $DATAFILE
sed -f airports_IdByIATA.sed airports.dat >> $DATAFILE
sed -f airports_GeoById.sed airports.dat >> $DATAFILE
sed -f airports_GeoByIATA.sed airports.dat >> $DATAFILE
sed -f airports_GeoByICAO.sed airports.dat >> $DATAFILE

sed -f countries.sed countries.dat >> $DATAFILE
sed -f countries_idx.sed countries.dat >> $DATAFILE

sed -f routes.sed routes.dat >> $DATAFILE
sed -f routes_idx.sed routes.dat >> $DATAFILE

echo "FLUSHDB" | $REDISCLI > $LOGFILE
cat $DATAFILE | unix2dos | $REDISCLI --pipe 2>&1 | grep -v "^OK"  | grep -v '^1' > $LOGFILE

