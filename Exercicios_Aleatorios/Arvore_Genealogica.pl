% Arvore Genealogica em Prolog

homem(ivo).
homem(gil).
homem(ary).
homem(rui).
homem(rai).
homem(noe).

mulher(ana).
mulher(bia).
mulher(pat).
mulher(eva).
mulher(gal).
mulher(clo).
mulher(lia).

gerou(ana, ary).
gerou(ivo, ary).
gerou(ana, eva).
gerou(ivo, eva).
gerou(bia, rai).
gerou(bia, rui).
gerou(gil, rui).
gerou(gil, rai).
gerou(ary, noe).
gerou(pat, noe).
gerou(eva, clo).
gerou(rui, clo).
gerou(rai, lia).
gerou(gal, lia).


casal(X, Y) :- gerou(X, Z), gerou(Y, Z), X \== Y.

filha(X, Y) :- gerou(X, Y), mulher(X).
filho(X, Y) :- gerou(X, Y), homem(X).

mae(X, Y) :- gerou(X, Y), mulher(X).
pai(X, Y) :- gerou(X, Y), homem(X).

avoh(X, Y) :- gerou(X, Z), gerou(Z, Y), homem(X).
avom(X, Y) :- gerou(X, Z), gerou(Z, Y), mulher(X).

irmao(X, Y) :- gerou(Z, X), gerou(Z, Y), homem(X) ,  X \== Y.
irma(X, Y) :- gerou(Z, X), gerou(Z, Y), mulher(X), X \== Y.

tio(X, Y) :- irmao(X, Z), pai(Z, Y) ; irmao(X, Z), mae(Z, Y).
tia(X, Y) :- irma(X, Z), pai(Z, Y) ; irma(X, Z), mae(Z, Y).

primo(X, Y) :- pai(Z, X), tio(Z, Y), homem(X) ; mae(Z, X), tia(Z, Y), homem(X).
prima(X, Y) :- pai(Z, X), tio(Z, Y), mulher(X);  mae(Z, X), tia(Z, Y), mulher(X).


/*
 # Consultas
 
homem(X).
mulher(X).
gerou(X,Y).
filha(X,Y).
filho(X,Y).
casal(X,Y).
mae(X,Y).
pai(X,Y).
avo(X,Y).
avoo(X,Y).
tia(X,Y).
tio(X,Y).
prima(X,Y).
primo(X,Y).
irmao(X,Y).
irma(X,Y).
*/













