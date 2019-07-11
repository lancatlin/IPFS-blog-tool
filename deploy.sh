#!/bin/sh
CID=$(ipfs add -r -Q www)
echo "IPFS address is $CID"
IPNS=$(ipfs name publish -Q $CID)
ipfs name resolve $IPNS
echo "IPNS address is $IPNS"