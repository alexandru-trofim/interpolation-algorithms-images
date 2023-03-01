Functiile sunt implementate conform indrumarilor din scheletele functiilor si cu ajutorul formulelor din pdf ul asociat temei. In continuare am descris niste detalii de implementare.

Functiile cu interpolare proximala:
	proximal_2x2:
		se afla cel mai apropiat pixel cu ajutorul functiei de rotunjire
	proximal_resize:
		Nu am inversat functia T cu ajutorul unei functii de inversare, dar am folosit proprietatea matricilor diagonale.
		La fel am aflat cel mai apropiat pixel cu ajutorul functiei de rotunjire
	proximal_rotate:
		Nu am aplicat functie de inversare pentru matricea TrInv. Am ovservat ca inversa are doar semnul schimbat de la un sinus la altul in functia initiala.
		Pentru a afla punctele inconjuratoare am folosit functiile floor care returneaza partea intreaga si functia ceil care intoarce partea intreaga + 1 pentru numerele pozitive. Astfel nu mai era nevoie sa verificam daca punctul (x_p,y_p) se afla pe margine sau nu.

Functiile cu interpolare bicubica:
	precalc_d:
		Este functia care precalculeaza dervatele in toate punctele din imagine. Am folosit doar un for pentru a calcula toate trei matricile si verificam sa se satisfaca conditiile de la derivate si de exemplu pentru fx sa nu se ia x cu valoare 1 sau n pentru ca in formula derivatei avem x-1 si x+1 si ar fi out of bounds la matrice.
	bicubic_resize:
		Este practic aceeasi functie ca si proximal_rotate doar ca este folosita aproximarea bicubica pentru aproximarea valorilor pixelilor. S-a folosit formula din tema

Functiile cu RGB:
	In functiile in care primim ca parametru imagini in format png. Avem matrici treidimensionale. Pentru a aplica functiile create pentru o dimensiune cream trei matrici noi pentru fiecare culoare. Aplicam functiile pe fiecare culoare in parte. Si dupa unim toate trei "straturi" intr-o matrice tridimensionala noua.

