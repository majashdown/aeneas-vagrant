# CVMFS

Vagrantfile to set up a Centos 7 virtual machine with CVMFS.

It uses yum to install the CVMFS packages from the CERN repository.
The `default.local` configuration file is copied to
`/etc/cvmfs/default.local` in the virtual machine, so you can edit it
in advance to change the configuration.