% pais(nome, area, população)

pais(brasil, 8 , 196).
pais(china, 9 , 1330).
pais(eua, 9 , 304).
pais(india, 3 , 1147).

/*
 # Consultas:
 
pais(eua,_,X).
pais(brasil,Y,X),Densidade is X/Y. 
pais(china,_,X),pais(india,_,Y), DiferenÁa is X-Y.

findall(Local/Area,(pais(Local,Area,_),pais(brasil,X,_),Area>X),L).
findall(Local/Hab,(pais(Local,_,Hab),pais(india,_,X),Hab<X),Paises).
*/