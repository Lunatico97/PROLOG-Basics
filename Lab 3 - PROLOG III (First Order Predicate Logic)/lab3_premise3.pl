
roman(X):-
	pompeian(X).
	assasinate(marcus,caesar).
	pompeian(marcus).
hate(X,caesar):- 
	roman(X),
	not_loyal(X,caesar).
loyal(X,caesar):- 
	roman(X),
	not(hate(X,caesar)).
not_loyal(X,Y):- assasinate(X,Y).


% hate(marcus,caesar).
