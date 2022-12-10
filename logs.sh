#!/bin/bash
node=${1:-""}
dirname=`basename $PWD`
container="$dirname-geth-1"
case $node in
	1) container="$dirname-beacon-chain-1";;
	2) container="$dirname-validator-1";;
esac
docker logs -f --since=5m  $container
