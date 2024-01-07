food("orange").
food("chicken").
food(X):- 
	likes(Y,X), 
	not(kills(X,Y)).
eats("Sailendra",Y):- eats("Bhogendra",Y).
eats(X,Y):- 
	likes(X,Y), 
	food(Y).
likes("Bhogendra",X):- 
	food(X).
	kills(_,_).

% likes("Sailendra","chicken").
