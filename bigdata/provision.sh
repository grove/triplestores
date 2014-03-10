sudo apt-get update && sudo apt-get -y install openjdk-7-jre-headless curl
wget -O bigdata.war http://netcologne.dl.sourceforge.net/project/bigdata/bigdata/1.3.0/bigdata.war
wget -O jetty-runner.jar 'http://search.maven.org/remotecontent?filepath=org/eclipse/jetty/jetty-runner/9.1.2.v20140210/jetty-runner-9.1.2.v20140210.jar'
java -Xmx1524m -Dcom.bigdata.rdf.sail.webapp.ConfigParams.propertyFile=/vagrant/RWStore.properties -jar jetty-runner.jar --port 8081 bigdata.war &
