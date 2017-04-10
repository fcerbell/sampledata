# Airlines records
 
# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g

s/^\([^,]*\)/HMSET "airlines:\1"/
s/","/" NAME "/
s/","/" ALIAS "/
s/","/" IATA "/
s/","/" ICAO "/
s/","/" CALLSIGN "/
s/","/" COUNTRY "/
s/","/" ACTIVE "/
