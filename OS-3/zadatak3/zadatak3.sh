#!/bin/bash

if [ ! -d "screenshots" ]; then
        echo "Direktorij 'screenshots' ne postoji."
        exit 1
fi

brojac=1

for file in screenshots/*; do
        if [ -f "$file" ]; then
		fileime=$(basename "$file")
	        novoime="screenshot_${counter}_${fileime}"
        	mv "$file" "screenshots/$novoime"
	        echo "Preimenovano: $fileime -> screenshot_${brojac}_${fileime}"
        	((brojac++))
	fi
done


