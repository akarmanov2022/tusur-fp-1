sublist([], _).

sublist([X|Xs], L) :-
	member(X, L), 
	sublist(Xs, L).