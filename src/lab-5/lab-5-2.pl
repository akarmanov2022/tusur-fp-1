:- use_module('src/lab-4/lab-4-1.pl').

sorted_list_customers(SortList) :-
	setof(X, 
		X^customers : customer(X, _, _, _), SortList).
