% Exercício IP 7. Países e Fronteiras (Exame Normal 2003/2004) Suponha que
% possui um predicado Prolog descrevendo informação sobre
% Países. Os factos têm o formato país(Nome, Continente, Populacão,
% Fronteiras), onde Nome é o nome do País, Continente é o continente a
% que o país pertence (africa, america, asia, europa ou oceania),
% Populacão é um inteiro que representa o número de habitantes (em
% milhões) do país e Fronteiras.é uma lista contendo os nomes dos países
% com que o país faz fronteira.

pais(alemanha, europa, 82, [frança, belgica, holanda, suica]).
pais(australia, oceania, 19, []).
pais(belgica, europa, 10, [frança, holanda, alemanha]).
pais(espanha, europa, 40, [portugal, frança]).
pais(frança, europa, 59, [espanha, suica, belgica, alemanha, italia]).
pais(holanda, europa, 15, [belgica, alemanha]).
pais(indonesia, oceania, 210, []).
pais(italia, europa, 57, [frança, suica]).
pais(madagascar, africa, 17, []).
pais(portugal, europa, 10, [espanha]).
pais(suica, europa, 7, [frança, alemanha, italia]).

% pop_elevada(+Continente, -Lista) que calcule a lista de todos os países com mais de 15 milhões de
% habitantes de um dado continente, ordenada por ordem crescente de
% população, no formato indicado.
pop_elevada(Cont,List):- findall(Pop-Pais, (pais(Pais, Cont, Pop,_), Pop > 15), L), sort(L, List).

