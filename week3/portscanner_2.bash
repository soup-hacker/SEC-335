#!/bin/bash
network_ip=$1
port=$2

for i in {1..254}; do
	host="$network_ip.$i"
	#echo $host
	timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host $port"
done
