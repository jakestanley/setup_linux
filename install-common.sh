# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Installs essentials for headless and desktop environments

# Install pm-utils for suspending, etc
sudo apt-get install -y pm-utils

# Install essentials
sudo apt-get install -y git vim software-properties-common openjdk-7-jdk

# Install power management
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get install -y tlp tlp-rdw

# Install media players and interfaces
sudo apt-get install -y ncmpcpp mpc mplayer2

# Install screenfetch
sudo apt-get install -y lsb-release
mkdir ~/screenfetch
cd ~/screenfetch
wget -O screenfetch 'https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev'
sudo chmod +x screenfetch
sudo cp screenfetch /usr/local/bin/screenfetch
sudo rm -r ~/screenfetch

# Install Samba stuff
sudo apt-get install -y samba cifs-utils

# Install misc
sudo apt-get install -y tree pandoc xsel htop xclip dict preload newsbeuter irssi