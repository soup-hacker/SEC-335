#!/bin/bash

filename="sweep.txt"

#date | tee -a "./$filename"

for i in {2..50}; do
	ping -c 1 10.0.5.$i | grep 'bytes from' | awk '{ print $4 }' | tr -d ':' | tee -a "./$filename"
	sleep 5
done
