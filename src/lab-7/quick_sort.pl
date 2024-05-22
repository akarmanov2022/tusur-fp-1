
quick_sort([H|L], S):-
	split(H, L, L1, L2), 
	quick_sort(L1, S1), 
	quick_sort(L2, S2), 
	append(S1, [H|S2], S).
quick_sort([], []).

split(H, [A|LS], [A|L1], L2):-
	A < H, 
	split(H, LS, L1, L2), !.

split(H, [A|LS], L1, [A|L2]):-
	A >= H, 
	split(H, LS, L1, L2), !.
split(_, [], [], []).

main :-
	quik_sort([3, 2, 1, 4, 5], Sortedc), 
	writeln(Sorted).