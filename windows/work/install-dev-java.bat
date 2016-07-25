::Install Eclipse JEE Neon & Spring development stuff (4.6)
::TODO use variables
choco install wget jdk svn tortoisesvn slack unzip -y -r
::Installs the current 32-bit JDK
choco install jdk -x86 -y -r
::Download Eclipse Neon and install
cd %UserProfile%
wget http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-win32-x86_64.zip&r=1 -O eclipseX64.zip
unzip -q eclipseX64.zip
move eclipse "\Program Files\eclipse"
cd "\Program Files\eclipse"
::Install Eclipse plugins
eclipsec.exe -nosplash ^
  -application org.eclipse.equinox.p2.director ^
  -repository http://update.eclemma.org/,http://eclipse-cs.sourceforge.net/update/,http://alfsch.github.io/eclipse-updates/workspacemechanic/,http://download.eclipse.org/technology/subversive/1.1/update-site/,http://community.polarion.com/projects/subversive/download/eclipse/3.0/update-site/,http://jbehave.org/reference/eclipse/updates/,http://dist.springsource.com/release/TOOLS/update/e4.6/,http://download.eclipse.org/egit/github/updates,http://repo1.maven.org/maven2/.m2e/connectors/m2eclipse-buildhelper/0.15.0/N/0.15.0.201207090124/ ^
  -installIU com.mountainminds.eclemma.feature.feature.group ^
  -installIU org.eclipse.team.svn.revision.graph.feature.group ^
  -installIU org.polarion.eclipse.team.svn.connector.feature.group ^
  -installIU org.eclipse.team.svn.mylyn.feature.group ^
  -installIU org.eclipse.team.svn.resource.ignore.rules.jdt.feature.group ^
  -installIU org.eclipse.team.svn.feature.group ^
  -installIU org.eclipse.team.svn.nl1.feature.group ^
  -installIU org.eclipse.team.svn.source.feature.group ^
  -installIU org.polarion.eclipse.team.svn.connector.svnkit18.feature.group ^
  -installIU com.google.eclipse.mechanic.feature.feature.group ^
  -installIU org.jbehave.eclipse.feature.feature.group ^
  -installIU org.eclipse.mylyn.github.feature.feature.group ^
  -installIU org.sonatype.m2e.buildhelper.feature.feature.group
::-installIU com.vmware.vfabric.ide.eclipse.tcserver.feature.group ^
::-installIU org.springsource.ide.eclipse.commons.feature.group ^
::-installIU org.springsource.ide.eclipse.commons.quicksearch.feature.feature.group ^
::-installIU org.springsource.ide.eclipse.dashboard.feature.group ^
::-installIU org.springsource.ide.eclipse.gradle.feature.feature.group ^
::-installIU org.springsource.sts.cft.feature.group ^
::-installIU org.springsource.sts.feature.group ^
::-installIU org.springsource.sts.package.feature.group
::-installIU org.springframework.ide.eclipse install this manually for now ?