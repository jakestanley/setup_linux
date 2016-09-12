source ~/conf/flag-update.sh

# Install i3

# Install general building dependencies
sudo apt-get install pkg-config make i3-wm

# Install i3 specific dependencies
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev -y

# make ~/git if it doesn't exist
mkdir -p ~/git

# Clone the i3 repo
git clone https://github.com/airblader/i3.git ~/git/i3

# install the software
cd ~/git/i3
git checkout gaps
make && sudo make install

# Install other i3 shit and stuff for making nice lock screens
sudo apt-get -y install i3status i3lock scrot imagemagick
