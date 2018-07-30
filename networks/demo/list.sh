#!/bin/bash

# ./list.sh -s ADA --quote-symbol BNB --from alice --init-price 1

chain_id=$CHAIN_ID

while true ; do
    case "$1" in
        -s|--symbol )
            symbol=$2
            shift 2
        ;;
        --quote-symbol )
            quote_symbol=$2
            shift 2
        ;;
		--init-price )
			init_price=$2
			shift 2
		;;
		--from )
			from=$2
			shift 2
		;;
        *)
            break
        ;;
    esac
done;

expect ./list.exp $symbol $quote_symbol $init_price $from $chain_id > /dev/null

echo "Pair $(symbol)_$(quote_symbol) listed success."