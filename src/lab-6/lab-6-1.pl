cars_db(car{name:toyota_corolla, age:5, mileage:100000}).
cars_db(car{name:ford_focus, age:3, mileage:50000}).
cars_db(car{name:renault_megane, age:2, mileage:20000}).

% Возраст автомобиля
age_of_car(Name, Age) :-
 cars_db(car{name:Name, age:Age, mileage:_}), !.

% Пробег автомобиля
mileage_of_car(Name, Mileage) :-
 cars_db(car{name:Name, age:_, mileage:Mileage}), !.
