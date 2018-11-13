progenitor(abraham,herb).
progenitor(abraham,homer).
progenitor(mona,homer).
progenitor(clancy,marge).
progenitor(clancy,patty).
progenitor(clancy,selma).
progenitor(jackie,marge).
progenitor(jackie,patty).
progenitor(jackie,selma).
progenitor(selma,ling).
progenitor(homer,bart).
progenitor(homer,lisa).
progenitor(homer,maggie).
progenitor(marge,bart).
progenitor(marge,lisa).
progenitor(marge,maggie).


homem(abraham).
homem(herb).
homem(homer).
homem(clancy).
homem(bart).

mulher(mona).
mulher(marge).
mulher(jackie).
mulher(patty).
mulher(selma).
mulher(ling).
mulher(maggie).
mulher(lisa).

irma(X,Y):- progenitor(A,X),
 progenitor(A,Y),
 X\==Y,
 mulher(X).
irmao(X,Y):- progenitor(A,X),
 progenitor(A,Y),
 X\==Y,
 homem(X).

avô(X,Y):- progenitor(X,A),
 progenitor(A,Y),
 homem(X).
avó(X,Y):- progenitor(X,A),
 progenitor(A,Y),
 mulher(X).

filho(X,Y):- progenitor(Y,X), homem(X),X\==Y.
filha(X,Y):- progenitor(Y,X), mulher(X),X\==Y.



mae(X,Y):- progenitor(X,Y),
 mulher(X).

pai(X,Y):- progenitor(X,Y),
 homem(X).


tio(X,Y):- irmao(X,A),
 progenitor(A,Y).

tia(X,Y):- irma(X,A),
 progenitor(A,Y).


primo(X,Y):-irmao(A,B),
 progenitor(A,X),
 progenitor(B,Y),
 X\==Y.

prima(X,Y):-irma(A,B),
 progenitor(A,X),
 progenitor(B,Y),
 X\==Y.






