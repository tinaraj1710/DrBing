import requests
import sys

access_token = sys.argv[1]
user_id = sys.argv[2]

heart= requests.get(
	'https://api.fitbit.com/1/user/'+user_id+'/activities/heart/date/today/1w.json',
	headers = {'Authorization' : 'Bearer '+access_token})

sleep = requests.get(
	'https://api.fitbit.com/1.2/user/'+user_id+'/sleep/date/today.json',
	headers = {'Authorization' : 'Bearer '+access_token})

food = requests.get(
	'https://api.fitbit.com/1/user/'+user_id+'/foods/log/date/today.json',
	headers = {'Authorization' : 'Bearer '+access_token})

activities = requests.get(
	'https://api.fitbit.com/1/user/'+user_id+'/activities/date/today.json',
	headers = {'Authorization' : 'Bearer '+access_token})

print(str(heart.json())+'+')
print(str(sleep.json())+'+')
print(str(food.json())+'+')
print(activities.json())