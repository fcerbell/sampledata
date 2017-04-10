# Countries data

# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g
# Remove double quotes from empty strings
s/""//g

s/^\([^,]*\)/HMSET "countries:\1" NAME "\1/
s/,/" GEC "/
s/,/" ISO "/
s/,/" DST "/
s/$/"/
