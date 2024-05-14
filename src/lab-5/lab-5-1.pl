:- use_module('src/lab-4/lab-4-1.pl').

lab5_list_customers() :-
	list_customers().

good_customer(ID) :-
	customers : customer(_, _, ID, Rating), Rating >= 5.

bad_customer(ID) :-
	customers : customer(_, _, ID, Rating), Rating < 5.

find_bad_customers(List) :-
	findall(X, 
		customers : customer(X, _, _, Rating), List).


customer('Name1', 'Surname1', 1, 4).
customer('Name2', 'Surname2', 2, 5).
customer('Name3', 'Surname3', 3, 1).
customer('Name4', 'Surname4', 4, 7).
customer('Name5', 'Surname5', 5, 9).
customer('Name6', 'Surname6', 6, 10).
customer('Name7', 'Surname7', 7, 2).