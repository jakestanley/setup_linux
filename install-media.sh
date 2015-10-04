# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install standalone CLI players
sudo apt-get install mplayer

# Installs standalone GUI players
sudo apt-get install radiotray spotify-client

# Install mpd servers
sudo apt-get install mopidy mopidy-spotify
sudo update-rc.d mopidy defaults

# Install mpd clients
sudo apt-get install mpc ncmpcpp
