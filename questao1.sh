#!/bin/bash

if [ $# -eq 1 ]
then
	echo -n "Numero de diretorios em <$1>: "
	ls -l $1 | grep ^d | wc -l
else
	echo "Usage: ./questao1.sh <diretorio>"
fi
