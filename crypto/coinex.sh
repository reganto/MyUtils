#! /usr/bin/env bash

code=`curl -I https://www.coinex.com/exchange/$1-usdt 2> /dev/null | head -n 1 | cut -d$' ' -f2`
echo $code
echo $1
