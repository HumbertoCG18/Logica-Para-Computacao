% Base de Conhecimento

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

% Consultas como comentários

% % 1. Qual é o habitat de um animal específico X?
% habitat(leao, Habitat). % Deve retornar savana

% % 2. O animal específico Y é um mamífero?
% eh_mamifero(elefante). % Deve retornar true

% % 3. Quais são todos os animais carnívoros?
% carnivoros(Animais). % Deve retornar [leao, tubarao_martelo, crocodilo, salamandra, gaviao, pinguim, sapo, raposa]


