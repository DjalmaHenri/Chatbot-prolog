% Projeto Integrador de Competências em Ciência da Computação
% Autor: Djalma Henrique



:-include(data1).
:-include(data2).
		
bot_rede:-
	format('Saudações! Eu sou o Bot_Rede.'),nl,
	format('Voce deseja saber sobre: '),nl,
	  				
	repeat,
	nl, format('- '),
	read(Entrada),
	consulta_base_dados(Entrada, Resposta),
	format(Resposta), nl,1
	encerra_sessao(Entrada).
	
consulta_base_dados(Entrada, RespostaCorreta) :-
	definida_por(Entrada, RespostaCorreta), !.	
	
encerra_sessao(Entrada):-
	Entrada = ('fim').
	
	
 
