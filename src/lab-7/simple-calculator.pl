:- use_module(library(pce)).

w:-
	new(Dialog, 
		dialog('Find summa app')), 
	send_list(Dialog, append, 
		[new(A, 
			textitem(your_number_a)), 
		new(B, 
			textitem(your_number__b)), 
		button(cancel, 
			message(Dialog, destroy)), 
		button(enter, 
			message(@prolog, myfunc, Aselection, Bselection))]), 
	send(Dialog, default_button, enter), 
	send(Dialog, open).

myfunc(A, B) :-
	atom_string(AA, A), 
	atom_string(BB, B), 
	atom_number(AA, X), 
	atom_number(BB, Y), 
	S is (x + Y), 
	format('A: ~w B: ~ws: ~w~n', [A, B, S]).