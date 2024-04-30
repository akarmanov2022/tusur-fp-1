% Сумма элементов списка
sum_list([], 0).

sum_list([Head|Tail], Sum) :-
	sum_list(Tail, TailSum), Sum is TailSum + Head.

% Наибольший элемента списка
max_list([Max], Max).

max_list([Head|Tail], Max) :-
	max_list(Tail, TailMax), Head > TailMax, Max = Head.

max_list([Head|Tail], Max) :-
	max_list(Tail, TailMax), Head =< TailMax, Max = TailMax.

% Наименьший элемента списка
min_list([Min], Min).

min_list([Head|Tail], Min) :-
	min_list(Tail, TailMin), Head < TailMin, Min = Head.

min_list([Head|Tail], Min) :-
	min_list(Tail, TailMin), Head >= TailMin, Min = TailMin.
