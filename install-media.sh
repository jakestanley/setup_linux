# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install standalone players
sudo apt-get install mplayer

# Install mpd servers TODO check this
sudo apt-get install mopidy mopidy-spotify
sudo update-rc.d mopidy defaults

# Install mpd clients
sudo apt-get install mpc ncmpcpp
