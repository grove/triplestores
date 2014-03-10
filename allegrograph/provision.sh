VAGRANT_ROOT=/vagrant
AGRAPH_HOME=/home/vagrant/agraph
tar zxvf $VAGRANT_ROOT/agraph-4.13.1-linuxamd64.64.tar.gz -C /home/vagrant/
$AGRAPH_HOME-4.13.1/install-agraph $AGRAPH_HOME --non-interactive --super-password super --runas-user root
$AGRAPH_HOME/bin/agraph-control --config $AGRAPH_HOME/lib/agraph.cfg start
sudo apt-get update && sudo apt-get -y install curl

