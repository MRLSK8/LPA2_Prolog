pessoa(ana).
pessoa(rai).
pessoa(bia).
pessoa(edu).
pessoa(gil).
pesssoa(eva).

bairro(santana).
bairro(tatuape).
bairro(mandaqui).
bairro(penha).
bairro(vilaCarrao).

zona(norte).
zona(leste).

mora_em(ana, santana).
mora_em(rai, santana).
mora_em(bia, tatuape).
mora_em(edu, mandaqui).
mora_em(gil, penha).
mora_em(eva, vilaCarrao).

fica_na_zona(santana, norte).
fica_na_zona(mandaqui, norte).
fica_na_zona(tatuape, leste).
fica_na_zona(penha, leste).
fica_na_zona(vilaCarrao, leste).

tem_carro(ana).
tem_carro(gil).

pode_dar_carona_a(X, Y) :- tem_carro(X), mora_em(X, T), fica_na_zona(T, Z), mora_em(Y, P), fica_na_zona(P, Z), X \== Y. 

















