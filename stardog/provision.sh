VAGRANT_ROOT=/vagrant
VAGRANT_HOME=/home/vagrant
STARDOG_BIN=$VAGRANT_HOME/stardog-2.1.3/bin

sudo apt-get update
sudo apt-get -y install openjdk-7-jdk curl unzip emacs23-nox

unzip $VAGRANT_ROOT/stardog-2.1.3.zip -d $VAGRANT_HOME

STARDOG_HOME=$VAGRANT_HOME/stardog-data
mkdir -p $STARDOG_HOME
cd $STARDOG_BIN
cp $VAGRANT_ROOT/stardog-license-key.bin $STARDOG_HOME/

wget -O /home/vagrant/bsbmtools-v0.2.zip http://downloads.sourceforge.net/project/bsbmtools/bsbmtools/bsbmtools-0.2/bsbmtools-v0.2.zip
unzip -d /home/vagrant/ /home/vagrant/bsbmtools-v0.2.zip
cp $VAGRANT_ROOT/patched-bsbm.jar /home/vagrant/bsbmtools-0.2/lib/bsbm.jar

chown -R vagrant:vagrant $STARDOG_HOME
chown -R vagrant:vagrant /home/vagrant/bsbmtools-0.2

sudo cp $VAGRANT_ROOT/upstart-stardog.conf /etc/init/stardog.conf
sudo start stardog


