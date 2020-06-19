#!/bin/bash

memoria1=0;
programa=a;

arquivo=$(cat dados20192.txt);

IFS=$'\n';

for line in $arquivo
do
	memoria2=$(echo "$line" | cut -d" " -f4 );

	if [ $memoria2 -gt $memoria1 ]
	then
		memoria1=$memoria2;
		programa=$(echo "$line" |  cut -d" " -f8 );
	fi	
done

echo "Programa: $programa gasta a maior quantiade de memoria: $memoria1"

