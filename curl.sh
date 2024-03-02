#! /bin/bash
file=paginas.csv


echo "paginas,Estatus" > $file

for pagina in $(cat paginas)
do

	salida=$(curl -s -I "$pagina" | sed -n '1p' | tail -1 | awk '{print $3 " " $4}' | rev | cut -c3- | rev )
	if [ -z "$salida" ]
	then
		echo "$pagina,Fail" >> $file
	else
		echo "$pagina,OK" >> $file
	fi

done

column -s, -t $file
#rm -rt $file



#column -s, -t paginas.cvs | sed -e "1d"   es para quitar la columna 
#column -s, -t paginas.cvs | tail -2 las ultimas dos lineas
#column -s, -t paginas.cvs | head -2 las primeras dos lineas


