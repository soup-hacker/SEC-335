#!/bin/bash
hostfile=$1
portfile=$2
filename=$3

if [ -f $hostfile ] && [ -f $portfile ]; then
	echo "IP Port" >> $filename
	for host in $(cat $hostfile); do 
		for port in $(cat $portfile); do
			# output has been changed from CSV to just seperated by a space character
			timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host $port" | tee -a $filename
		done
	done
else
   	echo 'One of the files does not exist.'
fi