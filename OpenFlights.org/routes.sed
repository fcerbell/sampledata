# All routes ID

# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g
# Remove double quotes from empty strings
s/""//g

# First build a unique route id as the first field
s/\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\)/\1\3\5,&/

s/^\([^,]*\)/HMSET "routes:\1"/
s/",/" AIRLINE "/
s/,/" AIRLINEID "/
s/,/" SRCAIRPORT "/
s/,/" SRCAIRPORTID "/
s/,/" DSTAIRPORT "/
s/,/" DSTAIRPORTID "/
s/,/" CODESHARE "/
s/,/" STOPS "/
s/,/" EQUIPEMENT "/
s/\r/"&/
