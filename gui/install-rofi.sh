# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install dependencies
sudo apt-get install libxinerama-dev

# Download and make
cd ~
wget https://github.com/DaveDavenport/rofi/releases/download/0.15.7/rofi-0.15.7.tar.gz
tar -zxvf rofi*
cd ~/rofi*
./configure
sudo make
sudo make install

# clean up
sudo rm -r ~/rofi*
