#!/bin/bash

if [ $# -eq 1 ]
then
	
	tempos=$(cat dados20192.txt | grep $1 | cut -d" " -f7);

	if [ -n "$tempos" ]
	then
		segundos=$( echo "$tempos" | cut -d":" -f2 );
		minutos=$( echo "$tempos" | cut -d":" -f1 );

		for segundo in $segundos
		do
			t_segundos=$(( $t_segundos + $segundo ));
		done
	
		for minuto in $minutos
		do
			t_minutos=$(( $t_minutos + $minuto ));
		done
	
		t_minutos=$(( $t_minutos + $(( $t_segundos / 60))));
	
		t_segundos=$(( $t_segundos % 60));
	
		echo "Tempo total de execucao dos programas do terminal $1: $t_minutos minutos e $t_segundos segundos"
	else
		echo "Terminal inexistente"
	fi	

else
	echo "Usage: ./questao6.sh <nome do terminal>"
fi
