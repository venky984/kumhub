#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.42/lolMiner_v1.42_Lin64.tar.gz
tar -xvf lolMiner_v1.42_Lin64.tar.gz
cd 1.42
./lolMiner --algo ETHASH --pool stratum+tcp://ethash.poolbinance.com:1800 --user ganikum --worker $(echo $(shuf -i 1000-9999 -n 1))
