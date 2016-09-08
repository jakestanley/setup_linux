# Linux Scripts: Xenial (Classic)
"Classic" means that it sets up the old i3wm setup I used to use. Man I've missed it (September 2016).
// TODO update this

--------

# Linux
Much like my [Windows configuration repo](https://github.com/madstanners/setup_windows), this repository provides a guide and resources on setting up my current Linux environment.

Direct download links are provided where possible.

You'll need to manually [install the Sublime Text Package Manager](https://packagecontrol.io/installation)

## Base system

- make sure you're performing everything up to and after installing and configuring sudo as root if you're on debian
- install git
- git clone [dotfiles] repo
- git clone [scripts] repo
- run scripts/install-sudo.sh (debian only)
- run scripts/install-core.sh
- run scripts/add-repositories.sh
- check that the dotfiles/dotfiles.sh variable points to the correct directory
- run dotfiles/dotfiles.sh
- run any other relevant scripts you need to install software

## Drivers, shares, etc

there's a bunch of stuff on how to do a lot of things here [on my website](http://jakestanley.net/kb.html)

- install nvidia drivers with ```sudo apt-get install nvidia-346``` *current as of October 2015*
- add file and share mounting records to fstab with ```sudo vim /etc/fstab```
- configure Samba share and Samba users.

--------

**These scripts assume the main user is "jake", and the operating system is Ubuntu 16.04 LTS (Xenial)**

## install-core.sh
**Run this first**

Installs git, vim, screen, and software-properties-common for adding repositories more easily.

## add-apt.sh
**Run this second**

This adds any required repositories using add-apt-repository. It will include repositories that you have to install manually as comments.

## install-common.sh
Install commonly used command line programs.

## install-defiance.sh
Install laptop dependencies, like the NVIDIA Optimus support packages.

## install-media.sh
Install software that's used to play media. This is in a separate script because there may be installations such as headless servers that don't need media playback capabilities.

## install-gui-common.sh
Install commonly used gui programs.

## install-personal.sh
Install programs used at home only.

## install-work.sh
Install programs used for work.

## install-fun.sh
Install a load of useless shit.

## purge.sh
Removes personal information from the home directory.

## Headless server
No script, just a package list.
- `bind9` for setting up a DNS