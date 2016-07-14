## Keys
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

## Repositories
sudo add-apt-repository ppa:noobslab/icons # noobslab gorgeous flat icons repository (Ubuntu only)
sudo add-apt-repository -y "deb http://repository.spotify.com stable non-free" # spotify
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list
sudo apt-get update 