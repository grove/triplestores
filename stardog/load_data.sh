VAGRANT_ROOT=/vagrant

/home/vagrant/stardog-2.1.1/bin/stardog-admin db create -n test
/home/vagrant/stardog-2.1.1/bin/stardog data add -g http://example.org/test test $VAGRANT_ROOT/dataset_5m.ttl

#time curl -D- -H 'Content-Type: text/turtle' --upload-file $VAGRANT_ROOT/dataset_5m.ttl -X POST 'http://localhost:5082/sparql?context-uri=#http://example.org/test'
