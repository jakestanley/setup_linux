# Updates repository caches, upgrades any software, installs sudo and configures sudo for user "jake", then reboots.
su
apt-get update
apt-get upgrade
apt-get install sudo
usermod -a -G sudo jake
reboot
