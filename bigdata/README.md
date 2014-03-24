Bigdata 1.3.0
=============

This is a Ubuntu 12.04 Vagrant box. It uses Upstart for running the triplestore server.

Provision and login:
<pre>
vagrant up
vagrant ssh
</pre>

The Sparql endpoint is [here](http://localhost:8081/sparql).

Create test data:
<pre>
cd /vagrant
./create_data.sh
</pre>

Load data into the triplestore:
<pre>
cd /vagrant
./load_data.sh
</pre>

Run BSBM test suite:

<pre>
cd /vagrant
./run_tests.sh
</pre>

Or do everything in one go:
<pre>
cd /vagrant && ./create_data.sh && ./load_data.sh && ./run_tests.sh
</pre>
