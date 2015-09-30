# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install the dependencies
sudo apt-get install dbus libxinerama-dev libxft-dev libxss1 libxss-dev libxdg-basedir1 libdbus-1-dev libxdg-basedir-dev

# Download, compile, and install
cd ~
wget http://www.knopwob.org/public/dunst-release/dunst-1.1.0.tar.bz2
tar -jxf dunst-1.1.0.tar.bz2 
cd dunst-1.1.0/
make
sudo make install

# Clean up
cd ~
sudo rm -r dunst-*


