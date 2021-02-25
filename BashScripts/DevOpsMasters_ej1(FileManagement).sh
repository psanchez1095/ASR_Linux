#!/bin/bash

#Script que solicita al usuario el nombre de un fichero y seis nombres 
#Se escribe en dicho fichero una linea para cada nombre seguido de un numero fijo y un numero aleatorio. El nombre y los dos numeros deben ir espaciados

echo "Introduce un nombre para el fichero con su extension"
read fichero
touch $fichero
for i in 1 2 3 4 5 6
do
echo "Dame un nombre en la pos $i"
read nom

random=$((RANDOM%10000))
current=`expr $i \* 1000 + $i \* 100 + 10 \* $i + $i`

#Utilizamos printf y asi manejamos los saltos de linea
printf "$nom ">>$fichero
printf "$current ">>$fichero
printf "$random \n">>$fichero
done
