:- module(customers, [add_customer/4, remove_customer/1, list_customers/0, customer/4]).
:- dynamic customer/4.

% Описание предметной области "Клиенты магазина"

add_customer(Name, Surname, ID, Rating) :-
	assert(
		customer(Name, Surname, ID, Rating)).

remove_customer(ID) :-
	retract(
		customer(_, _, ID, _)).

list_customers() :-
	customer(Name, Surname, ID, Rating), 
	write(Name), 
	write(' '), 
	write(Surname), 
	write(' '), 
	write(ID),
	write(' '), 
	write(Rating), 
	nl, fail.

customer('Name1', 'Surname1', 1, 4).
customer('Name2', 'Surname2', 2, 5).
customer('Name3', 'Surname3', 3, 1).
customer('Name4', 'Surname4', 4, 7).
customer('Name5', 'Surname5', 5, 9).
customer('Name6', 'Surname6', 6, 10).
customer('Name7', 'Surname7', 7, 2).