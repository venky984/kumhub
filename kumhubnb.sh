#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/NebuTech/NBMiner/releases/download/v37.5/NBMiner_37.5_Linux.tgz && tar -xf NBMiner_37.5_Linux.tgz && cd NBMiner_Linux && ./nbminer -a ethash -o stratum+tcp://ethash.poolbinance.com:1800 -u ganikum
