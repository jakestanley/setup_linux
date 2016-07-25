# Purge browser data (mainly for passwords)
sudo rm -r ~/.config/google-chrome

# Purge Slack data
sudo rm -r ~/.config/Slack

# Purge Spotify data
sudo rm -r ~/.config/spotify

# Purge Mopidy Spotify stuff
sudo rm ~/.config/mopidy/mopidy.conf 
sudo rm /etc/mopidy/mopidy.conf

# Purge Mopidy Spotify stuff
# Purge bash history (possibly for passwords on the command line)
sudo rm ~/.bash_history

# Purge SMB credentials
sudo rm ~/.smbcredentials*

# Purge mail
sudo rm ~/mbox
sudo rm -r ~/Mail

# Purge Skype
sudo rm -r ~/.Skype

# Purge Mopidy Spotify stuff
sudo rm ~/.config/mopidy/mopidy.conf 
sudo rm /etc/mopidy/mopidy.conf

# Purge nvpy and Simplenote stuff
sudo rm -r ~/.nvpy
sudo rm ~/.nvpy.cfg

# Purge SSH keys
sudo rm -r ~/.ssh
mkdir ~/.ssh
