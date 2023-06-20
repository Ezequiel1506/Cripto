#!/bin/sh

#Assign host from input
host=$1

#Ports quantity
ports=65421

#times knock
sec=3

#control variable
it=1

while [ "$it" -le "$sec" ]; do
p=45421
	while [ "$p" -le "$ports" ]; do
		nmap -r -p $p $host
		
			p=$(( p + 10000 ))

	done
	it=$(( it + 1 ))
done

echo "Current open Ports"
#nmap  -p 35421-$ports $host | awk '/open/'
nmap  -p 35421 $host

#Check connection
ftp $host 35421