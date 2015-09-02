# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install xorg and xserver-xorg
sudo apt-get install xorg xserver-xorg

# Install i3 stuff

# 
