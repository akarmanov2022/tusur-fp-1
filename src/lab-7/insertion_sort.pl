insert_sort([H|L], S):-
	insert_sort(L, S1), 
	insert(H, S1, S).
insert_sort([],[]).

insert(H, [A|S1], [A|S2]):-
	A < H, !, 
	insert(H, S1, S2).
insert(H, S,[H | S]).

main :-
	insert_sort([3, 2, 1, 4, 5], Sorted), 
	writeln(Sorted).
