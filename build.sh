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
# git clone https://github.com/tensorflow/tensorflow

# checkout v1.15.5
# cd tensorflow
# git checkout v1.15.5

pip install -U pip numpy wheel packaging requests opt_einsum
pip install -U keras_preprocessing --no-deps


# TODO Install GPU requirements
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600

# wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda-repo-ubuntu2204-11-8-local_11.8.0-520.61.05-1_amd64.deb
# sudo dpkg -i cuda-repo-ubuntu2204-11-8-local_11.8.0-520.61.05-1_amd64.deb
dpkg -i /builder/cuda-repo-ubuntu2204-11-8-local_11.8.0-520.61.05-1_amd64.deb

cp /var/cuda-repo-ubuntu2204-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
apt-get update
apt-get -y install cuda



dpkg -i /builder/cudnn-local-repo-ubuntu2204-8.7.0.84_1.0-1_amd64.deb
cp /var/cudnn-local-repo-ubuntu2204-8.7.0.84/cudnn-local-BF23AD8A-keyring.gpg /usr/share/keyrings/
apt-get update
apt-get install libcudnn8=8.7.0.84-1+cuda11.8


