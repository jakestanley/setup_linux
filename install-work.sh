# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

# install apache2
sudo apt-get install apache2

# install jdk (won't work on trusty)
sudo apt-get install openjdk-8-jdk tomcat8

# install mysql stuff
sudo apt-get install mysql-server mysql-workbench mytop

# install yum
sudo apt-get install yum

# install unixodbc and some dependencies
sudo apt-get install unixodbc libc6 libkeyutils1 krb5-libs libcom_err libgcc1 libselinux1 libstdc++ libtool libuuidi1 openssl unixodbc zlib1g libaio1 comerr-dev krb5-*

# TODO manually
# install spring tool suite
# install slack client
