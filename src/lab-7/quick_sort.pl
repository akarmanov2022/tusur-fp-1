quick_sort([], []).
quick_sort([X], [X]).

quick_sort([Pivot|Tail], Sorted) :-
	partition(Pivot, Tail, Smaller, Greater), 
	quick_sort(Smaller, SortedSmaller), 
	quick_sort(Greater, SortedGreater), 
	append(SortedSmaller, [Pivot|SortedGreater], Sorted).

% Подсписок из элементов, меньших или равных Pivot
partition(_, [], [], []).

partition(Pivot, [X|Tail], [X|Smaller], Greater) :-
	X =< Pivot, 
	partition(Pivot, Tail, Smaller, Greater).

partition(Pivot, [X|Tail], Smaller, [X|Greater]) :-
	X > Pivot, 
	partition(Pivot, Tail, Smaller, Greater).

main :-
	quick_sort([3, 1, 4, 1, 5, 9, 2, 6, 5], Sorted), 
	writeln(Sorted).