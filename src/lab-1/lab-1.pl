:- dynamic readerBook/2.

readBook('Арсений', 'Война и мир').
readBook('Валентин', 'Преступление и наказание').
readBook('Данил', 'Война и мир').

readSameBook(Person1, Person2, Book) :-
    readBook(Person1, Book),
    readBook(Person2, Book).