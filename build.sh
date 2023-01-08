#!/usr/bin/env bash

set -e
set -o pipefail

apt-get update

# Install Python3.7 
$(pwd)install-python.sh

# Install Bazel 
$(pwd)install-bazel.sh

apt install -y git

# Clone Tensorflow
git clone https://github.com/tensorflow/tensorflow

# checkout v1.15.5
cd tensorflow
git checkout v1.15.5

