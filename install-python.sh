#!/usr/bin/env bash

set -e
set -o pipefail

# Python 3.8
apt-get update

apt -y install zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libsqlite3-dev \
    libreadline-dev \
    libffi-dev \
    libbz2-dev

apt -y install wget build-essential 
wget -O Python-3.8.10.tar.xz https://www.python.org/ftp/python/3.8.10/Python-3.8.10.tar.xz
# cp /builder/assets/Python-3.8.10.tar.xz .
tar -xf Python-3.8.10.tar.xz

cd Python-3.8.10/

./configure --enable-optimizations --enable-shared

# With tests and optimizations. Recomended
# make -j8 

# Skip tests
make -j8 build_all

# Install
make install

ldconfig /usr/local/lib 

ln -s python3 /usr/local/bin/python
ln -s pip3 /usr/local/bin/pip

cd -
rm -r Python-3.8.10/
