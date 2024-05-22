bubble_sort([], []).
bubble_sort([X], [X]).

bubble_sort(L, S):-
	append(L1, [A1, A2|L2], L), A2 < A1, 
	append(L1, [A2, A1|L2], L3), 
	bubble_sort(L3, S), !.
	bubble_sort(S, S).

main :-
	bubble_sort([3, 2, 1, 4, 5], Sorted), 
	writeln(Sorted).