# cat playlists.json | jq '.items[].snippet.title' | tee playlist_names.sh.out
#cat playlists.json | jq -r '.items[] | .snippet.playlistId +  "\thttps://www.youtube.com/playlist?list=" + .snippet.id + "\t"  + "\t" + .snippet.title' | tee  playlist_names.sh.out
cat playlists.json | jq -r '.items[] | "https://www.youtube.com/playlist?list=" + .id + "\t" + .snippet.title' | tee  playlist_names.sh.out