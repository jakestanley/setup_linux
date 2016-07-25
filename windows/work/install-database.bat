choco install mysql mysql.workbench heidisql svn tortoisesvn -y -r
choco install mysql.odbc --x86 -y -r
mysql -u root -e "CREATE USER 't3user'@'localhost' IDENTIFIED BY 't3user';"
mysql -u root -e "GRANT ALL ON *.* TO 't3user'@'localhost';"
mysql -u t3user -pt3user -e "CREATE SCHEMA t3switch;"
curl -u "NEXUSUSER:NEXUSPASS" -L "https://nexus.iliad-solutions.com/service/local/artifact/maven/redirect?r=snapshots&g=com.iliadsolutions&a=t4-setup&v=LATEST" -o t4-setup.jar
java -jar t4-setup.jar --user=t3user --pass=t3user --url=jdbc:mysql://localhost:3306/t3switch --driver=org.mariadb.jdbc.Driver --update
:: install ODBC (32bit) manually
:: use unicode driver in system DSN in ODBC setup (32 bit)