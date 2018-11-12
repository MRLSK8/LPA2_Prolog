% Exercício 1, slide 8, pag. 14
% Distancia entre UPE/Caruaru e outros campus
/*
 01.Crie uma base de dados de distâncias fictícias entre a UPE/Caruaru e outros campus dessa 
 universidade (Recife(120km), Garanhuns(210km), Serra Talhada(380km), Salgueiro(480km)), depois 
 realize uma pesquisa que retorne uma lista com universidades que distem no máximo uma distância
 de 250 km, informando a universidade de destino e a distância.
*/
distancia(caruaru, recife,120).
distancia(caruaru, garanhuns,210).
distancia(caruaru, serra_talhada,380).
distancia(caruaru, salgueiro,480).

 # Consultas
% findall(Campus/Distancia,(distancia(caruaru, Campus, Distancia),Distancia < 250), Lista).