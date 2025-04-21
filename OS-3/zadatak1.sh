
#!/bin/bash

# Provjera broja argumenata
if [ $# -ne 2 ]; then
  echo "Potrebno je proslijediti točno 2 argumenta"
  exit 1
fi

# Definiranje varijabli za direktorij i datotečni nastavak
direktorij=$1
nastavak=$2

# Provjera je li direktorij ispravan
if [ ! -d "$direktorij" ]; then
  echo "Direktorij ne postoji!"
  exit 1
fi

# Traženje datoteka s traženim nastavkom
datoteke=$(find "$direktorij" -maxdepth 1 -type f -name "*$nastavak")

# Provjera i ispis rezultata
if [ -z "$datoteke" ]; then
  echo "Nema datoteka s nastavkom $nastavak"
else
  for datoteka in $datoteke; do
    echo "$(basename "$datoteka")"
  done
fi
