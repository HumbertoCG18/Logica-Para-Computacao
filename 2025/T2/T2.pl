%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Base de Conhecimento: Pokémons
%
% Descrição:
% Este arquivo contém a base de conhecimento em PROLOG sobre Pokémons,
% conforme especificado no trabalho de Lógica para Computação.
% A base inclui fatos sobre Pokémons, seus tipos, evoluções,
% tamanho (altura e peso) e vantagens de tipo. 
%
% Autores: [Humberto Corrêa], [Matheus Locatelli].
% Data: [09.06.2025]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-------------------------------------------------------------------------------
% SEÇÃO 1: FATOS (Base de Conhecimento)
%-------------------------------------------------------------------------------

% Predicado pokemon(N) - Declara um Pokémon de nome N. 
% A base contém mais de 10 Pokémons. 
pokemon(bulbasaur).
pokemon(ivysaur).
pokemon(venusaur).
pokemon(charmander).
pokemon(charmeleon).
pokemon(charizard).
pokemon(squirtle).
pokemon(wartortle).
pokemon(blastoise).
pokemon(pikachu).
pokemon(raichu).
pokemon(onix).
pokemon(lapras).
pokemon(aerodactyl).
pokemon(oddish).
pokemon(gloom).
pokemon(bellossom).
pokemon(geodude).
pokemon(graveler).
pokemon(scyther).
pokemon(magmar). % Adicionado

% Predicado tipo(P, T) - Declara que o Pokémon P é do tipo T. 
tipo(bulbasaur, grama).
tipo(bulbasaur, venenoso).
tipo(ivysaur, grama).
tipo(ivysaur, venenoso).
tipo(venusaur, grama).
tipo(venusaur, venenoso).
tipo(charmander, fogo).
tipo(charmeleon, fogo).
tipo(charizard, fogo).
tipo(charizard, voador).
tipo(squirtle, agua).
tipo(wartortle, agua).
tipo(blastoise, agua).
tipo(pikachu, eletrico).
tipo(raichu, eletrico).
tipo(onix, pedra).
tipo(onix, terrestre).
tipo(lapras, agua).
tipo(lapras, gelo).
tipo(aerodactyl, pedra).
tipo(aerodactyl, voador).
tipo(oddish, grama).
tipo(oddish, venenoso).
tipo(gloom, grama).
tipo(gloom, venenoso).
tipo(bellossom, grama).
tipo(geodude, pedra).
tipo(geodude, terrestre).
tipo(graveler, pedra).
tipo(graveler, terrestre).
tipo(scyther, inseto).
tipo(scyther, voador).
tipo(magmar, fogo). % Adicionado

% Predicado evolui(P, E) - Declara que o Pokémon P evolui para E. 
evolui(bulbasaur, ivysaur).
evolui(ivysaur, venusaur).
evolui(charmander, charmeleon).
evolui(charmeleon, charizard).
evolui(squirtle, wartortle).
evolui(wartortle, blastoise).
evolui(pikachu, raichu).
evolui(oddish, gloom).
evolui(gloom, bellossom).
evolui(geodude, graveler).

% Predicado tamanho(P, H, W) - Declara a altura H e peso W do Pokémon P. 
tamanho(bulbasaur, 0.7, 6.9).
tamanho(ivysaur, 1.0, 13.0).
tamanho(venusaur, 2.0, 100.0).
tamanho(charmander, 0.6, 8.5).
tamanho(charmeleon, 1.1, 19.0).
tamanho(charizard, 1.7, 90.5).
tamanho(squirtle, 0.5, 9.0).
tamanho(wartortle, 1.0, 22.5).
tamanho(blastoise, 1.6, 85.5).
tamanho(pikachu, 0.4, 6.0).
tamanho(raichu, 0.8, 30.0).
tamanho(onix, 8.8, 210.0).
tamanho(lapras, 2.5, 220.0).
tamanho(aerodactyl, 1.8, 59.0).
tamanho(oddish, 0.5, 5.4).
tamanho(gloom, 0.8, 8.6).
tamanho(bellossom, 0.4, 5.8).
tamanho(geodude, 0.4, 20.0).
tamanho(graveler, 1.0, 105.0).
tamanho(scyther, 1.5, 56.0).
tamanho(magmar, 1.3, 44.5). % Adicionado

% Predicado vantagem_contra(T1, T2) - Declara que o tipo T1 tem vantagem contra o tipo T2. 
vantagem_contra(eletrico, agua).
vantagem_contra(eletrico, voador).
vantagem_contra(agua, fogo).
vantagem_contra(agua, terrestre).
vantagem_contra(agua, pedra).
vantagem_contra(fogo, grama).
vantagem_contra(fogo, gelo).
vantagem_contra(fogo, inseto).
vantagem_contra(grama, agua).
vantagem_contra(grama, terrestre).
vantagem_contra(grama, pedra).
vantagem_contra(pedra, fogo).
vantagem_contra(pedra, voador).
vantagem_contra(pedra, inseto).
vantagem_contra(terrestre, fogo).
vantagem_contra(terrestre, eletrico).
vantagem_contra(terrestre, pedra).
vantagem_contra(inseto, grama).
vantagem_contra(inseto, venenoso).

%-------------------------------------------------------------------------------
% SEÇÃO 2: REGRAS (Consultas) - Conforme requisitos. 
%-------------------------------------------------------------------------------
%Consultas:
%1.  pokemon_por_tipo_acima_do_peso(Pokemon, Tipo)
%2.  pokemon_que_evolui_e_baixo(Pokemon)
%3.  vantagem_contra_pokemon(PokemonX, Oponente)
%4.  pokemon_sem_evolucao_por_tipo(Pokemon, Tipo) 
%5.  pokemon_duplo_tipo_leve(Pokemon, Tipo1, Tipo2, PesoMax)
%6.  evolucao_de_tipo_planta(Evolucao)
%7.  pokemon_alto_com_vantagem_a_fogo(Pokemon)
%8.  evolucao_para_menor_e_mais_leve(Pokemon)
%9.  evolucao_com_perda_de_tipo(Pokemon)
%10. pokemon_sem_evolucao_com_desvantagem_a_pedra(Pokemon)


% 1. Quais Pokémons do tipo X possuem peso maior que 5 kg? 
pokemon_por_tipo_acima_do_peso(Pokemon, Tipo) :-
    tipo(Pokemon, Tipo),
    tamanho(Pokemon, _, Peso),
    Peso > 5.

% 2. Quais Pokémons que evoluem para algum outro Pokémon têm altura menor que 1 metro? 
pokemon_que_evolui_e_baixo(Pokemon) :-
    evolui(Pokemon, _),
    tamanho(Pokemon, Altura, _),
    Altura < 1.

% 3. Contra quais Pokémons o Pokémon X tem vantagem? 
vantagem_contra_pokemon(PokemonX, Oponente) :-
    pokemon(PokemonX),
    pokemon(Oponente),
    PokemonX \= Oponente,
    tipo(PokemonX, TipoAtacante),
    tipo(Oponente, TipoDefensor),
    vantagem_contra(TipoAtacante, TipoDefensor).

% 4. Quais Pokémons do tipo X não evoluem para nenhum outro Pokémon? 
pokemon_sem_evolucao_por_tipo(Pokemon, Tipo) :-
    tipo(Pokemon, Tipo),
    \+ evolui(Pokemon, _).

% 5. Quais Pokémons do tipo X e tipo Y (duplo tipo) têm peso inferior a W? 
pokemon_duplo_tipo_leve(Pokemon, Tipo1, Tipo2, PesoMax) :-
    tipo(Pokemon, Tipo1),
    tipo(Pokemon, Tipo2),
    Tipo1 @< Tipo2,
    tamanho(Pokemon, _, Peso),
    Peso < PesoMax.

% 6. Quais Pokémons que evoluem de um Pokémon do tipo planta? 
evolucao_de_tipo_planta(Evolucao) :-
    evolui(PokemonBase, Evolucao),
    tipo(PokemonBase, grama).

% 7. Quais Pokémons possuem tipo que tem vantagem contra fogo e têm altura superior a 1.5 metros? 
pokemon_alto_com_vantagem_a_fogo(Pokemon) :-
    tamanho(Pokemon, Altura, _),
    Altura > 1.5,
    tipo(Pokemon, Tipo),
    vantagem_contra(Tipo, fogo).

% 8. Quais Pokémons evoluem para outro Pokémon que possui altura e peso menores? 
evolucao_para_menor_e_mais_leve(Pokemon) :-
    evolui(Pokemon, Evolucao),
    tamanho(Pokemon, AlturaBase, PesoBase),
    tamanho(Evolucao, AlturaEvolucao, PesoEvolucao),
    AlturaEvolucao < AlturaBase,
    PesoEvolucao < PesoBase.

% 9. Quais Pokémons evoluem para outro que possui um tipo diferente do original? 
evolucao_com_mudanca_de_tipo(Pokemon) :-
    evolui(Pokemon, Evolucao),
    tipo(Evolucao, TipoNovo),
    \+ tipo(Pokemon, TipoNovo).

% 10. Quais Pokémons de estágio base não evoluem e têm tipo que sofre desvantagem contra o tipo pedra? 
pokemon_base_sem_evolucao_com_desvantagem_a_pedra(Pokemon) :-
    pokemon(Pokemon),
    \+ evolui(Pokemon, _),       
    \+ evolui(_, Pokemon),       
    tipo(Pokemon, TipoDefensor),
    vantagem_contra(pedra, TipoDefensor).
