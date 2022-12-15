#! /bin/bash

#2.Realizar un shell-script que actúe sobre los ficheros con nombre '*.mitipo' , donde "mitipo" es cualquier extensión de fichero que ingrese el usuario del directorio actual de forma tal, que si alguno de ellos supera en tamaño 3000Kb, se copiará a un directorio de nombre "backup" del directorio actual (si no existe crearlo).


#buscamos los ficheos

if [ ! -d "backup" ]; then
    mkdir backup
else 
    rm -r backup
    mkdir backup
fi

find $pwd -size +1k -exec cp "{}" backup \; 

echo "done"

