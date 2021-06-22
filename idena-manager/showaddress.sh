reset
echo '<<<<< show address >>>>>'
echo ' Enter Node port eg. (9009 OR 9010)'
read port
echo 'Enter your api key to extract address:'
read api
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method":"dna_getCoinbaseAddr","params": [],"id": 37,"key": "'$api'"}'
sleep 5
bash /home/idena-aio/idena-manager/more-options.sh
