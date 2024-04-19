parent(person("Игорь", "мужской"), person("Федор", "мужской")).
parent(person("Анна", "женский"), person("Игорь", "мужской")).
parent(person("Анна", "женский"), person("Дарья", "женский")).
parent(person("Дарья", "женский"), person("Леонид", "мужской")).

grandFather(Person, TheGrandFather):-
 parent(Person, ParentOfPerson),
 father(ParentOfPerson, TheGrandFather).

father(P, person(Name, "мужской")) :-
 parent(P, person(Name, "мужской")).

father(P, F) :-
 parent(P, F),
 F = person(_, "мужской").

ancestor(Person, Ancestor) :- parent(Person, Ancestor).
ancestor(Person, Ancestor) :- parent(Person, P1), ancestor(P1, Ancestor).