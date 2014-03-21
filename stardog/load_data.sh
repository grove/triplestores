DATA_ROOT=$HOME/bsbmtools-0.2
/home/vagrant/stardog-2.1.1/bin/stardog-admin db create -n test
/home/vagrant/stardog-2.1.1/bin/stardog data add -g http://example.org/test test $DATA_ROOT/dataset_5m.ttl
