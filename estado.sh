#! /bin/bash
ls -l
for i in $(ls); do
    if [ -r $i ]; then   
        echo "lectura para $i "
    fi

    #echo $i
done