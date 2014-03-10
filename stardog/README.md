Provision and login:
<pre>
vagrant up
vagrant ssh
</pre>

Load data into the triplestore:
<pre>
/vagrant/load_data.sh
</pre>

The Sparql endpoint is [here](http://localhost:8082/sparql).

Run BSBM test suite:

<pre>
cd bsbmtools-0.2
./testdriver -dg http://example.org http://localhost:8082/sparql
</pre>
 openjdk-7-jre-headless curl