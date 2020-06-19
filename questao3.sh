#!/bin/bash


if [ $# -eq 2 ]
then
	inferior=$1;
	superior=$2;
	numero=$inferior;

	if [ $inferior -lt $superior -a $inferior -ge 2 -a $superior -le 10000 ]
	then
		while [ $numero -le $superior ]
		do
			controle=1;
			contador=0;

			while [ $controle -le $numero ]
			do
				modulo=$(( $numero % $controle));

				if [ $modulo -eq  0 ]
				then
					contador=$(( $contador+1 )); 
				fi
				controle=$(( $controle + 1 ));
			done
			
			if [ $contador -eq 2 ]
			then
				echo "$numero" >> primos$inferior-$superior.txt;
			fi
			numero=$(( $numero + 1 ));
		done
	else
		echo "Usage: <limite inferior >= 2> <limite superior <= 10000>";
	fi 	
else
	echo "Usage: ./Questao3.sh <limite inferior> <limite superior>";
fi
