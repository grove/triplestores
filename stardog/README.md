Stardog 2.1.1
=============

This is a Ubuntu 12.04 Vagrant box. It uses Upstart for running the triplestore server.

Note that the vagrant provisioning script expects that the files
<code>stardog-2.1.1.zip</code> and
<code>stardog-license-key.bin</code> are located in this directory.
Please add them yourself as Stardog is proprietary software.

Provision and login:
<pre>
vagrant up
vagrant ssh
</pre>

The Sparql endpoint is [here](http://localhost:8082/sparql).
Credentials: admin/admin

Notes:

Had to patch the bsbmtools-0.2/src/benchmark/testdriver/NetQuery.java file by adding the following inside the constructor as the Stardog Sparql endpoint requires authentication:

<pre>
Authenticator.setDefault (new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication ("admin", "admin".toCharArray());
        }
    });
</pre>

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
