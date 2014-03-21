DATA_ROOT=$HOME/bsbmtools-0.2
time curl -D- -H 'Content-Type: text/turtle' --upload-file $DATA_ROOT/dataset_5m.ttl -X POST 'http://localhost:8890/sparql-graph-crud?graph-uri=http://example.org/test'

# isql: grant SPARQL_UPDATE to "SPARQL";
