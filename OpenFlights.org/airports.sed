# Airports data

# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g

s/^\([^,]*\)/HMSET "airports:\1"/
s/","/" NAME "/
s/","/" CITY "/
s/","/" COUNTRY "/
s/","/" IATA "/
s/","/" ICAO "/
s/",/" LATITUDE "/
s/,/" LONGITUDE "/
s/,/" ALTITUDE "/
s/,"/" TIMEZONE "/
s/","/" DST "/
s/","/" TZDB "/
s/","/" TYPE "/
s/","/" SOURCE "/
