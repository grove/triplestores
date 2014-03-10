VAGRANT_ROOT=/vagrant
time curl -D- -H 'Content-Type: text/turtle' --upload-file $VAGRANT_ROOT/dataset_5m.ttl -X POST 'http://localhost:8890/sparql?context-uri=http://example.org/test'
