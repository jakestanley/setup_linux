TOMCAT_VERSION="$1"
echo "Attempting to install tomcat $TOMCAT_VERSION"

if [ -z "$TOMCAT_VERSION" ]
then
    printf "You didn't specify a Tomcat version number\n"
    printf "Usage: ./install-java8-trusty.sh 8.0.28\n"
    exit
fi

# install java 8
echo "Attempting to install Java 8"
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer oracle-java8-set-default

# tomcat
echo "Attempting to install Tomcat $TOMCAT_VERSION"
# download and extract tomcat
cd /opt
sudo wget http://www.apache.org/dist/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz
sudo tar -xvf apache-tomcat-${TOMCAT_VERSION}.tar.gz

# install tomcat
sudo ln -s /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat-latest
sudo chown -hR tomcat8 /opt/tomcat-latest /opt/apache-tomcat-${TOMCAT_VERSION}

# configure environment variables
echo "export CATALINA_HOME=\"apache-tomcat-${TOMCAT_VERSION}\"" >> ~/.bashrc
source ~/.bashrc

# configure tomcat to run as a server
cd /opt/apache-tomcat-${TOMCAT_VERSION}/bin
sudo ./startup.sh

# clean up
sudo rm /opt/apache-tomcat-${TOMCAT_VERSION}.tar.gz

printf "If the script was successful, you'll now need to add tomcat users to '/opt/apache-tomcat-${TOMCAT_VERSION}/conf/server.xml'. See http://idroot.net/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-14-04/ for more information\n"
printf "Tomcat has been started automatically, but can be shut down with '/opt/apache-tomcat-${TOMCAT_VERSION}/bin/shutdown.sh'\n"
