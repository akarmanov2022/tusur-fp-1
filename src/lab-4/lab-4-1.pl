:- dynamic customer/3.
% Описание предметной области "Клиенты магазина"

add_customer(Name, Surname, ID) :-
	assert(
		customer(Name, Surname, ID)).

remove_customer(ID) :-
	retract(
		customer(_, _, ID)).

list_customers() :-
	customer(Name, Surname, ID), 
	write(Name), 
	write(' '), 
	write(Surname), 
	write(' '), 
	write(ID), nl, fail.

main :-
	add_customer('Name1', 'Surname1', 1), 
	add_customer('Name2', 'Surname2', 2), 
	add_customer('Name3', 'Surname3', 3), 
	add_customer('Name4', 'Surname4', 4), 
	add_customer('Name5', 'Surname5', 5).