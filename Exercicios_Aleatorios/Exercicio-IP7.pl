% Exerc�cio IP 7. Pa�ses e Fronteiras (Exame Normal 2003/2004) Suponha que
% possui um predicado Prolog descrevendo informa��o sobre
% Pa�ses. Os factos t�m o formato pa�s(Nome, Continente, Populac�o,
% Fronteiras), onde Nome � o nome do Pa�s, Continente � o continente a
% que o pa�s pertence (africa, america, asia, europa ou oceania),
% Populac�o � um inteiro que representa o n�mero de habitantes (em
% milh�es) do pa�s e Fronteiras.� uma lista contendo os nomes dos pa�ses
% com que o pa�s faz fronteira.

pais(alemanha, europa, 82, [fran�a, belgica, holanda, suica]).
pais(australia, oceania, 19, []).
pais(belgica, europa, 10, [fran�a, holanda, alemanha]).
pais(espanha, europa, 40, [portugal, fran�a]).
pais(fran�a, europa, 59, [espanha, suica, belgica, alemanha, italia]).
pais(holanda, europa, 15, [belgica, alemanha]).
pais(indonesia, oceania, 210, []).
pais(italia, europa, 57, [fran�a, suica]).
pais(madagascar, africa, 17, []).
pais(portugal, europa, 10, [espanha]).
pais(suica, europa, 7, [fran�a, alemanha, italia]).

% pop_elevada(+Continente, -Lista) que calcule a lista de todos os pa�ses com mais de 15 milh�es de
% habitantes de um dado continente, ordenada por ordem crescente de
% popula��o, no formato indicado.
pop_elevada(Cont,List):- findall(Pop-Pais, (pais(Pais, Cont, Pop,_), Pop > 15), L), sort(L, List).

