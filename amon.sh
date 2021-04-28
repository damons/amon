#/bin/zsh
#
#
while true 
	do
    # check that args were passed
    if [ -z "$1" ]; then
        echo "Please, specify IP and (optionally) port of RPC server";
        echo "Example: $ ./amon.sh 10.0.1.13 3030";
        exit 1;
    fi;
	clear; 
        printf "AMON - Monitoring snarkOS node: $1\n"
	echo "-----------------------------------------------"
	echo "PEERS:";
	curl -s --data-binary '{"jsonrpc": "2.0", "id":"documentation", "method": "getpeerinfo", "params": [] }' -H 'content-type: application/json' http://$1:${2:-3030}/   | jq '.[].peers?';

	echo "NODE INFO:";
	curl -s --data-binary '{"jsonrpc": "2.0", "id":"documentation", "method": "getnodeinfo", "params": [] }' -H 'content-type: application/json' http://$1:${2:-3030}/ | jq '.result?';

	printf "CONNECTION COUNT:\t";
	curl -s --data-binary '{"jsonrpc": "2.0", "id":"documentation", "method": "getconnectioncount", "params": [] }' -H 'content-type: application/json' http://$1:${2:-3030}/ | jq '.result?';

	printf "BLOCK COUNT:\t\t";
	curl -s --data-binary '{"jsonrpc": "2.0", "id":"documentation", "method": "getblockcount", "params": [] }' -H 'content-type: application/json' http://$1:${2:-3030}/ | jq '.result?';
	sleep ${3:-1}; 
done
