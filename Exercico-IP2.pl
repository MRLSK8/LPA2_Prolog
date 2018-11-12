continente(asia).
continente(america).
continente(europa).
pais(portugal, europa, 10).
pais(espanha, europa, 48).
pais(franca, europa, 52).
pais(belgica, europa, 9).
pais(alemanha, europa, 82).
pais(holanda, europa, 15).
pais(eua, america, 235).
pais(brasil, america, 155).
pais(china, asia, 1100).
pais(mongolia, asia, 3).
fronteira(portugal, espanha).
fronteira(franca, espanha).
fronteira(franca,belgica).
fronteira(belgica, alemanha).
fronteira(belgica, holanda).
fronteira(alemanha, holanda).
fronteira(alemanha, franca).
fronteira(china, mongolia).

% junto(P1,P2) que sucede se o pais P1 faz fronteira com P2.
junto(P1, P2):- fronteira(P1 , P2) ; fronteira(P2, P1).

% paises_continente(Lista, Cont) que calcula a Lista de pa�ses existentes num dado continente.
paises_continente(List, Cont):- findall(Country, pais(Country,Cont,_), List).

% paises_grandes(Lista, Cont) que calcula a Lista de pa�ses com mais de 100 milh�es de habitantes de um dado continente.
paises_grandes(Lista, Cont):- findall(Country,(pais(Country, Cont, X), X > 100), Lista).

% dois_mais_pop(P1, P2), que calcula quais os dois pa�ses com mais habitantes.
%dois_mais_pop(P1,P2):- findall(Country, pais(Country, _, X).

% descricao(List), que retorne uma lista com a descri��o de todos os pa�ses, incluindo o seu nome, continente e popula��o
% [portugal*europa*10, �,china*asia*1000].
descricao(List):- findall(Pais*Cont*Pop , pais(Pais, Cont, Pop), List).

% chego_la_facil(P1, P2) que sucede se � poss�vel chegar de P1 a P2,
% directamente ou atravessando unicamente um outro pa�s.
chego_la_facil(P1, P2):- (fronteira(P1, P2); fronteira(P2, P1));(fronteira(X, P1);fronteira(P1, X)),(fronteira(X, P2); fronteira(P2, X)), P1\=P2.


