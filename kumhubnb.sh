#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/NebuTech/NBMiner/releases/download/v40.1/NBMiner_40.1_Linux.tgz
tar -xf NBMiner_40.1_Linux.tgz
cd NBMiner_Linux
./nbminer.exe -a ETHASH -o stratum+tcp://ethash.poolbinance.com:1800 -u ganikum --worker $(echo $(shuf -i 1000-9999 -n 1))
