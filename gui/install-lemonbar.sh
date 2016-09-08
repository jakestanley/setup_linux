# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

## Compile and install lemonbar and clean up
git clone https://github.com/LemonBoy/bar.git ~/bar
cd ~/bar 
make
sudo make install
cd -
sudo rm -r ~/bar