#!/bin/bash

yum install -y https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm
yum install -y cvmfs cvmfs-config-default
cvmfs_config setup
cp /vagrant/default.local /etc/cvmfs/default.local
