Note that the vagrant provisioning script expects that agraph-4.13.1-linuxamd64.64.tar.gz is located in this directory. Please add it yourself as Allegrograph is proprietary software.

Provision and login:
<pre>
vagrant up
vagrant ssh
</pre>

Load data into the triplestore:
<pre>
/vagrant/load_data.sh
</pre>

The Sparql endpoint is [here](http://localhost:10035/).

Notes:

Had to patch the bsbmtools-0.2/src/benchmark/testdriver/NetQuery.java file by adding the following inside the constructor as the Allegrograph Sparql endpoint requires authentication:

<pre>
Authenticator.setDefault (new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication ("root", "root".toCharArray());
        }
    });
</pre>

Run BSBM test suite:

<pre>
cd bsbmtools-0.2
./testdriver -dg http://example.org http://localhost:10035/sparql
</pre>
