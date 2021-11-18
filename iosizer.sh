#!/bin/bash

sizes=(20 29 40 58 60 76 80 87 120 152 167 180 1024)

if [ -z "$1" ]
  then
    echo "No source image specified."
    echo ""
    echo "usage: ./iosizer.sh <base image filename> <output directory name>"
    exit
fi

if [ -z "$2" ]
  then
    echo "No output directory specified."
    echo ""
    echo "usage: ./iosizer.sh <base image filename> <output directory name>"
    exit
fi
mkdir $2

echo "Resizing..."

for i in "${sizes[@]}"
do
   : 
   echo $i
   sips -z $i $i $1 --out "$2/icon_${i}x${i}.png"
done

echo "Done"