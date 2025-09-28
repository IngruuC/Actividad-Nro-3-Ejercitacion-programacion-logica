% Base de conocimiento - Países
% Práctica 2

% Hechos dados
pais(argentina).
pais(uruguay).
provincia(santa_cruz).
departamento(canelones).

% Para probar las consultas del ejercicio:
% ?- pais(marruecos).     % false - no está en nuestra base
% ?- lago(ganges).        % false - no está en nuestra base  
% ?- ciudad(estonia).     % false - no está en nuestra base

% Podemos agregar más datos si queremos:
pais(brasil).
pais(chile).
provincia(buenos_aires).
provincia(cordoba).
departamento(montevideo).
departamento(maldonado).

ciudad(rosario).
ciudad(buenos_aires).
ciudad(montevideo).

% Reglas útiles
lugar(X) :- pais(X).
lugar(X) :- provincia(X).
lugar(X) :- departamento(X).
lugar(X) :- ciudad(X)


