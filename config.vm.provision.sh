#!/bin/sh
cd /tmp

###
###  adding missing groups and users, which are used by tests
###
# echo ""
# echo "adding groups and users"
# /usr/sbin/groupadd csusers
# /usr/sbin/useradd -m -s /bin/bash -G csusers vik

###
###  adding missing groups and users, which are used by tests
###
echo ""
echo "installing JDK, gradle"

mkdir /work
mkdir /work/java
tar -zxvf /host/install/jdk-8u60-linux-x64.tar.gz -C /work/java
cp -r /host/install/gradle-2.7 /work/.

cat /vagrant/profile.sh >> /home/vagrant/.profile


###
###  Getting Docker installed
###
echo ""
echo "Getting Docker"

# apt-get purge lxc-docker*
# apt-get purge docker.io*
# apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> /etc/apt/sources.list.d/docker.list
# apt-get install docker-engine

