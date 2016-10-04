# Setting up my virtual private server (VPS)

For now this will be a log of steps and requirements for setting up my VPS.

## Software

*current as of 22/09/2016*

- Ubuntu Server 14.04

## Hardware

*current as of 22/09/2016*

- quad core cpu
- 1gb ram
- 60 GB SSDC disk

## Security

- root remote login should be disabled
- ssh key with passphrase login should be the default method of logging in for maximum security
- ssh keys should be rotated every six months at least

## Setup log

*I did this from my mac on 22/09/2016*

### Generate login key and create user

- Generate SSH RSA key for the login with a passphrase (~/.ssh/mykey_rsa.pub) `ssh-keygen -t rsa` (from local)
- logged in as root (on server)
- created user "jake" `root@myhost $ adduser jake` (on server)
- copy the key I generated to the server with `ssh-copy-id -f -i ~/.ssh/mykey_rsa.pub jake@myhost.net` (from local)
- [disabled password authentication](http://support.hostgator.com/articles/specialized-help/technical/how-to-disable-password-authentication-for-ssh) (on server)
- [disabled root login](http://serverfault.com/a/178087) (on server)
- added jake to sudoers file with `visudo`

### Added the host key to the ssh config file on my local machine 

[see here for more info](http://xmodulo.com/how-to-specify-private-key-file-in-ssh.html), but it's essentially:

`vim ~/.ssh/config`

```
Host myhost.net
        IdentityFile ~/.ssh/mykey_rsa
```

### configure locale

`sudo locale-gen ru_RU`
`sudo locale-gen ru_RU.UTF-8`
`sudo update-locale` or `sudo dpkg-reconfigure locales`

### install zsh and oh-my-zsh

- `sudo apt update`
- `sudo apt install zsh curl git`
- `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### clone dotfiles