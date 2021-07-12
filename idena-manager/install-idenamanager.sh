#!  /usr/bin/bash
cd /home
mkdir idena-manager
cd idena-manager
source <(curl -sL https://bit.ly/idena-manager-installer)
idena-manager add -w "" -k "123" -l /home
cd /home/datadir-node1/idenachain.db
sudo apt-get install unzip
unzip -o idenachain.db.zip
sudo fallocate -l 2G /swapfile2 && sudo chmod 600 /swapfile2 && sudo mkswap /swapfile2 && sudo swapon /swapfile2 && echo '/swapfile2 none swap sw 0 0' | sudo tee -a /etc/fstab
sudo rm -rf /home/datadir-node1/ipfs/*
idena-manager disable
cd /home/datadir-node1
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
unzip idenachain.db.zip
sudo rm idenachain.db.zip
idena-manager enable
idena-manager status
sleep 5
reboot
