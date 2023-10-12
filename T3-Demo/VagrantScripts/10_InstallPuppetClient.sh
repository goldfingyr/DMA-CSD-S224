#!/bin/bash

echo "***** Installing Puppet: Client..."
wget https://apt.puppetlabs.com/puppet6-release-focal.deb
dpkg -i puppet6-release-focal.deb
apt-get update -y
cat >> /etc/hosts << EOF
192.168.11.100 puppetmaster puppet
EOF
apt-get install puppet-agent -y
cat >> /etc/puppetlabs/puppet/puppet.conf << EOF

[main]
certname = l2
server = puppetmaster
EOF
systemctl start puppet
systemctl enable puppet
echo "***** Installing Puppet: Client... Done"
