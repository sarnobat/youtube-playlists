
# Since this requires private info, use:
# sh ~/bin/youtube_playlists.sh
# 1) This requires a SERVER key, that is created here:
# 	https://code.google.com/apis/console/#project:100917758076:access
#
# 2) Find the channel ID by going to your Youtube channel homepage
#
#	http://www.youtube.com/channel/UCfy_YNMOpOQyXnu7C_qtPMA/videos?view=1
#
# REFERENCE
# 	https://developers.google.com/youtube/v3/docs/playlists/list#try-it
set -e

######################
# https://console.cloud.google.com/apis/credentials?project=cmdg-2021-08
# API key 2
# "Your API key": AIza.....
test -n "$KEY" || echo "KEY not set (do not source control)"
test -n "$KEY" || exit
######################

# This is easy since it only uses public data. Trying to use the GMail API is a lot of work.
curl --insecure -H "X-JavaScript-User-Agent: www.googleapis.com" \
	"https://www.googleapis.com/youtube/v3/playlists?part=id,snippet,status&channelId=UCfy_YNMOpOQyXnu7C_qtPMA&maxResults=50&key=$KEY" | tee playlists.json
