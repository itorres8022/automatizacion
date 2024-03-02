#! /bin/bash

declare -a numeros=(1 2 3 4 5)
suma=0

for num in "${numeros[@]}"
do
	suma=$((suma+num)) #suma aritmetica con doble parentesis 

done

echo "$suma"




#shellcheck suma.sh  es para ver donde se tiene error en  el codigo
