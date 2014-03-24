AllegroGraph 4.13.1
===================

This is a Ubuntu 12.04 Vagrant box. It uses Upstart for running the triplestore server.

Note that the vagrant provisioning script expects that
<code>agraph-4.13.1-linuxamd64.64.tar.gz</code> is located in this
directory. Please add it yourself as Allegrograph is proprietary
software.

Provision and login:
<pre>
vagrant up
vagrant ssh
</pre>

The Sparql endpoint is [here](http://localhost:10035/). Credentials: root/root

Notes:

Had to patch the bsbmtools-0.2/src/benchmark/testdriver/NetQuery.java file by adding the following inside the constructor as the Allegrograph Sparql endpoint requires authentication:

<pre>
Authenticator.setDefault (new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication ("root", "root".toCharArray());
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
