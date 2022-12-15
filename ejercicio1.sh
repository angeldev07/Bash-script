#! /bin/bash

#función para mostrar el menú de mierda xd
show_menu(){
    echo "Seleccione una opción (solo ingrese el número)"
    echo "1) -l para listar un directorio o fichero"
    echo "2) -q para saber quién está conectado"
    echo "3) -f para ver la fecha actual"
    echo "4) -w para saber quien eres"
    echo "5) -c para mostrar el calendario "
    echo "6) -n para saber el hostname"
    echo "7) -e para salir"
}

user_option="1"

while [[ $user_option -gt '0' && $user_option -lt '8' ]] ; do 
    show_menu
    read user_option

    #realizamos la comprobación
    case $user_option in

        1) 
            echo "Ingrese el nombre del directorio o fichero a listar"
            read fichero
            ls -l $fichero
            ;;
        2)
            w
            ;;
        3)
            date
            ;;
        4)
            whoami
            ;;
        5)
            cal
            ;;
        6)
            hostname
            ;;
        7)
            echo "See you later ;)"
            break
            ;;
        *)
            user_option=1
            echo "Opción invalida."
            ;;
        esac
done

clear

