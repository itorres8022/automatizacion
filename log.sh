#! /bin/bash
file=cpu.log     #nombre de archivo
path=/var/log/   #ruta

cd $path   #nos lleva a la ruta
if !(find $file)  #busca y sino encuentra  el archivo file
then
        touch $file   #lo crea
fi

while true
do

	echo -e "$(date +%d/%m/%Y-%H:%M:%S)\t$(hostname -A)\t$(grep 'cpu' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')\t$(free -m -t | grep T | awk '{usage=($3*100)/$2} END {print usage}')" >> $file
	sleep 1   #detiene un segundo el script antes de volver a ejecutarlo
done



# date es nuestra fecha
#hostname:  nombre de nuestro host 
#\t no sirve para dejar un espacio \n no hace un salto de linea
#grep: nos muestra una tabla de los procesos del cpu   
# aw:k generamos una nueva variable  2 y 4 son las filas de grep
#usage: tomamos las lineas del grep
#END terminamos el proceso y se imprimime la variable
# >> con file hacemos que se envie a ese archivo 
