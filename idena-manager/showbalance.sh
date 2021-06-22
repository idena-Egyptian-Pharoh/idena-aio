reset
echo '<<<<< show Balance >>>>>'
echo ' Enter Node port eg. (9009 OR 9010)'
read port
echo 'enter your api key to show balance:'
read api
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method":"dna_getCoinbaseAddr","params": [],"id": 37,"key": "'$api'"}'
echo 'enter your address  to show balance:'
read address

curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_getBalance","params": ["'$address'"],"id": 38,"key": "'$api'"}'
sleep 5
bash /home/idena-aio/idena-manager/more-options.sh
