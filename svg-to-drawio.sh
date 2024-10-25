#!/bin/bash

# Tarkista, että oikea määrä argumentteja on annettu
if [ "$#" -ne 1 ]; then
  echo "Käyttö: $0 <tiedoston_nimi>"
  exit 1
fi

# Tallenna argumentit muuttujiin
tiedosto="$1"
etsittava=' style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:2;">'
korvaava='>'

# Tarkista, että tiedosto on olemassa
if [ ! -f "$tiedosto" ]; then
  echo "Tiedostoa '$tiedosto' ei löytynyt."
  exit 1
fi

# Käytä 'sed' komentoa merkkijonon korvaamiseen
sed -i "s/$etsittava/$korvaava/g" "$tiedosto"

echo "Korvattu '$etsittava' merkkijonolla '$korvaava' tiedostossa '$tiedosto'."

etsittava1=' style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:1.41421;">'
korvaava1='>'


# Käytä 'sed' komentoa merkkijonon korvaamiseen
sed -i "s/$etsittava1/$korvaava1/g" "$tiedosto"

echo "Korvattu '$etsittava1' merkkijonolla '$korvaava1' tiedostossa '$tiedosto'."


etsittava11=' style="fill:rgb(75,75,75);"'
korvaava11=''


# Käytä 'sed' komentoa merkkijonon korvaamiseen
sed -i "s/$etsittava11/$korvaava11/g" "$tiedosto"

echo "Korvattu '$etsittava11' merkkijonolla '$korvaava11' tiedostossa '$tiedosto'."


etsittava12=' style="fill:rgb(76,76,76);"'
korvaava12=''


# Käytä 'sed' komentoa merkkijonon korvaamiseen
sed -i "s/$etsittava12/$korvaava12/g" "$tiedosto"

echo "Korvattu '$etsittava12' merkkijonolla '$korvaava12' tiedostossa '$tiedosto'."

etsittava2=' style="fill:rgb(255,254,254);"'
korvaava2=''

# Käytä 'sed' komentoa merkkijonon korvaamiseen
sed -i "s/$etsittava2/$korvaava2/g" "$tiedosto"

echo "Korvattu '$etsittava2' merkkijonolla '$korvaava2' tiedostossa '$tiedosto'."


etsittava3=' style="fill:rgb(77,77,77);"'
korvaava3=''

# Käytä 'sed' komentoa merkkijonon korvaamiseen
sed -i "s/$etsittava3/$korvaava3/g" "$tiedosto"

echo "Korvattu '$etsittava3' merkkijonolla '$korvaava3' tiedostossa '$tiedosto'."


etsittava41='class="Lines"'
korvaava41='class="Background"'
etsittava42='path '
korvaava42='path class="Lines" '

# Korvataan kaikki muut esiintymät
sed -i "s/$etsittava42/$korvaava42/g" "$tiedosto"

# Korvataan ensimmäinen esiintymä
sed -i "0,/$etsittava41/s//$korvaava41/" "$tiedosto"



echo "Korvattu ensimmäinen esiintymä '$etsittava41' merkkijonolla '$korvaava41' ja muut merkkijonolla '$korvaava42' tiedostossa '$tiedosto'."

# Lisätään tyylit
sed -i '3a\
    <style type="text/css">\
        .Background{fill:#ffffff;}\
        .Lines{fill:#8e8e8e;}\
    </style>' "$tiedosto"

echo "Lisätty tyylit tiedostoon '$tiedosto'."