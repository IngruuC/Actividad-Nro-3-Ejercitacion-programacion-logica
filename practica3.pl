% Base de conocimiento - Comidas
% Práctica 3

% Hechos sobre lo que come cada persona
come(ramiro, carne).
come(ana, verduras).

% Para "no come" usamos el predicado \+ (negación)
% O podemos definir explícitamente:
no_come(nina, pastas).
no_come(ana, carne).

% Reglas útiles
vegetariano(X) :- come(X, verduras), no_come(X, carne).

% Consultas de ejemplo:
% ?- come(ramiro, carne).     % true
% ?- come(ana, verduras).     % true  
% ?- no_come(nina, pastas).   % true
% ?- no_come(ana, carne).     % true
% ?- vegetariano(ana).        % true (come verduras y no come carne)