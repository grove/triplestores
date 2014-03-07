FROM phusion/baseimage:0.9.8
MAINTAINER Geir Ove Grønmo <grove@bouvet.no>

EXPOSE 8890

RUN sudo apt-get update && sudo apt-get -y install dpkg-dev build-essential autoconf automake libtool flex bison gperf gawk m4 make odbcinst libxml2-dev libssl-dev libreadline-dev unzip emacs23-nox git-core openssl && git clone -v https://github.com/openlink/virtuoso-opensource.git 2>&1 | tee /var/log/virtusos-git.log && cd /virtuoso-opensource && git fetch origin && git checkout -b stable/7 origin/stable/7 && ./autogen.sh && ./configure && make && sudo make install 2>&1 | tee /var/log/virtusos-compile.log &&rm -rf /virtuoso-opensource && sudo apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


