# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install...
sudo apt-get install grafx2 deluge-gtk libtorrent14 libtorrent-dev steam

# Installing openjdk-8-jdk separately as it doesn't exist in the 14.04 repos
sudo apt-get install openjdk-8-jdk
