#!/bin/bash
select operation in sum sub div mul; do
  echo "введите число A"
  read A
  echo "введите число B"
  read B
  re='^[0-9]+$'
  if ! [[ $A =~ $re ]] || ! [[ $B =~ $re ]] ; then
    echo "Ошибка: Введите положительные целые числа" >&2; exit 1
  fi;
  case $operation in
  sum)
    echo $(($A+$B)); break;;
  sub)
    echo $(($A-$B)); break;;
  div)
    if [[ $B -ne 0 ]]; then
      echo $(($A/$B));
    else
      echo "Деление на ноль - невозможно"; exit 1
    fi; break;;
  mul)
    echo $(($A*$B)); break;;
  esac
done
