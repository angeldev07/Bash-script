#! /bin/bash

menu_principal(){
    echo "1) Comando Grep"
    echo "2) Redirectores, tuberías y filtros"
    echo "3) Salir"
}

menu_secundario(){
    option=1
    while [ ! $option -eq 5 ]; do
        echo "1) Listar en orden inverso todos los UID de los usuarios del sistema"
        echo "2) Listar el /etc/passwd, ordenado por GID"
        echo "3) Listar el /etc/passwd ordenado por UID y por GID a la vez"
        echo "4) Listar todos los usuarios con shell /bin/bash ordenados por UID"
        echo "5) Salir al menu principal"
        echo "ingresa la opcion: "
        read option
        redirectores_tuberias_filtros
    done
}

comando_grep(){
    echo "Obteniedo información del login actual"
    passwd=$(cat /etc/passwd 2> error.txt | grep $(whoami))
    shadow=$(cat /etc/shadow 2>> error.txt | grep $(whoami))
    if [ "$passwd" = "" ]; then
        echo "El usuario no se encuentra en el archivo passwd"
    fi

    if [ "$shadow" = "" ]; then
        echo "El usuario no se encuentra en el archivo shadow"
    fi
}

redirectores_tuberias_filtros(){

    case $option in 
        1)
            sort -t':' -k 3 -n -r /etc/passwd ;;
        2)
            sort -t':' -k 4 -n /etc/passwd ;;
        3)
            sort -t':' -k 3 -k 4 -n /etc/passwd ;;
        4)
            cat /etc/passwd | grep /bin/bash | sort -t':' -k 3 -n ;;
        5) 
            echo "See you" 
            option=5 ;;
        *)
            echo "Opcion invalida" ;;
    esac
    
}

general=1

while [ ! $general -eq 3 ]; do
    #muestro el menú principal
    menu_principal

    echo "ingresa la opcion: "
    read general

    case $general in 
        1) 
            comando_grep ;;
        2) 
            menu_secundario ;;
        3)
            echo "Hasta luego"
            general=3 ;;
        *)
            echo "Opción no valida." ;;
    esac
done

