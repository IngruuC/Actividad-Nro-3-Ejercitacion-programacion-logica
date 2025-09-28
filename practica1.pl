% Base de conocimiento - Familia Simpsons
% Práctica 1

% Hechos sobre géneros
hombre(homero).
hombre(bart).
hombre(abraham).
hombre(clancy).
hombre(ling).  % Agregado según el árbol familiar

mujer(marge).
mujer(lisa).
mujer(maggie).
mujer(mona).
mujer(jackie).
mujer(patty).
mujer(selma).

% Hechos sobre relaciones familiares directas
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).

% Abuelos - relación con los padres
abuelo(abraham, homero).
abuela(mona, homero).
abuelo(clancy, marge).
abuela(jackie, marge).

% Hermanas de Marge
hermana(patty, marge).
hermana(selma, marge).
hermana(marge, patty).
hermana(marge, selma).
hermana(patty, selma).
hermana(selma, patty).

% Relación de Ling con Selma (adoptado/hijo)
madre(selma, ling).

% REGLAS DERIVADAS (según la consigna)

% Regla para abuelo - X es abuelo de Y si X es padre del padre o madre de Y
abuelo(X, Y) :- 
    hombre(X), 
    (padre(X, Z), padre(Z, Y); padre(X, Z), madre(Z, Y)).

% Regla para abuela - X es abuela de Y si X es madre del padre o madre de Y  
abuela(X, Y) :- 
    mujer(X), 
    (madre(X, Z), padre(Z, Y); madre(X, Z), madre(Z, Y)).

% Regla para tío - X es tío de Y si X es hermano del padre o madre de Y
tio(X, Y) :- 
    hombre(X), 
    hermano(X, Z), 
    (padre(Z, Y); madre(Z, Y)).

% Regla para tía - X es tía de Y si X es hermana del padre o madre de Y
tia(X, Y) :- 
    mujer(X), 
    hermana(X, Z), 
    (padre(Z, Y); madre(Z, Y)).

% Regla para hermano - X es hermano de Y si comparten los mismos padres y X es hombre
hermano(X, Y) :- 
    hombre(X), 
    X \= Y,
    ((padre(Z, X), padre(Z, Y)); (madre(W, X), madre(W, Y))).

% Regla para hermana - X es hermana de Y si comparten los mismos padres y X es mujer
hermana(X, Y) :- 
    mujer(X), 
    X \= Y,
    ((padre(Z, X), padre(Z, Y)); (madre(W, X), madre(W, Y))).

% Ejemplos de consultas que puedes probar:
% ?- padre(homero, bart).          % true
% ?- madre(marge, lisa).           % true  
% ?- abuelo(abraham, bart).        % true
% ?- abuela(mona, lisa).           % true
% ?- tia(patty, bart).             % true
% ?- tia(selma, maggie).           % true
% ?- hermano(bart, lisa).          % false (bart es hermano pero lisa es hermana)
% ?- hermana(lisa, bart).          % true
% ?- hermana(maggie, lisa).        % true