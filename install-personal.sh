# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install...
sudo apt-get install grafx2 transmission-gtk openjdk-8-jdk steam
