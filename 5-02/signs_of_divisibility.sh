#!/bin/bash
for ((i=1; i<=100; i++))
do
    num=$((i%3))
    if [[ $num -eq 0 ]]; then
        echo $i
    fi;
done
