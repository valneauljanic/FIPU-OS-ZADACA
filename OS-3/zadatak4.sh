#!/bin/bash

naziv_dir="$1"

if [ "$#" -ne 1 ]; then
	echo "Treba upisati samo 1 argument."
	exit 1
fi

if [ ! -d "./naziv_dir" ];then
	echo "Direktorij '$naziv_dir'" ne postoji u trenutnom direktoriju."
	exit 1
fi

zip -r svi_zapisi.zip "$naziv_dir"

echo "Datoteke su komprimirane u svi_zapisi.zip"
