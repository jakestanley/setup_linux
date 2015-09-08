# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# Install base
sudo apt-get install nginx php5-fpm php5-cli php5-mysql php5-gd php5-curl php5-mcrypt php5-mysql mysql-server

# Link mcrpyt
sudo ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/20-mcrypt.ini

# Install n98 magerun
cd ~
curl -sS http://files.magerun.net/n98-magerun-latest.phar -o n98-magerun.phar
chmod +x n98-*
sudo mv n98-* /usr/local/bin/magerun

# Install xdebug
sudo apt-get -y install php5-dev
sudo pecl install xdebug

# Install gui stuff
sudo apt-get install pidgin mysql-workbench 

# Echo some stuff about debugging
echo "You need to add some additional stuff to the php.ini file to get Xdebug to work. See the comments in install-work.sh"

#Add the following to /etc/php5/fpm/php.ini
#[xdebug]
#zend_extension=/usr/lib/php5/20121212/xdebug.so
#xdebug.remote_port=9000
#xdebug.remote_enable=1
#xdebug.remote_connect_back=1
#xdebug.remote_autostart=1
#xdebug.remote_log=/var/log/xdebug.log
#xdebug.remote_handler=dbgp
#xdebug.remote_mode=req
#xdebug.collect_params=1
#xdebug.show_local_vars=1

