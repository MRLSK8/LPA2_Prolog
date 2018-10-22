gato(tom).
rato(jerry).
passaro(piupiu).
minhoca(moli).

gosta(tom, jerry).
gosta(tom, piupiu).
gosta(piupiu, moli).

animais(X) :- gato(X); passaro(X); rato(X); minhoca(X).

come(X, Y) :- gosta(X, Y).

/*
 # Consultas:
  
come(X).
come(tom,X).
come(piupiu,X).
come(jerry,X).
*/