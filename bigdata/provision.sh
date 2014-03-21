VAGRANT_ROOT=/vagrant
VAGRANT_HOME=/home/vagrant

sudo apt-get update
sudo apt-get -y install openjdk-7-jdk curl unzip emacs23-nox
wget -O bigdata.war http://netcologne.dl.sourceforge.net/project/bigdata/bigdata/1.3.0/bigdata.war
wget -O jetty-runner.jar 'http://search.maven.org/remotecontent?filepath=org/eclipse/jetty/jetty-runner/9.1.2.v20140210/jetty-runner-9.1.2.v20140210.jar'

wget -O /home/vagrant/bsbmtools-v0.2.zip http://downloads.sourceforge.net/project/bsbmtools/bsbmtools/bsbmtools-0.2/bsbmtools-v0.2.zip
unzip -d /home/vagrant/ /home/vagrant/bsbmtools-v0.2.zip
chown -R vagrant:vagrant /home/vagrant/bsbmtools-0.2

sudo cp $VAGRANT_ROOT/upstart-bigdata.conf /etc/init/bigdata.conf
sudo start bigdata
