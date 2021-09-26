import gather_keys_oauth2 as Oauth2
import fitbit
import pandas as pd 
import datetime

CLIENT_ID='22C5DL'
CLIENT_SECRET='535b60dfa6f6355d1e8460e90d3d6406'
server=Oauth2.OAuth2Server(CLIENT_ID, CLIENT_SECRET)
server.browser_authorize()
ACCESS_TOKEN=str(server.fitbit.client.session.token['access_token'])
REFRESH_TOKEN=str(server.fitbit.client.session.token['refresh_token'])
auth2_client=fitbit.Fitbit(CLIENT_ID,CLIENT_SECRET,oauth2=True,access_token=ACCESS_TOKEN,refresh_token=REFRESH_TOKEN)
oneDate = pd.datetime(year = 2019, month = 11, day = 21)
oneDayData = auth2_client.intraday_time_series('activities/heart', oneDate, detail_level='1sec')
print(oneDayData)
yesterday = str((datetime.datetime.now() - datetime.timedelta(days=1)).strftime("%Y%m%d"))
yesterday2 = str((datetime.datetime.now() - datetime.timedelta(days=1)).strftime("%Y-%m-%d"))
today = str(datetime.datetime.now().strftime("%Y%m%d"))
fit_statsHR = auth2_client.intraday_time_series('activities/heart', base_date=yesterday2, detail_level='1sec')
print(fit_statsHR)