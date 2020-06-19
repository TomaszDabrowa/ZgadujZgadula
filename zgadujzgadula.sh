#!/bin/bash

#program zgadujący liczbę

clear

echo "=================================================================="
echo "                        Zgaduj-zgadula 0.5.1" 
echo "=================================================================="
echo "Tomasz Dąbrowa 2020 under MIT License,"
echo "which is in LICENSE.txt file in folder with this algorithm."
echo "------------------------------------------------------------------"

let losowa = $RANDOM %100
echo "Zgadnij liczbę od 1 do 100."
echo "UWAGA: WPISANA WARTOŚĆ MUSI BYĆ LICZBĄ."
traf = 0
proby = 0

until [$traf == 1]
do
	read odczyt
	
	if [$odczyt > $losowa]
	then
	echo "Wylosowana liczba jest mniejsza."
	fi
	
	if [$odczyt < $losowa]
	then
	echo "Wylosowana liczba jest większa."
	fi
	
	if [$odczyt == $losowa]
	then
	$traf = 1
	fi
	
	$proby = $proby + 1
	
done

clear

echo "Gratulacje! Aby zgadnąć liczbę, potrzebowałeś następującą liczbę prób:"
echo $proby
echo "Program zakończony"