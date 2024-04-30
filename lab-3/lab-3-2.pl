% Составить предикат sublist(L1, L2): L1 – произвольный подсписок
% списка L2, т.е. непустой отрезок из подряд идущих элементов L2.

sublist([], _) :-
	!.

sublist(L1, L2):-
	append(_, CenterRight, L2), 
	append(L1, _, CenterRight), 
	not(L1 = []).
    