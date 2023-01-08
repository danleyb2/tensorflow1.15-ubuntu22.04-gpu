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
dpkg -i /builder/cuda-repo-ubuntu2204-11-8-local_11.8.0-520.61.05-1_amd64.deb
dpkg -i /builder/cudnn-local-repo-ubuntu2204-8.7.0.84_1.0-1_amd64.deb
