DATA_ROOT=$HOME/bsbmtools-0.2

time curl -H 'Content-Type: text/turtle' -T $DATA_ROOT/dataset_5m.ttl -X POST 'http://localhost:8890/sparql-graph-crud?graph-uri=http://example.org/test'
