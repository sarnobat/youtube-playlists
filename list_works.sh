# This requires a SERVER key, that is created here:
# https://code.google.com/apis/console/#project:100917758076:access
curl -H "X-JavaScript-User-Agent: www.googleapis.com" \
	"https://www.googleapis.com/youtube/v3/playlists?part=id,snippet,status&channelId=UCfy_YNMOpOQyXnu7C_qtPMA&maxResults=50&key=AIzaSyDrVuKpzAesWaxmtPvrh_gvhm-035y2aWc"