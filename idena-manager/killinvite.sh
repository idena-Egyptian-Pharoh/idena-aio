echo '<<<<< invite terminate  >>>>>'
echo ' Enter Node port eg. (9009 OR 9010):'
read port
echo 'enter your inviter address  :'
read from
echo 'enter your reciever address  to terminate:'
read to
echo 'enter  api key :'
read api
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"type": 10,"from": "'$from'","to": "'$to'"}],"id": 3,"key": "'$api'"}
echo invite terminated successfully!!!
sleep 5
reset
