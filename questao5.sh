#!/bin/bash

contador=0;

arquivo=$(cat dados20192.txt);

IFS=$'\n';

for line in $arquivo
do
	memoria=$(echo "$line" | cut -d" " -f4 );
	user=$(echo "$line" | cut -d" " -f1 );

	if [ $memoria -gt 20000 -a $user = user007 ]
	then
		contador=$(($contador + 1));
	fi	
done

echo "$contador programas ocupam mais de 20000 bytes de memoria do usuario user007"

