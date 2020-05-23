import json
import sys
from pprint import pprint

with open("./schools.json") as file:
    json_file = json.load(file)

pprint(json_file[0]['latitude'])
temp_list = []

# for item in json_file:
#     temp_list.append({ 'school_name' : item['School_name'], 'postcode' : item['Postcode'], 'latitude': item['Latitude'], 'longitude' : item['Longitude'] })
    
#     # if idx == 0:
#         # break
# pprint(temp_list)

# with open('schools.json', 'w') as outfile:
#     json.dump(temp_list, outfile)

# print(type(item)) postcode