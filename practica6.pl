% Base de conocimiento - Empresa
% Práctica 6

% Profesiones
contador(roque).
ingeniera(ana).
abogada(cecilia).

% Características personales
honesto(roque).
honesto(ana).
joven(roque).

% Ana no es joven (implícito, no está en los hechos de joven/1)
% Para Cecilia no sabemos si es honesta o joven

% Reglas útiles
candidato_contaduria(X) :- contador(X), honesto(X).
candidato_ingenieria(X) :- ingeniera(X), honesto(X).
candidato_legal(X) :- abogada(X).

% Perfil completo para puestos senior
perfil_completo(X) :- 
    (contador(X); ingeniera(X); abogada(X)), 
    honesto(X), 
    joven(X).

% Solo Roque tiene perfil completo
buen_candidato(X) :- honesto(X), joven(X).

% Consultas de ejemplo:
% ?- honesto(ana).                % true
% ?- joven(ana).                  % false
% ?- candidato_contaduria(roque). % true
% ?- perfil_completo(roque).      % true