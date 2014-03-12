Provision and login:
<pre>
vagrant up
vagrant ssh
</pre>

Add dataset_5m.ttl to the triplestore/stardog directory, and then load data into the triplestore:
<pre>
/vagrant/load_data.sh
</pre>

The Sparql endpoint is [here](http://localhost:8082/sparql).
Credentials: admin/admin

Notes:

Had to patch the bsbmtools-0.2/src/benchmark/testdriver/NetQuery.java file by adding the following inside the constructor as the Allegrograph Sparql endpoint requires authentication:

<pre>
Authenticator.setDefault (new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication ("admin", "admin".toCharArray());
        }
    });
</pre>

Run BSBM test suite:

<pre>
cd bsbmtools-0.2
./testdriver -dg http://example.org http://localhost:8082/test/query
</pre>
 openjdk-7-jre-headless curl