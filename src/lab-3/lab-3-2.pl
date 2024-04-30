sublist([], _) :-
	!.

sublist(L1, L2):-
	append(_, CenterRight, L2), 
	append(L1, _, CenterRight), 
	not(L1 = []).