VAGRANT_ROOT=/vagrant
AGRAPH_HOME=/home/vagrant/agraph

tar zxvf $VAGRANT_ROOT/agraph-4.13.1-linuxamd64.64.tar.gz -C /home/vagrant/
$AGRAPH_HOME-4.13.1/install-agraph $AGRAPH_HOME --non-interactive --super-password super --runas-user root

wget -O /home/vagrant/bsbmtools-v0.2.zip http://downloads.sourceforge.net/project/bsbmtools/bsbmtools/bsbmtools-0.2/bsbmtools-v0.2.zip
unzip -d /home/vagrant/ /home/vagrant/bsbmtools-v0.2.zip
chown -R vagrant:vagrant /home/vagrant/bsbmtools-0.2

sudo apt-get update && sudo apt-get -y install curl

$AGRAPH_HOME/bin/agraph-control --config $AGRAPH_HOME/lib/agraph.cfg start

#sudo cp $VAGRANT_ROOT/upstart-allegrograph.conf /etc/init/allegrograph.conf
#sudo start allegrograph


