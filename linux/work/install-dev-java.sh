# install misc stuff
sudo apt-get install remmina subversion maven apache2 ruby

# install java 8 stuff
sudo apt-get install openjdk-8-jdk tomcat8

# install mysql stuff
sudo apt-get install mysql-server mysql-workbench mytop

# install package management stuff
sudo apt-get install yum alien

# install unixodbc and some dependencies
sudo apt-get install unixodbc libc6 libkeyutils1 krb5-libs libcom_err libgcc1 libselinux1 libstdc++ libtool libuuidi1 openssl unixodbc zlib1g libaio1 comerr-dev krb5-*

# TODO manually
# install oracle odbc drivers
# install spring tool suite
# install slack client



# TODO tidy up




#!/usr/bin/env bash

# install misc stuff
sudo apt-get install remmina subversion maven apache2 ruby -y

# install java 8 stuff
sudo apt-get install openjdk-8-jdk tomcat8 -y

# install unixodbc and some dependencies
sudo apt-get install --ignore-missing unixodbc libc6 libkeyutils1 krb5-libs libcom_err libgcc1 libselinux1 libstdc++ libtool libuuidi1 openssl unixodbc zlib1g libaio1 comerr-dev krb5-* -y

# install mysql stuff TODO install mysql-server silently
sudo apt-get install --ignore-missing mysql-client mysql-workbench mytop -y

# install package management stuff
sudo apt-get install yum alien -y

# install and configure Eclipse
cd ~
wget http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz
tar -zxvf eclipse*
rm eclipse*tar.gz
sudo mv eclipse* /opt
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse

eclipse -nosplash \
  -application org.eclipse.equinox.p2.director \
  -repository http://update.eclemma.org/,http://eclipse-cs.sourceforge.net/update/,http://alfsch.github.io/eclipse-updates/workspacemechanic/,http://download.eclipse.org/technology/subversive/1.1/update-site/,http://community.polarion.com/projects/subversive/download/eclipse/3.0/update-site/,http://jbehave.org/reference/eclipse/updates/,http://dist.springsource.com/release/TOOLS/update/e4.6/,http://dist.springsource.com/release/TOOLS/update/e4.6/ \
  -installIU com.mountainminds.eclemma.feature.feature.group \
  -installIU org.eclipse.team.svn.revision.graph.feature.group \
  -installIU org.polarion.eclipse.team.svn.connector.feature.group \
  -installIU org.eclipse.team.svn.mylyn.feature.group \
  -installIU org.eclipse.team.svn.resource.ignore.rules.jdt.feature.group \
  -installIU org.eclipse.team.svn.feature.group \
  -installIU org.eclipse.team.svn.nl1.feature.group \
  -installIU org.eclipse.team.svn.source.feature.group \
  -installIU org.polarion.eclipse.team.svn.connector.svnkit18.feature.group \
  -installIU com.google.eclipse.mechanic.feature.feature.group \
  -installIU org.jbehave.eclipse.feature.feature.group \
  -installIU org.springframework.ide.eclipse