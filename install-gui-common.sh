# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Run scripts for installing GUI stuff. Check that these work relative to these directories
./gui/install-x.sh -no-update
./gui/install-i3.sh -no-update
# ./gui/install-lemonbar.sh -no-update
sudo apt-get install chromium-browser

# Install common GUI stuff
sudo apt-get install rxvt-unicode git-cola gitk kdiff3 shutter lxappearance redshift pcmanfm x11-xserver-utils feh nitrogen filezilla gparted

# Install common GUI packages available on Ubuntu and NOT Debian
sudo apt-get install nvpy ultra-flat-icons-green redshift-gtk rofi

# Install tray stuff
sudo apt-get install volti

# Install grub-customizer
sudo apt-get install grub-customizer

# TODO install firefox, nvpy (through pip install), compton, redshift-gtk, manual install for ultra-flat-icons(-green) package(s)
# Prompt to select browser
sudo update-alternatives --config x-www-browser

# Install headless Dropbox
# cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd
