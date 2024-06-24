% Declaração dos animais e suas características

% Animais
animal(leao).
animal(tubarao_martelo).
animal(elefante).
animal(crocodilo).
animal(tucano).
animal(salamandra).
animal(ornitorrinco).
animal(gaviao).
animal(pinguim).
animal(girafa).
animal(tartaruga_marinha).
animal(sapo).
animal(urso).
animal(pato).
animal(raposa).

% Classe dos animais
classe(mamifero, leao).
classe(peixe, tubarao_martelo).
classe(mamifero, elefante).
classe(reptil, crocodilo).
classe(ave, tucano).
classe(anfibio, salamandra).
classe(mamifero, ornitorrinco).
classe(ave, gaviao).
classe(ave, pinguim).
classe(mamifero, girafa).
classe(reptil, tartaruga_marinha).
classe(anfibio, sapo).
classe(mamifero, urso).
classe(ave, pato).
classe(mamifero, raposa).

% Dieta dos animais
dieta(carnivoro, leao).
dieta(carnivoro, tubarao_martelo).
dieta(herbivoro, elefante).
dieta(carnivoro, crocodilo).
dieta(onivoro, tucano).
dieta(carnivoro, salamandra).
dieta(onivoro, ornitorrinco).
dieta(carnivoro, gaviao).
dieta(carnivoro, pinguim).
dieta(herbivoro, girafa).
dieta(herbivoro, tartaruga_marinha).
dieta(carnivoro, sapo).
dieta(onivoro, urso).
dieta(herbivoro, pato).
dieta(carnivoro, raposa).

% Habitat dos animais
habitat(savana, leao).
habitat(agua_marinha, tubarao_martelo).
habitat(savana, elefante).
habitat(agua_doce, crocodilo).
habitat(floresta, tucano).
habitat(floresta, salamandra).
habitat(agua_doce, ornitorrinco).
habitat(floresta, gaviao).
habitat(agua_marinha, pinguim).
habitat(savana, girafa).
habitat(agua_marinha, tartaruga_marinha).
habitat(agua_doce, sapo).
habitat(floresta, urso).
habitat(agua_doce, pato).
habitat(floresta, raposa).

% Reprodução dos animais
reproducao(viviparo, leao).
reproducao(viviparo, tubarao_martelo).
reproducao(viviparo, elefante).
reproducao(oviparo, crocodilo).
reproducao(oviparo, tucano).
reproducao(oviparo, salamandra).
reproducao(oviparo, ornitorrinco).
reproducao(oviparo, gaviao).
reproducao(oviparo, pinguim).
reproducao(viviparo, girafa).
reproducao(oviparo, tartaruga_marinha).
reproducao(oviparo, sapo).
reproducao(viviparo, urso).
reproducao(oviparo, pato).
reproducao(viviparo, raposa).

% Regras para consultas
% 1. Qual é o habitat de um animal específico X?
% habitat_de_animal(X, Habitat)

% 2. O animal específico Y é um mamífero?
% e_mamifero(Y)

% 3. Quais são todos os animais carnívoros?
% animais_carnivoros(Animais) 

% 4. Quais são todos os animais que vivem na floresta?
% animais_na_floresta(Animais)

% 5. Quais os tipos de dietas dos animais que vivem na savana?
% dietas_na_savana(Dietas)

% 6. Existe algum animal ovíparo que vive em água salgada?
% existe_oviparo_em_agua_salgada(Existe, Animais)

% 7. Existe algum animal mamífero que é ovíparo?
% existe_mamifero_oviparo(Existe, Animais)

% 8. Existe algum animal carnívoro que vive em água doce?
% existe_carnivoro_em_agua_doce(Existe, Animais)

% 9. Quais são os animais terrestres herbívoros?
% animais_terrestres_herbivoros(Animais)

% 10. Quais animais voam e comem carne?
% animais_voadores_carnivoros(Animais) 

%------------------------------------------------------%
habitat_de_animal(X, Habitat) :-
    habitat(Habitat, X).

e_mamifero(Y) :-
    classe(mamifero, Y).

animais_carnivoros(Animais) :-
    findall(X, dieta(carnivoro, X), Animais).

animais_na_floresta(Animais) :-
    findall(X, habitat(floresta, X), Animais).

dietas_na_savana(Dietas) :-
    findall(Dieta, (habitat(savana, X), dieta(Dieta, X)), DietasList),
    list_to_set(DietasList, Dietas).

existe_oviparo_em_agua_salgada(Existe, Animais) :-
    findall(X, (habitat(agua_marinha, X), reproducao(oviparo, X)), Animais),
    (Animais \= [] -> Existe = sim ; Existe = nao).

existe_mamifero_oviparo(Existe, Animais) :-
    findall(X, (classe(mamifero, X), reproducao(oviparo, X)), Animais),
    (Animais \= [] -> Existe = sim ; Existe = nao).

existe_carnivoro_em_agua_doce(Existe, Animais) :-
    findall(X, (habitat(agua_doce, X), dieta(carnivoro, X)), Animais),
    (Animais \= [] -> Existe = sim ; Existe = nao).

animais_terrestres_herbivoros(Animais) :-
    findall(X, (dieta(herbivoro, X), habitat(Habitat, X), Habitat \= agua_marinha, Habitat \= agua_doce), Animais).

animais_voadores_carnivoros(Animais) :-
    findall(X, (classe(ave, X), dieta(carnivoro, X)), Animais).
