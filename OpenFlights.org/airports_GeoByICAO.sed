# GeoIndexing airports by ICAO

# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g
# Removes lines with incorrect GeoData
s/^.*-90,0.*$//g

s/^\([^,]*\),"\([^"]*\)","\([^"]*\)","\([^"]*\)","\([^"]*\)","\([^"]*\)",\([^,]*\),\([^,]*\),\([^,]*\),.*/GEOADD "{idx}airports_GeoByICAO" "\8" "\7" "\6"/
