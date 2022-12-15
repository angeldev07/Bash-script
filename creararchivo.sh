#Realice un shell-script "creararchivo.sh" que permita crear tantos archivos con nombres y extensión (txt) que el usuario desee. Cada archivo creado tendrá una única línea con una cadena proporcionada por el usuario (utilice redirectores y la orden echo). Al final del proceso se imprimirá cuantos archivos se crearon.

salir=0

while [ $salir -eq 0 ] ; do
    echo "Nombre del archivo: "
    read name

    echo  "Ahora, ingrese el contenido del archivo. Una vez quiera terminar, precione ctrl+d para continuar"
    cat > $name.txt

    clear

    echo -e "¿Desea crear otro archivo? \n1)Si\n2)No"
    read opcion

    case $opcion in
        2)
            salir=1 
            ;;
        *)
            echo "Opcion invalida. Se creara un nuevo fichero."  
            ;;
        esac

done