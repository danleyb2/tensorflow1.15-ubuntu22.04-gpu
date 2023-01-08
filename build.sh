#!/usr/bin/env bash

set -e
set -o pipefail

apt-get update

# Install Python3.7 
/builder/install-python.sh

# Install Bazel 
/builder/install-bazel.sh

apt install -y git

# Clone Tensorflow
git clone https://github.com/tensorflow/tensorflow

# checkout v1.15.5
cd tensorflow
git checkout v1.15.5

pip install -U pip numpy wheel packaging requests opt_einsum
pip install -U keras_preprocessing --no-deps


# TODO Install GPU requirements
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda