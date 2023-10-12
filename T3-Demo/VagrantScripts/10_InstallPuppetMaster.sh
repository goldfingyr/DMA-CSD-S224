#!/bin/bash

echo "***** Installing Puppet: Master..."
wget https://apt.puppetlabs.com/puppet6-release-focal.deb
dpkg -i puppet6-release-focal.deb
apt-get update -y
cat >> /etc/hosts << EOF
192.168.11.100 puppetmaster puppet
EOF
apt-get install puppetserver -y
cp /etc/default/puppetserver /etc/default/puppetserver.backup
sed -i -r "s;-Xms2g;-Xms1g;g" /etc/default/puppetserver
sed -i -r "s;-Xmx2g;-Xmx1g;g" /etc/default/puppetserver
systemctl start puppetserver
systemctl enable puppetserver
echo "***** Installing Puppet: Master... Done"
