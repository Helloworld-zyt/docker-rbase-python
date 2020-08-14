#!/usr/bin/env bash
#curl -O https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz
tar -xf Python-3.8.5.tgz
cd Python-3.8.5
./configure  --enable-optimizations
make DESTDIR=Python-3.8.5
make altinstall
rm -f /usr/bin/python
rm -f /usr/bin/python2
rm -f /usr/bin/python2.7
ln -s /usr/local/bin/python3.8 /usr/bin/python
ln -s /usr/local/bin/pip3.8 /usr/bin/pip