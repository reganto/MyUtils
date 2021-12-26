#! /usr/bin/env bash

response=`curl -I https://trade.kucoin.com/$1-USDT 2> /dev/null | head -n 1 | cut -d$' ' -f2`
echo $response
echo $1 

# ./kucoin.sh [COIN TICKER]
# ./kucoin.sh one
# output: 200 one
# -> one has been listed before
