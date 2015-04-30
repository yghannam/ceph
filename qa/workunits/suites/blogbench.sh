#!/bin/bash
set -e

echo "getting blogbench"
wget http://ceph.com/qa/blogbench-1.0.tar.bz2
#cp /home/gregf/src/blogbench-1.0.tar.bz2 .
tar -xvf blogbench-1.0.tar.bz2
cd blogbench*
wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD"
echo "making blogbench"
./configure
make
cd src
mkdir blogtest_in
echo "running blogbench"
./blogbench -d blogtest_in
