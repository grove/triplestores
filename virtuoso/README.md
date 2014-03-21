Provision and login:
<pre>
vagrant up
vagrant ssh
</pre>

The Sparql endpoint is [here](http://localhost:8890/sparql).

Create test data:
<pre>
cd /vagrant
time ./create_data.sh
</pre>

Load data into the triplestore:
<pre>
cd /vagrant
time ./load_data.sh
</pre>

Run BSBM test suite:

<pre>
cd /vagrant
time ./run_tests.sh
</pre>

Or do everything in one go:
<pre>
cd /vagrant && time ./create_data.sh && time ./load_data.sh && time ./run_tests.sh
</pre>
