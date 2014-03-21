DATA_ROOT=$HOME/bsbmtools-0.2
AGRAPH_HOME=/home/vagrant/agraph
curl -X PUT 'http://super:super@localhost:10035/repositories/test'
sudo time $AGRAPH_HOME/bin/agload -v --bulk -g http://example.org/test test $DATA_ROOT/dataset_5m.ttl

