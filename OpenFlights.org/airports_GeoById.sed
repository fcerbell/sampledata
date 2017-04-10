# GeoIndexing airports by Id (All airports have Id, but not always IATA or ICAO)

# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g
# Removes lines with incorrect GeoData
s/^.*-90,0.*$//g

s/^\([^,]*\),"\([^"]*\)","\([^"]*\)","\([^"]*\)","\([^"]*\)","\([^"]*\)",\([^,]*\),\([^,]*\),\([^,]*\),.*/GEOADD "{idx}airports_GeoById" "\8" "\7" "\1"/
