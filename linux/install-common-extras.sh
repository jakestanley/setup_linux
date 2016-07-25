# Installs stuff not recommended for basic/vagrant environments
sudo apt-get install pandoc tree xsel xclip dict preload tlp tlp-rdw newsbeuter irssi ncdu ttytter samba cifs-utils mailutils youtube-dl openjdk-8-jdk cowsay fortune-mod cmatrix toilet figlet -y

# A bunch of GUI desktop stuff
sudo apt-get install pcmanfm feh nitrogen filezilla shutter lxappearance redshift redshift-gtk ultra-flat-icons-green nvpy ultra-flat-icons -y

# Networking and network debugging stuff
sudo apt-get install mtr -y

# Mounting stuff
sudo apt-get install usbmount -y

# System status stuff
sudo apt-get install htop powertop -y

# Run subscripts
./misc/install-screenfetch.sh

# Prompt to select browser
sudo update-alternatives --config x-www-browser

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
