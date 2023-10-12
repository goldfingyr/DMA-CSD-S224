#!/bin/bash
# CAVEAT: We are root @ /home/vagrant
echo "*** Installing MySql..."
echo "User: $UID @ $PWD"
apt-get -y install mysql-server mysql-client
echo "*** Installing MySql...DONE"
