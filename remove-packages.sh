# remove packages known to be unused
sudo apt-get remove nano mono-common rhythmbox ttf-arabeyes ttf-arphic-uming ttf-indic-fonts-core ttf-kochi-gothic ttf-kochi-mincho ttf-lao ttf-malayalam-fonts ttf-thai-tlwg ttf-unfonts-core bluez-audio bluez-cups bluez-gnome bluez-utils ppp pppconfig pppoeconf wvdial gnome-orca brltty brltty-x11 gnome-accessibility-themes gnome-mag libgnome-mag2 evolution-common evolution-data-server evolution-exchange evolution-plugins evolution-webcal openoffice.org-calc openoffice.org-draw openoffice.org-impress openoffice.org-writer openoffice.org-base-core totem totem-gstreamer totem-plugins totem-common totem-mozilla libbeagle1 gnome-games gnome-games-data gnome-cards-data example-content software-center

# clean
sudo apt-get autoremove
sudo apt-get clean all
sudo apt-get autoclean all
sudo apt-get update