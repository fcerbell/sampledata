# All routes ID

# Replace NULL values by empty string
s/\\N/""/g
# Remove escaped double quotes from values
s/\\"/'/g
# Remove double quotes from empty strings
s/""//g

# First build a unique route id as the first field
s/\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\),\([^,]*\)/\1\3\5,&/

s/^\([^,]*\).*/SADD "{idx}routes_Id" "\1"/
