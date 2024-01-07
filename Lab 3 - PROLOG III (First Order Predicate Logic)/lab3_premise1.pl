
mammal(X):-
	horse(X),
	cow(X),
	pig(X),
	is_parent(_,X).
horse(Y):-
	is_parent(X,Y),horse(X).
	horse("Bluebeard").
is_offspring(X,Y):-
	is_parent(Y,X).
	is_parent("Bluebeard","Charlie").
	cow("?").
	pig("?").
	
% horse("Charlie").
