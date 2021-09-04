#!  /usr/bin/bash
reset
if [ -d "/home/idena-manager" ]; then
echo "idena manager already installed"
idena-manager status
else
echo 'installing idena-manager ... '
echo 'Please wait while downloading idenachain.db(1gb)'
cd /home
mkdir idena-manager
cd idena-manager
source <(curl -sL https://bit.ly/idena-manager-installer)
echo 'enter your nodekey :'
read key
idena-manager add -w "$key" -k "123" -l /home
sleep 5
sudo apt-get install unzip
sudo fallocate -l 2G /swapfile2 && sudo chmod 600 /swapfile2 && sudo mkswap /swapfile2 && sudo swapon /swapfile2 && echo '/swapfile2 none swap sw 0 0' | sudo tee -a /etc/fstab
idena-manager status
sleep 5
reboot
fi
