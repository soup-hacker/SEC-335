#!/bin/bash

network_pre=$1
dns_server=$2

for i in {1..254}; do
    host=$network_pre.$i
    timeout .1 bash -c "nslookup $host $dns_server | grep -v 'NXDOMAIN'" 2>/dev/null | grep -v '^$'
done
