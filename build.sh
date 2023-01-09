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
echo "[*] Cloning TensorFlow v1.15.5"
git clone --depth 1 --branch v1.15.5 https://github.com/tensorflow/tensorflow

# checkout v1.15.5
# cd tensorflow
# git checkout v1.15.5

echo "[*] Install the TensorFlow pip package dependencies"

pip install -U pip numpy wheel packaging requests opt_einsum
pip install -U keras_preprocessing --no-deps

