% Base de conocimiento - El mundo del ángel
% Práctica 5

% Dónde vive cada personaje
viveEn(jorge, flores).
viveEn(manuel, flores).
viveEn(bernardo, flores).
viveEn(elDiablo, villa_crespo).

% Profesiones/ocupaciones
poeta(jorge).
poligrafo(manuel).
tahur(bernardo).

% Apodos
apodo(bernardo, ruso).

% Reglas útiles
personaje(X) :- viveEn(X, _).

vive_en_flores(X) :- viveEn(X, flores).

vecinos(X, Y) :- 
    viveEn(X, Barrio), 
    viveEn(Y, Barrio), 
    X \= Y.

% Consultas de ejemplo:
% ?- viveEn(jorge, flores).       % true
% ?- poeta(elDiablo).             % false
% ?- poeta(jorge).                % true
% ?- vecinos(jorge, manuel).      % true
% ?- vive_en_flores(bernardo).    % true