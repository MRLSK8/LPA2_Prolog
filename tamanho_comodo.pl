medida(cozinha, 2.0, 4.0).
medida(sala, 4.0, 5.5).
medida(quarto, 3.0, 3.5).
medida(banheiro, 2.0, 2.0).

tamanho(Comodo,Area):- medida(Comodo,X,Y), Area is X*Y.

/*
 #Consultas:
 
tamanho(cozinha,Y).
tamanho(cozinha,X), tamanho(banheiro,Y),X=:=2*Y.
tamanho(sala,X), tamanho(_,Y),X>Y.

findall(Comodo,(tamanho(Comodo,Area),tamanho(cozinha,X),Area>X),L).
findall(Comodo,(tamanho(Comodo,Area),tamanho(cozinha,X),Area<X),L).
*/












