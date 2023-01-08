apt-get update

cd /tmp/

apt install wget zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev build-essential -y
wget https://www.python.org/ftp/python/3.7.13/Python-3.7.13.tar.xz

apt-get install xz-utils
tar -xf Python-3.7.13.tar.xz

cd Python-3.7.13/

./configure --enable-optimizations --enable-shared

# With tests. Recomended
# make -j8 

# Skip tests
make -j8 build_all

make install

ldconfig /usr/local/lib 

cd .. && rm -r Python-3.7.13/
