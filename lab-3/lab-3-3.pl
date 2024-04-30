% Напишите процедуры вычисления суммы элементов списка;
% наибольшего элемента списка; наименьшего элемента списка без использования
% встроенных соответствующих функций;

% 1
sum_list([], 0).

sum_list([Head|Tail], Sum) :-
	sum_list(Tail, TailSum), Sum is TailSum + Head.

% 2
max_list([Max], Max).

max_list([Head|Tail], Max) :-
	max_list(Tail, TailMax), Head > TailMax, Max = Head.

max_list([Head|Tail], Max) :-
	max_list(Tail, TailMax), Head =< TailMax, Max = TailMax.

% 3
min_list([Min], Min).

min_list([Head|Tail], Min) :-
	min_list(Tail, TailMin), Head < TailMin, Min = Head.

min_list([Head|Tail], Min) :-
	min_list(Tail, TailMin), Head >= TailMin, Min = TailMin.
