% Base de Conhecimento de Filmes e suas Características

% Definição dos predicados:
% filme(Filme).
% genero(Genero, Filme).
% ano(Ano, Filme).
% pais_origem(Pais, Filme).
% diretor(Diretor, Filme).
% ator(Ator, Personagem, Filme).

% -----------------------------------
% Filmes
% -----------------------------------

% 2001
filme(donnie_darko).
filme(o_senhor_dos_aneis).
filme(pearl_harbor).
filme(o_retorno_da_mumia).

% 2007
filme(tropa_de_elite).
filme(homem_aranha_3).
filme(ratatouille).
filme(eu_sou_a_lenda).

% 2013
filme(os_suspeitos).
filme(o_homem_duplicado).
filme(gravidade).
filme(o_jogo_do_exterminador).

% 2015
filme(pixels).
filme(hotel_transilvania_2).
filme(seguranca_de_shopping_2).
filme(creed_nascido_para_lutar).

% 2018
filme(intocaveis).
filme(vingadores_guerra_infinita).
filme(jurassic_world).
filme(pantera_negra).

% 2020
filme(emma).
filme(relatos_do_mundo).
filme(greyhound).
filme(borat_fita_de_cinema_seguinte).
filme(il_a_deja_tes_yeux).
filme(love_wedding_repeat).

% -----------------------------------
% Gênero
% -----------------------------------

% genero(Genero, Filme).

genero(terror, donnie_darko).
genero(fantasia, o_senhor_dos_aneis).
genero(acao, pearl_harbor).
genero(aventura, o_retorno_da_mumia).
genero(acao, tropa_de_elite).
genero(acao, homem_aranha_3).
genero(animacao, ratatouille).
genero(acao, eu_sou_a_lenda).
genero(suspense, os_suspeitos).
genero(suspense, o_homem_duplicado).
genero(ficcao_cientifica, gravidade).
genero(ficcao_cientifica, o_jogo_do_exterminador).
genero(aventura, pixels).
genero(animacao, hotel_transilvania_2).
genero(comedia, seguranca_de_shopping_2).
genero(drama, creed_nascido_para_lutar).
genero(drama, intocaveis).
genero(acao, vingadores_guerra_infinita).
genero(aventura, jurassic_world).
genero(acao, pantera_negra).
genero(drama, emma).
genero(drama, relatos_do_mundo).
genero(acao, greyhound).
genero(comedia, borat_fita_de_cinema_seguinte).
genero(drama, il_a_deja_tes_yeux).
genero(comedia, love_wedding_repeat).

% -----------------------------------
% Ano de Lançamento
% -----------------------------------

% ano(Ano, Filme).

ano(2001, donnie_darko).
ano(2001, o_senhor_dos_aneis).
ano(2001, pearl_harbor).
ano(2001, o_retorno_da_mumia).
ano(2007, tropa_de_elite).
ano(2007, homem_aranha_3).
ano(2007, ratatouille).
ano(2007, eu_sou_a_lenda).
ano(2013, os_suspeitos).
ano(2013, o_homem_duplicado).
ano(2013, gravidade).
ano(2013, o_jogo_do_exterminador).
ano(2015, pixels).
ano(2015, hotel_transilvania_2).
ano(2015, seguranca_de_shopping_2).
ano(2015, creed_nascido_para_lutar).
ano(2018, intocaveis).
ano(2018, vingadores_guerra_infinita).
ano(2018, jurassic_world).
ano(2018, pantera_negra).
ano(2020, emma).
ano(2020, relatos_do_mundo).
ano(2020, greyhound).
ano(2020, borat_fita_de_cinema_seguinte).
ano(2020, il_a_deja_tes_yeux).
ano(2020, love_wedding_repeat).

% -----------------------------------
% País de Origem
% -----------------------------------

% pais_origem(Pais, Filme).

pais_origem(eua, donnie_darko).
pais_origem(nova_zelandia, o_senhor_dos_aneis).
pais_origem(eua, pearl_harbor).
pais_origem(eua, o_retorno_da_mumia).
pais_origem(brasil, tropa_de_elite).
pais_origem(eua, homem_aranha_3).
pais_origem(eua, ratatouille).
pais_origem(eua, eu_sou_a_lenda).
pais_origem(eua, os_suspeitos).
pais_origem(canada, o_homem_duplicado).
pais_origem(eua, gravidade).
pais_origem(eua, o_jogo_do_exterminador).
pais_origem(eua, pixels).
pais_origem(eua, hotel_transilvania_2).
pais_origem(eua, seguranca_de_shopping_2).
pais_origem(eua, creed_nascido_para_lutar).
pais_origem(franca, intocaveis).
pais_origem(eua, vingadores_guerra_infinita).
pais_origem(eua, jurassic_world).
pais_origem(eua, pantera_negra).
pais_origem(reino_unido, emma).
pais_origem(eua, relatos_do_mundo).
pais_origem(eua, greyhound).
pais_origem(eua, borat_fita_de_cinema_seguinte).
pais_origem(franca, il_a_deja_tes_yeux).
pais_origem(eua, love_wedding_repeat).

% -----------------------------------
% Diretores
% -----------------------------------

% diretor(Diretor, Filme).

diretor(richard_kelly, donnie_darko).
diretor(peter_jackson, o_senhor_dos_aneis).
diretor(michael_bay, pearl_harbor).
diretor(stephen_sommers, o_retorno_da_mumia).
diretor(jose_padilha, tropa_de_elite).
diretor(sam_raimi, homem_aranha_3).
diretor(brad_bird, ratatouille).
diretor(francis_lawrence, eu_sou_a_lenda).
diretor(denis_villeneuve, os_suspeitos).
diretor(denis_villeneuve, o_homem_duplicado).
diretor(alfonso_cuaron, gravidade).
diretor(gavin_hood, o_jogo_do_exterminador).
diretor(chris_columbus, pixels).
diretor(genndy_tartakovsky, hotel_transilvania_2).
diretor(andy_fickman, seguranca_de_shopping_2).
diretor(ryan_coogler, creed_nascido_para_lutar).
diretor(olivier_nakache, intocaveis).
diretor(eric_toledano, intocaveis).
diretor(anthony_russo, vingadores_guerra_infinita).
diretor(joe_russo, vingadores_guerra_infinita).
diretor(colin_trevorrow, jurassic_world).
diretor(ryan_coogler, pantera_negra).
diretor(autumn_de_wilde, emma).
diretor(paul_greengrass, relatos_do_mundo).
diretor(aaron_schneider, greyhound).
diretor(jason_woliner, borat_fita_de_cinema_seguinte).
diretor(lucien_jean_baptiste, il_a_deja_tes_yeux).
diretor(andy_fickman, love_wedding_repeat).

% -----------------------------------
% Atores e seus Personagens
% -----------------------------------

% ator(Ator, Personagem, Filme).

ator(jake_gyllenhaal, donnie_darko, donnie_darko).
ator(drew_barrymore, karen_pomeroy, donnie_darko).
ator(seth_rogen, ricky_danforth, donnie_darko).
ator(elijah_wood, frodo_baggins, o_senhor_dos_aneis).
ator(ian_mckellen, gandalf, o_senhor_dos_aneis).
ator(hugo_weaving, elrond, o_senhor_dos_aneis).
ator(ben_affleck, rafe_mccawley, pearl_harbor).
ator(josh_hartnett, danny_walker, pearl_harbor).
ator(kate_beckinsale, evelyn_johnson, pearl_harbor).
ator(john_hannah, jonathan_carnahan, o_retorno_da_mumia).
ator(arnold_vosloo, imhotep, o_retorno_da_mumia).
ator(oded_fehr, ardeth_bay, o_retorno_da_mumia).
ator(wagner_moura, capitao_nascimento, tropa_de_elite).
ator(caio_junqueira, soldado_neto, tropa_de_elite).
ator(andre_ramiro, soldado_matias, tropa_de_elite).
ator(tobey_maguire, homem_aranha, homem_aranha_3).
ator(kirsten_dunst, mary_jane_watson, homem_aranha_3).
ator(rosemary_harris, may_parker, homem_aranha_3).
ator(patton_oswalt, remy, ratatouille).
ator(lou_romano, linguini, ratatouille).
ator(ian_holm, chef_skinner, ratatouille).
ator(will_smith, robert_neville, eu_sou_a_lenda).
ator(alice_braga, anna, eu_sou_a_lenda).
ator(charlie_tahan, ethan, eu_sou_a_lenda).
ator(jake_gyllenhaal, detective_loki, os_suspeitos).
ator(hugh_jackman, keller_dover, os_suspeitos).
ator(jake_gyllenhaal, adam_bell, o_homem_duplicado).
ator(jake_gyllenhaal, anthony_claire, o_homem_duplicado).
ator(sandra_bullock, ryan_stone, gravidade).
ator(george_clooney, matt_kowalski, gravidade).
ator(asa_butterfield, ender_wiggin, o_jogo_do_exterminador).
ator(harrison_ford, coronel_graff, o_jogo_do_exterminador).
ator(adam_sandler, sam_brenner, pixels).
ator(michelle_monaghan, violet_van_patten, pixels).
ator(kevin_james, president_will_cooper, pixels).
ator(adam_sandler, conde_dracula, hotel_transilvania_2).
ator(andy_samberg, jonathan, hotel_transilvania_2).
ator(selena_gomez, mavis, hotel_transilvania_2).
ator(kevin_james, paul_blart, seguranca_de_shopping_2).
ator(david_henrie, chad, seguranca_de_shopping_2).
ator(gary_valentine, saul_gundermutt, seguranca_de_shopping_2).
ator(michael_b_jordan, adonis_johnson, creed_nascido_para_lutar).
ator(sylvester_stallone, rocky_balboa, creed_nascido_para_lutar).
ator(tessa_thompson, bianca, creed_nascido_para_lutar).
ator(omar_sy, driss, intocaveis).
ator(francois_cluzet, phillippe, intocaveis).
ator(audrey_fleurot, magalie, intocaveis).
ator(robert_downey_jr, homem_de_ferro, vingadores_guerra_infinita).
ator(josh_brolin, thanos, vingadores_guerra_infinita).
ator(scarlett_johansson, viuva_negra, vingadores_guerra_infinita).
ator(chris_pratt, owen_grady, jurassic_world).
ator(bryce_dallas_howard, claire_dearing, jurassic_world).
ator(irrfan_khan, simon_masrani, jurassic_world).
ator(chadwick_boseman, pantera_negra, pantera_negra).
ator(danai_gurira, okoye, pantera_negra).
ator(letitia_wright, shuri, pantera_negra).
ator(johnny_flynn, george_knightley, emma).
ator(mia_goth, harriet_smith, emma).
ator(callum_turner, frank_churchill, emma).
ator(tom_hanks, capitao_jefferson_kyle_kidd, relatos_do_mundo).
ator(helena_zengel, johanna_leonberger, relatos_do_mundo).
ator(michael_angelo_covino, almay, relatos_do_mundo).
ator(tom_hanks, capitao_ernest_krause, greyhound).
ator(stephen_graham, comandante_charlie_cole, greyhound).
ator(rob_morgan, cozinheiro_cleveland, greyhound).
ator(sacha_baron_cohen, borat_sagdiyev, borat_fita_de_cinema_seguinte).
ator(maria_bakalova, tutar_sagdiyev, borat_fita_de_cinema_seguinte).
ator(dani_popescu, premier_nazarbayev, borat_fita_de_cinema_seguinte).
ator(omar_sy, abdoulaye, il_a_deja_tes_yeux).
ator(lucien_jean_baptiste, paul, il_a_deja_tes_yeux).
ator(aissa_maiga, sophie, il_a_deja_tes_yeux).
ator(david_henrie, tj, love_wedding_repeat).
ator(sam_claflin, jack, love_wedding_repeat).
ator(olivia_munn, dina, love_wedding_repeat).

% -----------------------------------
% Consultas
% -----------------------------------

%1: filmes_suspense_com_jake_2013(Filme, Genero, Ator, Ano)
%2: filmes_por_diretor_ano_genero(Filme, Diretor, Ano, Genero)
%3: atores_por_pais_ano(Ator, Filme, Pais, Ano)
%4: existe_filme_genero_brasil(Filme, Genero, Pais)
%5: filme_ator_eua_2020(Filme, Ator, Pais, Ano)
%6: filme_genero_dois_atores_ano(Filme, Genero, Ator1, Ator2, Ano)
%7: atores_por_genero(Ator, Filme, Genero)
%8: filmes_animacao_com_ator_2015(Filme, Genero, Ator, Ano)
%9: anos_drama_franca_omar_sy(Filme, Genero, Pais, Ator, Ano)
%10: filmes_comedia_diretor_pais_ator(Filme, Genero, Diretor, Pais, Ator)

% -----------------------------------
% Regras para as Consultas
% -----------------------------------

% 1. Quais filmes de suspense que possuem o ator Jake Gyllenhaal no elenco e foram lançados em 2013?
filmes_suspense_com_jake_2013(Filme, Genero, Ator, Ano) :-
    Genero = suspense,
    Ator = jake_gyllenhaal,
    Ano = 2013,
    genero(Genero, Filme),
    ator(Ator, _, Filme),
    ano(Ano, Filme).

% 2. Quais são os filmes dirigidos por Denis Villeneuve, lançados em 2013 e que pertencem ao gênero Suspense?
filmes_por_diretor_ano_genero(Filme, Diretor, Ano, Genero) :-
    Diretor = denis_villeneuve,
    Ano = 2013,
    Genero = suspense,
    diretor(Diretor, Filme),
    ano(Ano, Filme),
    genero(Genero, Filme).

% 3. Quais são todos os atores que participaram de filmes dos Estados Unidos e foram lançados em 2020?
atores_por_pais_ano(Ator, Filme, Pais, Ano) :-
    Pais = eua,
    Ano = 2020,
    pais_origem(Pais, Filme),
    ano(Ano, Filme),
    ator(Ator, _, Filme).

% 4. Existe algum filme de ação lançado no Brasil?
existe_filme_genero_brasil(Filme, Genero, Pais) :- 
    Genero = acao,
    Pais = brasil,
    genero(Genero, Filme), 
    pais_origem(Pais, Filme).

% 5. Quais filmes com o Tom Hanks no elenco e feitos nos Estados Unidos foram lançados em 2020?
filme_ator_eua_2020(Filme, Ator, Pais, Ano) :-
    Ator = tom_hanks,
    Pais = eua,
    Ano = 2020,
    ator(Ator, _, Filme),
    pais_origem(Pais, Filme),
    ano(Ano, Filme).

% 6. Quais filmes de aventura têm pelo menos os atores Adam Sandler e Kevin James no elenco e foram lançados em 2015?
filme_genero_dois_atores_ano(Filme, Genero, Ator1, Ator2, Ano) :- 
    Genero = aventura,
    Ator1 = adam_sandler,
    Ator2 = kevin_james,
    Ano = 2015,
    genero(Genero, Filme),
    ator(Ator1, _, Filme),
    ator(Ator2, _, Filme),
    ano(Ano, Filme).

% 7. Quem são todos os atores que participaram de filmes do gênero ação?
atores_por_genero(Ator, Filme, Genero) :-
    Genero = acao,
    genero(Genero, Filme),
    ator(Ator, _, Filme).

% 8. Quais filmes de animação que possuem o ator Adam Sandler no elenco foram lançados em 2015?
filmes_animacao_com_ator_2015(Filme, Genero, Ator, Ano) :-
    Genero = animacao,
    Ator = adam_sandler,
    Ano = 2015,
    genero(Genero, Filme),
    ator(Ator, _, Filme),
    ano(Ano, Filme).

% 9. Quais os anos em que filmes do gênero drama foram lançados na França contendo o ator Omar Sy?
anos_drama_franca_omar_sy(Filme, Genero, Pais, Ator, Ano) :-
    Genero = drama,
    Pais = franca,
    Ator = omar_sy,
    genero(drama, Filme),
    pais_origem(franca, Filme),
    ator(omar_sy, _, Filme),
    ano(Ano, Filme).

% 10. Quais são os filmes de comédia dirigidos pelo Andy Fickman, feitos nos Estados Unidos e que possuem o ator David Henrie no elenco?
filmes_comedia_diretor_pais_ator(Filme, Genero, Diretor, Pais, Ator) :-
    Genero = comedia,
    Diretor = andy_fickman,
    Pais = eua,
    Ator = david_henrie,
    genero(Genero, Filme),
    diretor(Diretor, Filme),
    pais_origem(Pais, Filme),
    ator(Ator, _, Filme).
