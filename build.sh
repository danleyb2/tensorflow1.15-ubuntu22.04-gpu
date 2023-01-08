apt-get update

apt install wget zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev build-essential git -y


# Install Python3.7 using install-python3.7.sh
./install-python3.7.sh


# Clone Tensorflow
git clone https://github.com/tensorflow/tensorflow

# checkout v1.15.5
cd tensorflow
git checkout v1.15.5









