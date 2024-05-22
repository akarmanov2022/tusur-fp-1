insertion_sort([], []).

insertion_sort([X|Xs], Sorted) :-
	insertion_sort(Xs, SortedTail), 
	insert(X, SortedTail, Sorted).

insert(X, [], [X]).

insert(X, [Y|Ys], [X, Y|Ys]) :-
	X =< Y.

insert(X, [Y|Ys], [Y|SortedTail]) :-
	X > Y, 
	insert(X, Ys, SortedTail).

main :-
    insertion_sort([3, 1, 4, 1, 5, 9, 2, 6, 5], Sorted),
    writeln(Sorted).
