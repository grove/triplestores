VAGRANT_ROOT=/vagrant
AGRAPH_HOME=/home/vagrant/agraph
curl -X PUT 'http://super:super@localhost:10035/repositories/test'
sudo time $AGRAPH_HOME/bin/agload -v --bulk -g http://example.org/test test $VAGRANT_ROOT/dataset_5m.ttl
