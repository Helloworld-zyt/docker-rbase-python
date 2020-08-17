#!/usr/bin/env bash
PY_VERSION=3.8.5

wget  https://www.python.org/ftp/python/${PY_VERSION}/Python-${PY_VERSION}.tgz -O Python-${PY_VERSION}.tgz
tar -xf Python-${PY_VERSION}.tgz
cd Python-${PY_VERSION}
./configure  --enable-optimizations
make
make altinstall
rm -f /usr/bin/python
rm -f /usr/bin/python2
rm -f /usr/bin/python2.7
ln -s /usr/bin/python3.8 /usr/bin/python
ln -s /usr/bin/pip3.8 /usr/bin/pip