% Base de Conhecimento

% animal(nome,classe,alimntacao,habitat,desenvolvimeno)

% Animais e suas características
animal(leao, mamifero, carnivoro, savana, viviparo).
animal(tubarao_martelo, peixe, carnivoro, agua_marinha, viviparo).
animal(elefante, mamifero, herbivoro, savana, viviparo).
animal(crocodilo, reptil, carnivoro, agua_doce, oviparo).
animal(tucano, ave, onivoro, floresta, oviparo).
animal(salamandra, anfibio, carnivoro, floresta, oviparo).
animal(ornitorrinco, mamifero, onivoro, agua_doce, oviparo).
animal(gaviao, ave, carnivoro, floresta, oviparo).
animal(pinguim, ave, carnivoro, agua_marinha, oviparo).
animal(girafa, mamifero, herbivoro, savana, viviparo).
animal(tartaruga_marinha, reptil, herbivoro, agua_marinha, oviparo).
animal(sapo, anfibio, carnivoro, agua_doce, oviparo).
animal(urso, mamifero, onivoro, floresta, viviparo).
animal(pato, ave, herbivoro, agua_doce, oviparo).
animal(raposa, mamifero, carnivoro, floresta, viviparo).

% Consultas

% 1. Qual é o habitat de um animal específico X?
% habitat(X, Habitat).
habitat(X, Habitat) :- animal(X, _, _, Habitat, _).

% 2. O animal específico Y é um mamífero?
% eh_mamifero(Y).
eh_mamifero(Y) :- animal(Y, mamifero, _, _, _).

% 3. Quais são todos os animais carnívoros?
% carnívoros(Animais).
carnivoros(Animais) :- findall(Animal, animal(Animal, _, carnivoro, _, _), Animais).

% 4. Quais são todos os animais vivem na floresta?
% vivem_na_floresta(Animais).
vivem_na_floresta(Animais) :- findall(Animal, animal(Animal, _, _, floresta, _), Animais).

% 5. Quais os tipos de dietas dos animais que vivem na savana?
% dietas_na_savana(Dietas).
dietas_na_savana(Dietas) :- findall(Dieta, (animal(_, _, Dieta, savana, _)), DietasList), list_to_set(DietasList, Dietas).

% 6. Existe algum animal ovíparo que vive em água salgada?
% oviparo_agua_salgada(Existe).
oviparo_agua_salgada(Existe) :- animal(_, _, _, agua_marinha, oviparo), Existe = sim ; Existe = nao.

% 7. Existe algum animal mamífero que é ovíparo?
% mamifero_oviparo(Existe).
mamifero_oviparo(Existe) :- animal(_, mamifero, _, _, oviparo), Existe = sim ; Existe = nao.

% 8. Existe algum animal carnívoro que viva em água doce?
% carnivoro_agua_doce(Existe).
carnivoro_agua_doce(Existe) :- animal(_, _, carnivoro, agua_doce, _), Existe = sim ; Existe = nao.

% 9. Quais são os animais terrestres herbívoros?
% herbivoros_terrestres(Animais).
herbivoros_terrestres(Animais) :- findall(Animal, (animal(Animal, _, herbivoro, Habitat, _), Habitat \= agua_marinha, Habitat \= agua_doce), Animais).

% 10. Quais animais voam e comem carne?
% voadores_carnivoros(Animais).
voadores_carnivoros(Animais) :- findall(Animal, (animal(Animal, ave, carnivoro, _, _)), Animais).

% Consultas como comentários

% % 1. Qual é o habitat de um animal específico X?
% habitat(leao, Habitat). % Deve retornar savana

% % 2. O animal específico Y é um mamífero?
% eh_mamifero(elefante). % Deve retornar true

% % 3. Quais são todos os animais carnívoros?
% carnivoros(Animais). % Deve retornar [leao, tubarao_martelo, crocodilo, salamandra, gaviao, pinguim, sapo, raposa]

% % 4. Quais são todos os animais vivem na floresta?
% vivem_na_floresta(Animais). % Deve retornar [tucano, salamandra, gaviao, urso, raposa]

% % 5. Quais os tipos de dietas dos animais que vivem na savana?
% dietas_na_savana(Dietas). % Deve retornar [carnivoro, herbivoro]

% % 6. Existe algum animal ovíparo que vive em água salgada?
% oviparo_agua_salgada(Existe). % Deve retornar sim

% % 7. Existe algum animal mamífero que é ovíparo?
% mamifero_oviparo(Existe). % Deve retornar sim

% % 8. Existe algum animal carnívoro que viva em água doce?
% carnivoro_agua_doce(Existe). % Deve retornar sim

% % 9. Quais são os animais terrestres herbívoros?
% herbivoros_terrestres(Animais). % Deve retornar [elefante, girafa, tartaruga_marinha, pato]

% % 10. Quais animais voam e comem carne?
% voadores_carnivoros(Animais). % Deve retornar [gaviao, pinguim]
