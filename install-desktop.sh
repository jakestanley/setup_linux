# check if update should be skipped
	
	if [ "$1" != "-no-update" ]; then
        sudo apt-get update
	else
        echo "-no-update flag passed, skipping apt-get update"
	fi

# This script installs my desktop environment

# Install X stuff

	sudo apt-get install -y xorg xserver-xorg

# Install i3

	## Clone the repo
	git clone https://github.com/airblader/i3.git i3git

	## Install the dependencies
	sudo apt-get -y install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev \
	  libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev
	
	sudo apt-get -y install libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev
	
	## CD into the repo and make/install
	cd i3git
	make && sudo make install
	
	## Remove the downloaded repo
	cd ..
	rm i3git -r -f
	
	## Install other i3 dependencies
	sudo apt-get -y install i3bar i3status
	
	## Install i3lock and fancy locking stuff
	sudo apt-get -y install i3lock scrot imagemagick

	## Add fancylock to path (TODO)

# Install Rofi

	## Install dependencies
	sudo apt-get install libxinerama-dev

	## Download, make, and install rofi
	cd ~
	wget https://github.com/DaveDavenport/rofi/releases/download/0.15.7/rofi-0.15.7.tar.gz
	tar -zxvf rofi*
	cd ~/rofi*
	./configure
	sudo make
	sudo make install

# Install nice flat icons pack (green)

	cd
	wget -O Ultra-Flat-Green.deb https://launchpad.net/~noobslab/+archive/ubuntu/icons/+files/ultra-flat-icons-green_1.3.2~trusty~Noobslab.com_all.deb
	sudo dpkg -i Ultra-Flat-Green.deb;rm Ultra-Flat-Green.deb

# Install terminal emulator

	sudo apt-get install -y rxvt-unicode

# Install lxappearance for managing themes

	sudo apt-get install -y lxappearance

# Install file manager
	
	sudo apt-get install -y pcmanfm

# Installs notification daemon (dunst and necessary dependencies)

	sudo apt-get install -y ruby-notify dbus libxinerama-dev libxft-dev libxss1 libxdg-basedir1 dunst