masculino(jose).
masculino(joao).
masculino(carlos).
masculino(mario).

feminino(ana).
feminino(maria).
feminino(helena).
feminino(joana).
     
progenitor(jose, joao).
progenitor(jose, ana).
progenitor(maria, joao).
progenitor(maria, ana).

progenitor(ana, helena).
progenitor(ana, joana).
progenitor(joao, mario).

progenitor(helena, carlos).
progenitor(mario, carlos).

pai(X, Y) :- progenitor(X, Y), masculino(X).
mae(X, Y) :- progenitor(X, Y), feminino(X).

irma(X, Y) :- progenitor(Z, X), progenitor(Z, Y), feminino(X), X \== Y.
irmao(X, Y) :- progenitor(Z, X), progenitor(Z, Y), masculino(X), X \== Y.

avoH(X, Y) :- progenitor(X, Z), progenitor(Z, Y), masculino(X).
avoM(X, Y) :- progenitor(X, Z), progenitor(Z, Y), feminino(X).

tio(X, Y) :- progenitor(Z, Y), irmao(X, Z).
tia(X, Y) :- progenitor(Z, Y), irma(X, Z).

primo(X, Y) :- progenitor(Z, X), (tio(Z, Y); tia(Z, Y)), masculino(X).
prima(X, Y) :- progenitor(Z, X), (tio(Z, Y); tia(Z, Y)), feminino(X).
