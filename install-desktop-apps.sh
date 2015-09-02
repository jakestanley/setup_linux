# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Installs desktop programs I used

# Install git programs

	sudo apt-get install -y gitg gitk kdiff3

# Install filezilla

	sudo apt-get install -y filezilla

# Install misc

	sudo apt-get install -y pidgin shutter redshift grafx2

# Games stuff

	## Install Steam?
	## sudo vim /etc/apt/sources.list
	## add "deb http://http.debian.net/debian/ jessie main contrib non-free"
	## sudo dpkg --add-architecture i386
	## sudo apt-get update
	## sudo apt-get install steam
	
	## Install OpenGL libraries for NVIDIA?
	## aptitude install libgl1-nvidia-glx:i386
	
	## Install OpenGL libraries for AMD?
	## aptitude install libgl1-fglrx-glx:i386
