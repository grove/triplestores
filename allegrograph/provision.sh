tar zxvf /vagrant/agraph-4.13.1-linuxamd64.64.tar.gz -C /home/vagrant/
/home/vagrant/agraph-4.13.1/install-agraph /home/vagrant/agraph --non-interactive --super-password super --runas-user root
/home/vagrant/agraph/bin/agraph-control --config /home/vagrant/agraph/lib/agraph.cfg start

