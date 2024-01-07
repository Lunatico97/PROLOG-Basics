
exciting_life(X):-
	happy(X).
happy(X):-
	not_poor(X),
	smart(X).
smart(X):-
	not_stupid(X).
not_stupid(X):-
	readWell(X).
not_poor(X):-
	wealthy(X).
	readWell("John").
	wealthy("John").

% exciting_life("John").
