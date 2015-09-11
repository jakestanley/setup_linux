# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Installs...
sudo apt-get install wicd-curses pandoc tree xsel xclip dict preload tlp tlp-rdw newsbeuter openjdk-7-jre irssi ncdu ttytter samba cifs-utils

# System status stuff
sudo apt-get install htop glances

# Run subscripts
./cli/install-screenfetch.sh

## TODO install ttytter
# Here is an smb.conf template
#[share]" | sudo tee -a /etc/samba/smb.conf
#path = /home/jake/share" | sudo tee -a /etc/samba/smb.conf
#available = yes" | sudo tee -a /etc/samba/smb.conf
#valid users = jake" | sudo tee -a /etc/samba/smb.conf
#read only = no" | sudo tee -a /etc/samba/smb.conf
#browseable = yes" | sudo tee -a /etc/samba/smb.conf
#public = yes" | sudo tee -a /etc/samba/smb.conf
#writable = yes" | sudo tee -a /etc/samba/smb.conf
