#!  /usr/bin/bash
echo 'Please write the number of the node you want to fix'
read N
sudo rm -rf /home/datadir-node$N/ipfs/*
idena-manager disable $N
cd /home/datadir-node$N
rm -r idenachain.db
mkdir idenachain.db
cd idenachain.db
apt-get install unzip
wget https://sync.idena-ar.com/idenachain.db.zip
unzip idenachain.db.zip
sudo rm idenachain.db.zip
idena-manager enable $N
idena-manager status
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
