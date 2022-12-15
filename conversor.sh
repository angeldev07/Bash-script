#! /bin/bash


binario_decimal(){
    #tengo el número
    echo "ingrese el número"
    read bin
    #obtengo su longitud para poder determinar el exponente
    longitud=$((${#bin}-1))
    resultado=0 #variable para el resultado
    # iteramos
    for ((i=0;i<${#bin};i++)); do
        resultado=$((resultado+(${bin:i:1}*2**longitud)))
        longitud=$((longitud-1))
    done

    echo $resultado
}

decimal_binario(){
    echo "Ingrese el número: "
    read decimal
    #exponente en base 10
    longitud=0
    resultado=0

    while [ $decimal -gt 0 ]; do
        #obtenemos el modulo
        modulo=$((decimal%2))
        resultado=$((resultado+(modulo*10**longitud)))
        longitud=$((longitud+1))
        decimal=$((decimal/2))

    done

    echo $resultado

}

decimal_binario



