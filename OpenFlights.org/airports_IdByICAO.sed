# Indexing airports by ICAO

# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g

s/^\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),.*/HSET "{idx}airports_IdByICAO" \6 "\1"/
