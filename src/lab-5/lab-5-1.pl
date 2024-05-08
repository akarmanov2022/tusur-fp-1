:- use_module('src/lab-4/lab-4-1.pl').

lab5_list_customers() :-
	list_customers().

good_customer(ID) :-
	customers : customer(_, _, ID, Rating), Rating >= 5.

bad_customer(ID) :-
	customers : customer(_, _, ID, Rating), Rating < 5.
	