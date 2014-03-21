DATA_ROOT=$HOME/bsbmtools-0.2
time curl -D- -H 'Content-Type: text/turtle' --upload-file $DATA_ROOT/dataset_5m.ttl -X POST 'http://localhost:8081/sparql?context-uri=http://example.org/test'
