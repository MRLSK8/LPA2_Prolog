/*
2. Expresse através de fatos e regras Prolog as informações contidas na seguinte frase:  
 
“Cassia é bonita. Marcos é rico e bonito. Ana é rica e forte. Fabiano é forte e bonito.
Silvio é amável e forte. Todos os homens gostam de mulheres bonitas. Todos os homens ricos são felizes.
Cassia gosta de qualquer homem que gosta dela, desde que ele seja rico, amável ou bonito, e forte.”
*/

pessoa(cassia).
pessoa(marcos).
pessoa(ana).
pessoa(fabiano).
pessoa(silvio).

bonito(cassia).
bonito(marcos).
bonito(fabiano).

forte(ana).
forte(fabiano).
forte(silvio).

amavel(silvio).

rico(ana).
rico(marcos).
rico(fabiano).

feliz(marcos).

gosta(marcos, cassia ).
gosta(fabiano, cassia).
gosta(silvio, cassia).
gosta(cassia, X) :- rico(X), (amavel(X); bonito(X)), forte(X).

























