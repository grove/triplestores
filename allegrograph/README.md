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

