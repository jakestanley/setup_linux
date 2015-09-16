# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Run scripts for installing GUI stuff. Check that these work relative to these directories
./gui/install-x.sh -no-update
./gui/install-i3.sh -no-update
./gui/install-rofi.sh -no-update
./gui/install-dunst.sh -no-update
# ./gui/install-lemonbar.sh -no-update
./gui/install-chrome.sh

# Install common GUI stuff
sudo apt-get install rxvt-unicode gitg gitk kdiff3 shutter lxappearance redshift pcmanfm x11-xserver-utils feh nitrogen filezilla
# TODO install firefox, nvpy (through pip install), compton, redshift-gtk, manual install for ultra-flat-icons(-green) package(s)

# Install fancylock script
sudo cp ~/scripts/launchers/fancylock /usr/local/bin/
