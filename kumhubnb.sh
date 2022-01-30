#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://dl.nbminer.com/NBMiner_40.1_Linux.tgz
tar -xvf NBMiner_40.1_Linux.tgz
cd 40.1
./NBMiner --algo ETHASH --pool stratum+tcp://ethash.poolbinance.com:1800 --user ganikum --worker $(echo $(shuf -i 1000-9999 -n 1))
