reset
echo '<<<<< send idna coins  >>>>>'
echo ' Enter Node port eg. (9009 OR 9010):'
read port
echo 'enter your  address  to fix stuck:'
read from
echo 'enter  api key :'
read api

curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 1}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 2}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 3}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 4}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 5}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 6}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 7}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 8}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 9}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 10}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 11}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 12}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 13}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 14}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 15}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 16}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 17}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 18}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 19}],"id": 9,"key": "'$api'"}'
curl "http://localhost:$port" -H 'Content-Type:application/json' --data '{"method": "dna_sendTransaction","params": [{"from": "'$from'","to": "'$from'","amount": "0.01","nonce": 20}],"id": 9,"key": "'$api'"}'

sleep 5
bash /home/idena-aio/idena-manager/more-options.sh
