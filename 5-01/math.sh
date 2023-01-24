#!/bin/bash
echo "Введите число A:"
read a
echo "Введите число B:"
read b
if [[ a -lt b ]]; then
    echo $((b-a))
elif [[ a -gt b ]]; then
    echo $((a-b))
elif [[ a -eq b  ]]; then
    echo $((a*=b))
fi;
