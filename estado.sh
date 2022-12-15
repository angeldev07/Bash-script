#! /bin/bash

archivos=$(ls)
IFS=' ' read -r -a archivos <<< $(ls)

echo "$paths"
# for item in "${archivos[@]}"
# do
#     echo -e "$item \n"
# done