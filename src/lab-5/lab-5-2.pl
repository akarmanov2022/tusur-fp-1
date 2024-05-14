:- use_module('src/lab-4/lab-4-1.pl').

find_customers_by_rating(Rating, List) :-
	findall(X, 
		(customers : customer(X, _, _, Rating), Rating =< 5), List).