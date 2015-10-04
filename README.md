# debian-scripts

## Introduction

**These scripts assume the main user is "jake"**

OK. I'm pretty anal about these scripts. I'm always fiddling with them. With this iteration of the script system I'm having main scripts at the top level which install a few programs and run lot of the *subscripts*. The subscripts are mainly copied over from the Ubuntu configuration stuff and are tweaked a little to work with debian. 

Rather than have everything run from one big script, it may be useful to install components separately, that's why I'm using a system of subscripts. There may be a bit of overlap, but that's intended.

### Main scripts overview

Install in the following order: 
- install-sudo.sh
- install-core.sh
- add-repositories.sh
- install-common.sh 
- install-media.sh
- install-gui-common.sh
- install-personal.sh
- install-work.sh

#### install-sudo.sh
This installs sudo. It should be run first on every Debian installation.

#### add-repositories.sh
This adds any required repositories using add-apt-repository. It will include repositories that you have to install manually as comments.

#### install-core.sh
Installs git, vim, screen, and software-properties-common for adding repositories more easily.

#### install-common.sh
This installs command line only programs. Some are a bit redundant, but they don't take up much space, e.g pandoc.

#### install-media.sh
This installs software that's used to play media. This is in a separate script because there may be installations such as headless servers that don't need media playback capabilities.

#### install-gui-common.sh
This installs the gui software and common gui programs across workstations.

#### install-personal.sh
This installs software that I use on my own personal workstations, e.g Steam, grafx2, etc.

#### install-work.sh
This script installs software that's pertinent to my current work setup.

#### install-fun.sh
You don't really need this stuff.

### Use cases
The following use cases are my own, and the big scripts are designed for these use cases.

#### Install first
- This script is to be run on every debian instance. It installs sudo

#### Commons
- This script installs the stuff I have on every installation regardless, e.g git, vim, etc.

#### Headless server 

## tl;dr stuff you need to know

### Prerequisites if you are installing Steam (and many other non-free packages)

*NON-UBUNTU ONLY*

The following will allow you to install Steam.

- Added non-free sources to ```/etc/apt/sources.list```
- ```deb http://http.debian.net/debian/ jessie main contrib non-free```
- Enable multi-arch and update by doing the following
- ```dpkg --add-architecture i386 && sudo apt-get update```
