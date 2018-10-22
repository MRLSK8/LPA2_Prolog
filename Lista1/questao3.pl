/*
3. Expresse através de fatos e regras Prolog as informações contidas na seguinte frase:  
 
“João nasceu em Pelotas e Jean nasceu em Paris. 
Paris fica na França, enquanto que Pelotas fica no Rio Grande do Sul. 
Mas só é gaúcho quem nasceu no Rio Grande do Sul, tchê.” 
*/

pessoa(joao).
pessoa(jean).

cidade(pelotas).
cidade(paris).

pais(fraca).
estado(riograndedosul).

fica_em(pelotas, riograndedosul).
fica_em(paris, frança).

nasceu(joao, pelotas).
nasceu(jean, paris).

gaucho(X) :- nasceu(X, Y), fica_em(Y, riograndedosul).

