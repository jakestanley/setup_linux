# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Installs non-essential, useless tat packages.

# Install silly stuff
sudo apt-get install -y cowsay fortune-mod sl cmatrix