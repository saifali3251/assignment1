#!/bin/bash

# Install Puppet agent on CentOS/RHEL/Fedora

# Install the Puppet YUM repository
sudo rpm -Uvh https://yum.puppetlabs.com/puppet-release-el-7.noarch.rpm  # Modify URL for your OS version if needed

# Install the Puppet agent package
sudo yum install -y puppet-agent

# Start and enable the Puppet agent service
sudo systemctl start puppet
sudo systemctl enable puppet

# Add the Puppet agent service to run on system boot
sudo chkconfig puppet on  # For CentOS/RHEL 6.x

# Verify Puppet agent installation
puppet --version  # This should display the installed Puppet version

