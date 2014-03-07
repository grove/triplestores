The Docker image is based on the phusion/baseimage and it is running inside a VM running CoreOS.

Start up a CoreOS instance with vagrant:
<pre>
vagrant up
</pre>

Then log in to the VM using ssh:
<pre>
vagrant ssh
</pre>

Now you can spin up a Docker container running the Virtuoso 7 server (Open Source Edition):
<pre>
docker run -d -t -p 8890:8890 grove/virtuoso-compiled /sbin/my_init -- /usr/local/virtuoso-opensource/bin/virtuoso-t -df +configfile /usr/local/virtuoso-opensource/var/lib/virtuoso/db/virtuoso.ini
</pre>

Open the Sparql endpoint in your browser. Enjoy!

<pre>
http://localhost:8890/sparql
</pre>

