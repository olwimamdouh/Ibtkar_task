#!/bin/bash

read -p "Enter a file extension: " extension

now="$(date +'%d-%m-%Y')"

read -p "Enter a file prefix:(Press ENTER for $now ) " prefix


if [[ -z "$prefix" ]]; then

     echo "Renaming mycat.$extension to $now_mycat.$extension"

else

     echo "Renaming mycat.$extension to $prefix_mycat.$extension"

fi
