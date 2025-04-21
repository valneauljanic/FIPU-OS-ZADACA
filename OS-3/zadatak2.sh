#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Potrebno je proslijediti jedan argument"
  exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]] || [ "$1" -lt 1 ] || [ "$1" -gt 10 ]; then
  echo "Argument mora biti broj od 1 do 10"
  exit 1
fi

broj=$1
seq 1 "$broj" > brojevi.txt

