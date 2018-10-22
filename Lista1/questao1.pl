/*
1. Expresse através de fatos e regras Prolog as informações contidas na seguinte frase:  
 
“João é um pássaro. Pedro é um peixe. Maria é uma minhoca. Pássaros gostam de minhocas. 
Gatos gostam de peixes. Gatos gostam de pássaros. Amigos gostam uns dos outros. 
O meu gato é meu amigo. O meu gato come tudo o que gosta, exceto pessoas. 
O nome do meu gato é Chuck Norris.”  
*/

passaro(joao).
peixe(pedro).
minhoca(maria).
gato(chucknorris).
pessoa(eu).

amigo(gato, eu).

gosta(joao, maria).
gosta(chucknorris, pedro).
gosta(chucknorris, joao).
gosta(chucknorris, eu).
gosta(eu, chucknorris).

come(chucknorris, joao).
come(chucknorris, pedro).
come(chucknorris, maria).


