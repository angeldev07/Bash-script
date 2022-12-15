#! /bin/bash

echo "Ingrese el directorio"
read directorio


# Número de ficheros regulares encontrados 
# Número de directorios encontrados 
# Número de dispositivos de bloques encontrados 

si_lectura=0
si_escritura=0
si_ejecucion=0
no_lectura=0
no_escritura=0
no_ejecucion=0
ficheros=0
directs=0
bloque=0

ls -l 

for i in $(ls $directorio); do 

    if [ -r $i ]; then
        si_lectura=$((si_lectura+1))
    else
        no_lectura=$((no_lectura+1))
    fi

    if [ -w $i ]; then
        si_escritura=$((si_escritura+1))
    else
        no_escritura=$((no_escritura+1))
    fi

    if [ -x $i ]; then
        si_ejecucion=$((si_ejecucion+1))
    else
        no_ejecucion=$((no_ejecucion+1))
    fi

    if [ -f $i ]; then
        ficheros=$((ficheros+1))
    elif [ -d $i ]; then
        directs=$((directs+1))
    else 
        bloque=$((bloque+1))
    fi

done

echo "Lectura: $si_lectura"
echo "Escritura: $si_escritura"
echo "Ejecucion: $si_ejecucion"
echo "Ficheros: $ficheros"
echo "Directorios: $directs"
echo "Bloques: $bloque"