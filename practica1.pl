% Base de conocimiento - Familia Simpsons
% Práctica 1

% Hechos sobre la familia
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).

% Abuelos
abuelo(abraham, homero).
abuela(mona, homero).
abuelo(clancy, marge).
abuela(jackie, marge).

% Hermanos
hermano(bart, lisa).
hermano(bart, maggie).
hermana(lisa, bart).
hermana(lisa, maggie).
hermana(maggie, bart).
hermana(maggie, lisa).

% Reglas
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

hija(X, Y) :- madre(Y, X), mujer(X).
hija(X, Y) :- padre(Y, X), mujer(X).

% Datos adicionales
hombre(homero).
hombre(bart).
hombre(abraham).
hombre(clancy).

mujer(marge).
mujer(lisa).
mujer(maggie).
mujer(mona).
mujer(jackie).

% Ejemplo de consultas:
% ?- padre(homero, bart).
% ?- madre(marge, lisa).
% ?- hijo(bart, homero).
% ?- hermano(bart, lisa).