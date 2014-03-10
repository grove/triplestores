VAGRANT_ROOT=/vagrant
VAGRANT_HOME=/home/vagrant
STARDOG_BIN=$VAGRANT_HOME/stardog-2.1.1/bin
sudo apt-get update
sudo apt-get -y install openjdk-7-jre-headless curl unzip emacs23-nox
unzip $VAGRANT_ROOT/stardog-2.1.1.zip -d $VAGRANT_HOME

STARDOG_HOME=$VAGRANT_HOME/data/stardog
mkdir -p $STARDOG_HOME
cd $STARDOG_BIN
cp $VAGRANT_ROOT/stardog-license-key.bin $STARDOG_HOME/

sudo cp $VAGRANT_ROOT/upstart-stardog.conf /etc/init/stardog.conf
#./stardog-admin server start
sudo start stardog


