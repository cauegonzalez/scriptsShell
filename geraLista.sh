#!/bin/bash

rm ./exercicios.txt;
LIST_ARQ=$(ls --hide=*.mp3 | grep -v ^d);
i=1;

for arquivo in $LIST_ARQ
do
    if [ $arquivo != 'exercicios.txt' ]; then
        echo "Ex.: $i" >> ./exercicios.txt;
        cat $arquivo >> ./exercicios.txt;
        echo "\n\n=======\n\n" >> ./exercicios.txt;
        i=$((i+1))
    fi
done
