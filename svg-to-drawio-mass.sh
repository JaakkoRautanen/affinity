#!/bin/bash

# Määritetään kansio, josta tiedostot haetaan
KANSIO="svg/square/"

# Käydään läpi kaikki tiedostot kansiossa
for TIEDOSTO in "$KANSIO"/*; do
    # Tarkistetaan, että onko se tiedosto
    if [ -f "$TIEDOSTO" ]; then
        # Suoritetaan toinen skripti ja annetaan tiedosto argumenttina
        . svg-to-drawio.sh "$TIEDOSTO"
    fi
done
