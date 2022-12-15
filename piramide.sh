#! /bin/bash

#3.Realice un shell-script 'piramide.sh' que admite como argumento un número 'N' y que obtenga a la salida una serie de 'N' filas de forma triangular. 
#Para ./piramide.sh  (n=5) la salida sería:
#01
#02 02
#03 03 03
#04 04 04 04
#05 05 05 05 05

#Validar que es n y que el positivo el número  /0 true, 1 false
valido=0

if [ ! $1 = "-n" ]; then
    echo "$1 no se reconoce. Utilice -n"
    valido=1
fi

if [ $2 -lt 0 ]; then
    echo "Número negativo. Opcion no valida"
    valido=1
fi

if [ $valido -eq 0 ]; then
    mensaje=""
    #hacemos el for 
    for ((i=0; i<$2+1; i++)); do
        for ((j=0; j<$i; j++)); do
            mensaje+="0$i "
        done
        echo $mensaje
        mensaje=""
    done
fi




