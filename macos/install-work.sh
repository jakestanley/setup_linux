brew install unixodbc svn

brew cask install eclipse-jee svnx

# Install Eclipse plugins
cd /Applications/Eclipse.app/Contents/MacOS/
./eclipse -nosplash \
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
  -installIU org.jbehave.eclipse.feature.feature.group