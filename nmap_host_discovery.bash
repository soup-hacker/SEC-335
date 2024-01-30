#!/bin/bash

filename="sweep_3.txt"

date | tee -a "./$filename"

for i in {2..50}; do
	nmap -sn 10.0.5.$i | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | tee -a "./$filename"
done
