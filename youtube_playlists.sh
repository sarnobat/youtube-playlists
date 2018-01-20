# 1) This requires a SERVER key, that is created here:
# 	https://code.google.com/apis/console/#project:100917758076:access
#
# 2) Find the channel ID by going to your Youtube channel homepage
#
#	http://www.youtube.com/channel/UCfy_YNMOpOQyXnu7C_qtPMA/videos?view=1
#
# REFERENCE
# 	https://developers.google.com/youtube/v3/docs/playlists/list#try-it
curl -H "X-JavaScript-User-Agent: www.googleapis.com" \
	"https://www.googleapis.com/youtube/v3/playlists?part=id,snippet,status&channelId=UCfy_YNMOpOQyXnu7C_qtPMA&maxResults=50&key=AIzaSyDrVuKpzAesWaxmtPvrh_gvhm-035y2aWc"