% Base de conocimiento - Pokémon
% Práctica 4

% Pokémon de tipo eléctrico
electrico(pikachu).
electrico(raichu).

% Pokémon de tipo hierba
hierba(bulbasaur).

% Pokémon de tipo fuego
fuego(charmander).
fuego(charizard).

% Reglas útiles
pokemon(X) :- electrico(X).
pokemon(X) :- hierba(X).
pokemon(X) :- fuego(X).

% Regla para saber si un pokémon tiene ventaja sobre otro
ventaja_sobre(hierba, electrico).
ventaja_sobre(fuego, hierba).
ventaja_sobre(electrico, fuego).

tiene_ventaja(X, Y) :- 
    pokemon(X), 
    pokemon(Y),
    electrico(X), 
    hierba(Y).

tiene_ventaja(X, Y) :- 
    pokemon(X), 
    pokemon(Y),
    fuego(X), 
    hierba(Y).

tiene_ventaja(X, Y) :- 
    pokemon(X), 
    pokemon(Y),
    hierba(X), 
    electrico(Y).

% Consultas de ejemplo:
% ?- electrico(pikachu).      % true
% ?- fuego(bulbasaur).        % false
% ?- pokemon(charizard).      % true