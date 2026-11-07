% Lab 10 - Graphs
% Task 1: Finding Paths Between Cities

% Directed Graph - Facts

edge('Madinah', 'Makkah').
edge('Makkah', 'Madinah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Makkah', 'Riyadh').


edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').

edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').

edge('Al-Qatif', 'Madinah').
edge('Al-Qatif', 'Dammam').
edge('Dammam', 'Al-Qatif').

% Find paths between cities

travel(From, To, Path) :-
    path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

% Base case
path(To, To, Visited, Visited).

% Recursive case
path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).


