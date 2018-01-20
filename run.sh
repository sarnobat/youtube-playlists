sh youtube_playlists.sh | jq -r '.items[].id' | tee youtube_playlists_output.txt
cat youtube_playlists_output.txt  |  xargs --delimiter '\n' --max-args=1 -IPLAYLIST_ID curl -G -d "playlistId="PLAYLIST_ID"&maxResults=25&part=snippet%2CcontentDetails&key=AIzaSyDrVuKpzAesWaxmtPvrh_gvhm-035y2aWc" https://www.googleapis.com/youtube/v3/playlistItems | tee youtube_playlist_items_output.txt
cat youtube_playlist_items_output.txt | jq -r '"https://www.youtube.com/watch?v=" + .items[].contentDetails.videoId'