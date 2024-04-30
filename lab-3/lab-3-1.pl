parent("Игорь", "Анна").
parent("Игорь", "Сергей").
parent("Дарья", "Сергей").
parent("Сергей", "Екатерина").
parent("Сергей", "Леонид").
parent("Сергей", "Николай").
parent("Леонид", "Ольга").
parent("Леонид", "Виктор").

% ancestor(Person, Ancestor) :-
% 	parent(Person, Ancestor).

% ancestor(Person, Ancestor) :-
% 	parent(Person, P1), 
% 	ancestor(P1, Ancestor).

ancestor(Person, Ancestor):-
	parent(Person, P1), 
	ancestor(P1, Ancestor).

ancestor(Person, Ancestor) :-
	parent(Person, Ancestor).

% ancestor(Person, Ancestor) :-
% 	parent(Person, Ancestor).

% ancestor(Person, Ancestor) :-
% 	ancestor(P1, Ancestor), 
% 	parent(Person, P1).

% ancestor(Person, Ancestor) :-
% 	ancestor(P1, Ancestor), 
% 	parent(Person, P1).
% ancestor(Person, Ancestor) :-
% 	parent(Person, Ancestor).