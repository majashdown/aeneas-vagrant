# Install packages.

yum install -y https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm
yum install -y cvmfs cvmfs-config-default

# Run setup script.

cvmfs_config setup

# Copy configuration files.

cp /vagrant/etc-cvmfs/default.local /etc/cvmfs
cp /vagrant/etc-cvmfs/config.d/softdrive.nl.conf /etc/cvmfs/config.d
cp /vagrant/etc-cvmfs/keys/softdrive.nl.pub /etc/cvmfs/keys
