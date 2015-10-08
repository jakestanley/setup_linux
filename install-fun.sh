# check if update should be skipped
if [ "$1" != "-no-update" ]; then
    sudo apt-get update
else
    echo "-no-update flag passed, skipping apt-get update"
fi

sudo apt-get install -y cowsay
sudo apt-get install -y fortune-mod
sudo apt-get install -y sl
sudo apt-get install -y cmatrix
