# This script is suitable for installing Singularity version 3.

# Set Go and Singularity versions.

GO_VERSION=1.11.5
SY_VERSION=3.0.3

# Install packages needed for building Singularity.

apt-get update
apt-get install -y build-essential libssl-dev uuid-dev libgpgme-dev

# Install Go.

echo Downloading go ...
curl -sO https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz
tar -zxf go${GO_VERSION}.linux-amd64.tar.gz
mv go goroot

export GOPATH=/home/vagrant/gopath
export PATH=${GOPATH}/bin:/home/vagrant/goroot/bin:${PATH}
mkdir $GOPATH

# Install Go dep.

go get -u -v github.com/golang/dep/cmd/dep

# Download Singularity.

curl -sLO https://github.com/sylabs/singularity/releases/download/v${SY_VERSION}/singularity-${SY_VERSION}.tar.gz
mkdir -p ${GOPATH}/src/github.com/sylabs
tar -C ${GOPATH}/src/github.com/sylabs -zxf singularity-${SY_VERSION}.tar.gz

# Build and install Singularity.

pushd ${GOPATH}/src/github.com/sylabs/singularity
./mconfig
make -C builddir
make -C builddir install
popd

# Clean up.

rm -fr goroot gopath gocache go${GO_VERSION}.linux-amd64.tar.gz singularity-${SY_VERSION}.tar.gz
