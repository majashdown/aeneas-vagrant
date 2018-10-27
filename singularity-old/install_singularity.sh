# This script is suitable for installing Singularity version 2.

# Set Singularity version.

SY_VERSION=2.6.0

# Install packages needed for building Singularity.

apt-get update
apt-get install -y build-essential autoconf libtool libarchive-dev python

# Download Singularity.

curl -LO https://github.com/singularityware/singularity/releases/download/${SY_VERSION}/singularity-${SY_VERSION}.tar.gz
tar -zxf singularity-${SY_VERSION}.tar.gz

# Build and install Singularity.

pushd singularity-${SY_VERSION}
./autogen.sh
./configure --prefix=/usr/local
make
make install
popd

# Clean up.

rm -fr singularity-${SY_VERSION} singularity-${SY_VERSION}.tar.gz
