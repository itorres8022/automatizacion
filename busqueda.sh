#! /bin/bash

path="/var/log"
word="warning"

cd "$path"

for file in *
do
#       echo "$file"
#	cat "$file" | grep -i  "$word"  #-i es para ignorar mayusculas y minisculas
	grep -Ril "$word" "$file"   #buscar en el archivo la palabra warning -R para que nos de el nombre del archico l para enlistar
 
done
